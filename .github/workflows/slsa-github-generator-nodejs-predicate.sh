#!/bin/bash

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
        "buildInvocationId": "$BUILD_INVOCATION_ID"
    }
}
EOF

echo "Predicate file generated: predicate.json"