/*
Build by using `go build static.go`
*/
package main

import (
	"flag"
	"fmt"
	"log"
	"net/http"
	"path/filepath"
	"time"
)

func loggingHandler(next http.Handler) http.Handler {
	return http.HandlerFunc(func(w http.ResponseWriter, r *http.Request) {
		t1 := time.Now()
		next.ServeHTTP(w, r)
		t2 := time.Now()
		log.Printf("[%s] %q %v\n", r.Method, r.URL.String(), t2.Sub(t1))
	})
}

func main() {
	port := flag.Int("p", 8888, "port to serve on")
	folder := flag.String("f", ".", "the folder of static files")
	flag.Parse()
	absFolder, _ := filepath.Abs(*folder)
	log.Printf("Serving %s on HTTP port %d\n", absFolder, *port)
	http.Handle("/", loggingHandler(http.FileServer(http.Dir(*folder))))
	log.Fatal(http.ListenAndServe(fmt.Sprintf(":%d", *port), nil))
}
