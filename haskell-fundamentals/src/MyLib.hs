module MyLib (someFunc) where

import Data.Char as Char

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- Our config data. We're very particular about certain
-- letters of the alphabet, see.
data GreeterCfg = GreeterCfg
  { don'tUseLetterE :: Bool,
    don'tUseLetterL :: Bool
  }

newtype Reader r a = Reader {runReader :: r -> a}

instance Functor (Reader r) where
  fmap :: (a -> b) -> Reader r a -> Reader r b
  fmap f (Reader g) = Reader (\x -> f (g x))

-- instance Monad (Reader r) where
--   (>>=) =

-- Uppercase the string, obeying current tests.
toUpperStr :: String -> Reader GreeterCfg String
toUpperStr str =
  Reader $ \cfg ->
    let filters :: [Char -> Bool]
        filters =
          [ if don'tUseLetterE cfg then (/= 'E') else const True,
            if don'tUseLetterL cfg then (/= 'L') else const True
          ]
        passesFilters :: Char -> Bool
        passesFilters c = all (\f -> f c) filters
     in filter passesFilters (fmap Char.toUpper str)

welcomeMessage :: String -> String -> Reader GreeterCfg String
welcomeMessage motd username = do
  let upperUsername = toUpperStr username
      upperMOTD = toUpperStr motd
      welcomeR = Reader $ \_ -> "Welcome, "
      motdR = Reader $ \_ -> "! Message of the day: "
  -- Reader
  --   ( \cfg ->
  --       "Welcome, "
  --         ++
  --         ++ "! Message of the day: "
  --         ++ upperMOTD
  --   )
  upperMOTD . motdR . upperUsername . welcomeR

fullName :: String -> String -> String -> Reader GreeterCfg String
fullName cfg =
  Reader $ \firstName lastName nickName ->
    toUpperStr cfg firstName
      ++ " \""
      ++ toUpperStr cfg nickName
      ++ " \""
      ++ toUpperStr cfg lastName
