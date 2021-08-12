# Copyright 2019 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

load("@io_bazel_rules_docker//container:container.bzl", "container_pull")

def repositories():
    container_pull(
        name = "distroless-base",
#        digest = "sha256:2b0a8e9a13dcc168b126778d9e947a7081b4d2ee1ee122830d835f176d0e2a70",
        digest = "sha256:5d2e4e5c39a5e9a6e7e39ccaf30ca3b10d306f8222ec1185dd6c2d6eedbf2325",
        registry = "gcr.io",
        repository = "distroless/base",
	architecture = "s390x",
        # tag = "latest", as of Jul 15 2020
    )

    container_pull(
        name = "alpine-base",
#        digest = "sha256:94eabd0927065a4fd03136179c4467fc42d3d08f78fd571e395599ff8521c210",
#        registry = "gcr.io",
#        repository = "k8s-prow/alpine",
        digest = "sha256:8da55c3aad6605ae68612408e46d5c8630f77ef96c760fd1bbfa89c82b9dc946",
        registry = "docker.io",
        repository = "s390x/alpine",
        architecture = "s390x",
        # tag = "v20200713-e9b3d9d",
    )

    container_pull(
        name = "alpine-bash",
#        digest = "sha256:5b2616c8e2a9ca1e8cd015ad76df3bedecdb7b98b8825c718360ec6b98cb1dcc",
#        registry = "gcr.io",
#        repository = "k8s-testimages/alpine-bash",
        digest = "sha256:79d31f3db8159b6fb2bc1de2500a0e8d546cb5be3903e717f83cbfe74cdb5b7c",
        registry = "sys-loz-test-team-docker-local.artifactory.swg-devops.com",
        repository = "s390x/alpine-bash",
        architecture = "s390x",
        # tag = "v20200713-e9b3d9d",
    )

    container_pull(
        name = "gcloud-base",
        digest = "sha256:5b49dfb5e366dd75a5fc6d5d447be584f8f229c5a790ee0c3b0bd0cf70ec41dd",
        registry = "gcr.io",
        repository = "cloud-builders/gcloud",
        # tag = "latest",
    )

    container_pull(
        name = "git-base",
#        digest = "sha256:1527341aff1003b6b27c8ed935e6f0200258bee55b6eb178ca3ef124196384fe",
#        registry = "gcr.io",
#        repository = "k8s-prow/git",
#        digest = "sha256:d3c92e68ef464b3688ace9ec9edd484167f395c76f1c4a396e1c0177b5043e16",
      digest = "sha256:667a4cdc6dc4e7cb6edee50b6f3a30788828b3e11c883e33cd364ccd5d4216a2",
      registry = "sys-loz-test-team-docker-local.artifactory.swg-devops.com",
      repository = "s390x/git",
      architecture = "s390x",
    )

    container_pull(
        name = "gcloud-go",
        digest = "sha256:ca9873d744f19e77ceafb499846248a82cde74ab5a613dd394348e7904d08d71",
        registry = "gcr.io",
        repository = "k8s-testimages/gcloud-in-go",
        # tag = "v20200205-602500d",
    )

    container_pull(
        name = "bazel-base",
        digest = "sha256:e006f1c3658dd11d5176d5f7a862df4d5b9c06cfe014d5b8a86bb64b20a6f8be",
        registry = "gcr.io",
        repository = "k8s-testimages/launcher.gcr.io/google/bazel",
        tag = "v20210128-721ee66-test-infra",
    )
