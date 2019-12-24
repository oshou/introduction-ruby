package main

import (
	"fmt"
	"text/width"
)

func main() {
	s := "ab¥ｦ₩￮"
	w := width.Widen.String(s)
	fmt.Printf("%U: %s\n", []rune(s), s)
	fmt.Printf("%U: %s\n", []rune(w), w)
}
