FROM golang:1.13-stretch AS builder

WORKDIR /go/src/github.com/orion0616/gitlab-merge-request-resource-1/

COPY . .

RUN GOARCH=amd64 GOOS=linux && \
    go build -o assets/in in/cmd/main.go && \
    go build -o assets/out out/cmd/main.go && \
    go build -o assets/check check/cmd/main.go

FROM concourse/buildroot:git
COPY --from=builder /go/src/github.com/orion0616/gitlab-merge-request-resource-1/assets/* /opt/resource/
