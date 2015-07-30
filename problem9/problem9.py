#!/usr/bin/env python

import operator
import functools

#
# >( Thanks for nothing, Python.
#


def _flatten(lst):
    for e in lst:
        if isinstance(e, list):
            if len(e) > 0:
                for f in flatten(e):
                    yield f
        else:
            yield e


def flatten(lst):
    return list(_flatten(lst))


def pythagorean_triple(a, b, c):
    return a * a + b * b == c * c


def main():
    the_one = flatten(
        [
            [
                [
                    [a, b, c]
                    for a in range(1, b)
                    if a + b + c == 1000 and pythagorean_triple(a, b, c)
                ] for b in range(1, c)
            ] for c in range(1, 999)
        ]
    )

    product = functools.reduce(operator.mul, the_one)

    print(product)

if __name__ == '__main__':
    main()
