# Kleisli implementation

def upper_case(the_word: str) -> tuple[str, str]:
    return (the_word.upper(), "upper_case")

def lower_case(the_word):
    return (the_word.lower(), "lower_case")

def compose(action, action2):
    def with_logging(x):
        pair1 = action(x)
        pair2 = action2(pair1[0])
        return (pair2[0],pair1[1] + pair2[1])
    return with_logging

def main():
    print("hello")
    return 0

main()
