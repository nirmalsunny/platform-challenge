package main

import (
	"fmt"
	"net/http"
	"os"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		name := os.Getenv("NAME")
		if name == "" {
			name = "World"
		}
		fmt.Fprintf(w, "Hello %s", name)
	})

	http.ListenAndServe(":8080", nil)
}
