# category-theory
## Category

A category has Objects and arrows that go from one object to another.

### Properties of a category

- Abstraction: Forget the implementation details and threat them as equal.

- Composition: `(h o g) o f = h o (g o f)`

a ------> b -----> c -----> d        a ------------------------> d
    f         g        h                       h o g o f

- Identity: An object has a morphism that maps to itself

Arrows(Morphism): is a path from an object `a` to another `b`. Where objects are names for end of arrows.

a ------> b
    f

### Functions  

Mathematical function that for an element of the domain only corresponds a single element of the codomain, but for a codomain element there are multiple correponding elements in the domain.

Domain ------ Codomain

#### Isomorphism

A morphism that can be inverted, eg:

a ------> b ------> a   `f :: a -> b`    `g :: b -> a`    `f o g = id`
    f          g  
