#!/bin/bash

# Variables
BUILDER_ID="https://github.com/slsa-framework/slsa-github-generator/.github/workflows/builder_nodejs_slsa3.yml@refs/tags/v2.0.0"
BUILD_TYPE="https://github.com/slsa-framework/slsa-github-generator/delegator-generic@v0"
CONFIG_SOURCE_URI="git+https://github.com/AEnguerrand/npm-publish-slsa-two-steps@refs/heads/main"
CONFIG_SOURCE_DIGEST="c67dc1783665ccf16d36f5cdc27ad03d9737c8b2"
ENTRY_POINT=".github/workflows/salsa-generator-nodejs.yaml"
DIRECTORY="."
NODE_VERSION=""
NODE_VERSION_FILE=""
REKOR_LOG_PUBLIC=true
RUN_SCRIPTS="build"
GITHUB_ACTOR_ID="4191694"
GITHUB_EVENT_NAME="workflow_dispatch"
GITHUB_BASE_REF=""
GITHUB_REF="refs/heads/main"
GITHUB_REF_TYPE="branch"
GITHUB_REPOSITORY="AEnguerrand/npm-publish-slsa-two-steps"
GITHUB_REPOSITORY_ID="897357827"
GITHUB_REPOSITORY_OWNER_ID="4191694"
GITHUB_RUN_ATTEMPT="1"
GITHUB_RUN_ID="12121810452"
GITHUB_RUN_NUMBER="4"
GITHUB_SHA="c67dc1783665ccf16d36f5cdc27ad03d9737c8b2"
GITHUB_TRIGGERING_ACTOR_ID="4191694"
GITHUB_WORKFLOW_REF="AEnguerrand/npm-publish-slsa-two-steps/.github/workflows/salsa-generator-nodejs.yaml@refs/heads/main"
GITHUB_WORKFLOW_SHA="c67dc1783665ccf16d36f5cdc27ad03d9737c8b2"
BUILD_INVOCATION_ID="12121810452-1"

# Generate JSON
cat <<EOF > predicate.json
{
    "builder": {
        "id": "$BUILDER_ID"
    },
    "buildType": "$BUILD_TYPE",
    "invocation": {
        "configSource": {
            "uri": "$CONFIG_SOURCE_URI",
            "digest": {
                "sha1": "$CONFIG_SOURCE_DIGEST"
            },
            "entryPoint": "$ENTRY_POINT"
        },
        "parameters": {
            "inputs": {
                "directory": "$DIRECTORY",
                "node-version": "$NODE_VERSION",
                "node-version-file": "$NODE_VERSION_FILE",
                "rekor-log-public": $REKOR_LOG_PUBLIC,
                "run-scripts": "$RUN_SCRIPTS"
            }
        },
        "environment": {
            "GITHUB_ACTOR_ID": "$GITHUB_ACTOR_ID",
            "GITHUB_EVENT_NAME": "$GITHUB_EVENT_NAME",
            "GITHUB_BASE_REF": "$GITHUB_BASE_REF",
            "GITHUB_REF": "$GITHUB_REF",
            "GITHUB_REF_TYPE": "$GITHUB_REF_TYPE",
            "GITHUB_REPOSITORY": "$GITHUB_REPOSITORY",
            "GITHUB_REPOSITORY_ID": "$GITHUB_REPOSITORY_ID",
            "GITHUB_REPOSITORY_OWNER_ID": "$GITHUB_REPOSITORY_OWNER_ID",
            "GITHUB_RUN_ATTEMPT": "$GITHUB_RUN_ATTEMPT",
            "GITHUB_RUN_ID": "$GITHUB_RUN_ID",
            "GITHUB_RUN_NUMBER": "$GITHUB_RUN_NUMBER",
            "GITHUB_SHA": "$GITHUB_SHA",
            "GITHUB_TRIGGERING_ACTOR_ID": "$GITHUB_TRIGGERING_ACTOR_ID",
            "GITHUB_WORKFLOW_REF": "$GITHUB_WORKFLOW_REF",
            "GITHUB_WORKFLOW_SHA": "$GITHUB_WORKFLOW_SHA"
        }
    },
    "metadata": {
        "buildInvocationId": "$BUILD_INVOCATION_ID",
        "completeness": {
            "parameters": true
        }
    }
}
EOF

echo "Predicate file generated: predicate.json"