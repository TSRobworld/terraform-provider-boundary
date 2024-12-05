# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

FROM golang:1.23.4

WORKDIR /go/src/terraform-provider-boundary
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...
