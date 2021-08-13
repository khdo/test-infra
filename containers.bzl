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
#rm -rf /root/.cache/bazel/

load("@io_bazel_rules_docker//container:container.bzl", "container_pull")

def repositories():
    container_pull(
        name = "distroless-base",
        digest = "sha256:9b118af5af307cb2c271336056e4bbc1d0cd943765f4eedcf06e87310ff00ba6",
        registry = "gcr.io",
        repository = "distroless/base",
        architecture = "s390x",
        tag = "latest-s390x",
    )

    container_pull(
        name = "gcloud-base",
        digest = "sha256:5b49dfb5e366dd75a5fc6d5d447be584f8f229c5a790ee0c3b0bd0cf70ec41dd",
        registry = "gcr.io",
        repository = "cloud-builders/gcloud",
        architecture = "s390x",
        # #*tag = "latest",
    )

    container_pull(
        name = "gcloud-go",
        digest = "sha256:ca9873d744f19e77ceafb499846248a82cde74ab5a613dd394348e7904d08d71",
        registry = "gcr.io",
        repository = "k8s-testimages/gcloud-in-go",
        architecture = "s390x",
        tag = "v20200205-602500d",
    )

    container_pull(
        name = "bazel-base",
        digest = "sha256:e006f1c3658dd11d5176d5f7a862df4d5b9c06cfe014d5b8a86bb64b20a6f8be",
        registry = "gcr.io",
        repository = "k8s-testimages/launcher.gcr.io/google/bazel",
        tag = "v20210128-721ee66-test-infra",
        architecture = "s390x",
    )

    container_pull(
        name = "git-base",
        registry = "sys-loz-test-team-docker-local.artifactory.swg-devops.com",
        repository = "prow/git",
        tag = "latest",
        architecture = "s390x",
        #*quay.io/multi-arch/test-infra@sha256:e86b5eee48ef99077c06e171972f4ef63012cd833e32ff4aa8ae8a8b8ddd5b01
        ##*docker pull quay.io/multi-arch/test-infra:alpine-s390x
    )
    
# below are the repositries with individual sha value
  container_pull(
      name = "alpine-base",
      digest = "sha256:e86b5eee48ef99077c06e171972f4ef63012cd833e32ff4aa8ae8a8b8ddd5b01",
      registry = "quay.io",
      repository = "multi-arch/test-infra",
      #*tag = "alpine-s390x",
      architecture = "s390x",
      #*quay.io/multi-arch/test-infra@sha256:e86b5eee48ef99077c06e171972f4ef63012cd833e32ff4aa8ae8a8b8ddd5b01
      ##*docker pull quay.io/multi-arch/test-infra:alpine-s390x
  )

  container_pull(
      name = "alpine-bash",
      digest = "sha256:3c0d3c0dac33159cddc06fb5b881bf70bce7088a703d74aede7d1ce05355d4ef",
      registry = "quay.io",
      repository = "multi-arch/test-infra",
      ##*tag = "alpine-bash-s390x",
      architecture = "s390x",
      ##*docker pull quay.io/multi-arch/test-infra:alpine-bash-s390x
      ##*docker pull quay.io/multi-arch/test-infra@sha256:3c0d3c0dac33159cddc06fb5b881bf70bce7088a703d74aede7d1ce05355d4ef
  )

  container_pull(
    name = "git-base",
    digest = "sha256:24757363c52b2043296c3f05fd1675ceb2e6528ff49cb896701f3fb2486ee74a",
    registry = "quay.io",
    repository = "multi-arch/test-infra",
    ##*tag = "git-s390x",
    architecture = "s390x",
    ##*docker pull quay.io/multi-arch/test-infra:git-s390x
    ##*docker pull quay.io/multi-arch/test-infra@sha256:24757363c52b2043296c3f05fd1675ceb2e6528ff49cb896701f3fb2486ee74a
  )

