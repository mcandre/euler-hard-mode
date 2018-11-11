#!/usr/bin/awk -f

function fib_next() {
    r = a;
    a = b;
    b = r + b;

    return r;
}

BEGIN {
    a = 1;
    b = 2;

    y = fib_next();

    s = 0;

    while (y < 4000000) {
        if (y % 2 == 0) {
            s = s + y;
        }

        y = fib_next();
    }

    print s;
}
