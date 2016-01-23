package main

import "fmt"

func prime(n int64) bool {
	for k := int64(2); k * k <= n; k++ {
		if n % k == 0 {
			return false
		}
	}

	return true
}

func main() {
	var s = int64(0)

	for n := int64(2); n < int64(2000000); n++ {
		if prime(n) {
			s += n
		}
	}

	fmt.Println(s)
}
