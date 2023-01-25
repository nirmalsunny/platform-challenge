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
		greeting := r.URL.Query().Get("greeting")
		if greeting == "" {
			greeting = "Hello"
		}
		fmt.Fprintf(w, "%s %s", greeting, name)
	})

	http.ListenAndServe(":8080", nil)
}
