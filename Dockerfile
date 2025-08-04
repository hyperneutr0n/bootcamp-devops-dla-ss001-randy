FROM golang:1.24.5-alpine AS builder

WORKDIR /app

COPY src/go.mod src/go.sum ./

RUN go mod download

COPY src/ ./

RUN CGO_ENABLED=0 GOOS=linux go build -ldflags="-w -s" -o /server .

FROM alpine:latest

WORKDIR /app

COPY --from=builder /server .

EXPOSE 12345

CMD [ "./server" ]