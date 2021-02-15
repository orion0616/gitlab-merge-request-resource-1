package check

import (
	"github.com/orion0616/gitlab-merge-request-resource-1"
)

type Request struct {
	Source  resource.Source  `json:"source"`
	Version resource.Version `json:"version,omitempty"`
}

type Response []resource.Version
