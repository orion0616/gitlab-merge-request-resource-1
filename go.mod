module github.com/orion0616/gitlab-merge-request-resource-1

require (
	github.com/onsi/ginkgo v1.12.0
	github.com/onsi/gomega v1.9.0
	github.com/samcontesse/gitlab-merge-request-resource v0.1.0
	github.com/xanzy/go-gitlab v0.28.0
)

go 1.13

replace github.com/samcontesse/gitlab-merge-request-resource => github.com/orion0616/gitlab-merge-request-resource-1 v0.1.0
