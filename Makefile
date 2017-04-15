########################################################################################

# This Makefile generated by GoMakeGen 0.4.1 using next command:
# gomakegen .

########################################################################################

.PHONY = fmt all clean deps

########################################################################################

all: yo

yo:
	go build yo.go

deps:
	git config --global http.https://pkg.re.followRedirects true
	go get -v pkg.re/essentialkaos/ek.v8
	go get -v pkg.re/essentialkaos/go-simpleyaml.v1

fmt:
	find . -name "*.go" -exec gofmt -s -w {} \;

clean:
	rm -f yo

########################################################################################
