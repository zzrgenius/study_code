# from scipy import rand
import random


def isPalindrome(x: int) -> bool:
    print(str(x))
    print(str(x)[::-1])
    return str(x) == str(x)[::-1]


if __name__ == "__main__":
    num = random.randint(0, 1000000)
    print(num)
    ret = isPalindrome(num)
    print(ret)
    num = 1221
    print(num)
    ret = isPalindrome(num)
    print(ret)
