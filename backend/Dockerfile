# build
FROM golang:1.17.13-alpine3.16 as builder
WORKDIR /app
COPY . .
RUN go build -o main ./cmd/api

# release
FROM alpine:3.18.4
COPY --from=builder /app/main .
EXPOSE 8081
CMD ["/main"]