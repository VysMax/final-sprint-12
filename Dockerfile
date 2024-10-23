FROM golang:1.22.4

WORKDIR /app

ENV CGO_ENABLED=0 GOOS=linux GOARCH=amd64

COPY go.mod go.sum ./

RUN go mod download

COPY *.go *.db ./

RUN go build -o /letstry

CMD ["/letstry"]