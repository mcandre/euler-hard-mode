#!/usr/bin/env node

function reverse(s) {
    return s.split("").reverse().join("");
}

function palindrome(n) {
    var s = n.toString();

    return reverse(s) === s;
}

function productsUpTo(n) {
    var products = [];

    for (var a = 1; a <= n; a++) {
        for (var b = 1; b <= n; b++) {
            products.push(a * b);
        }
    }

    return products;
}

function largestPalindromeInProductsUpTo(n) {
    var prods = productsUpTo(n);

    var palindromicProds = [];

    for (var i = 0; i < prods.length; i++) {
        var prod = prods[i];

        if (palindrome(prod)) {
            palindromicProds.push(prod);
        }
    }

    palindromicProds.sort(function compare(a, b) { return a - b; });

    return palindromicProds[palindromicProds.length - 1];
}

function main() {
    console.log(largestPalindromeInProductsUpTo(999));
}

if (!module.parent) { main(); }
