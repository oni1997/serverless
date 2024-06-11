FROM golang:1.22-bookworm
WORKDIR /app
COPY go.* ./
RUN go mod download
COPY main.go ./
RUN CGO_ENABLED=0 go build -v -o server
CMD ["/app/server"]