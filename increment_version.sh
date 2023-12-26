#!/bin/bash

if [[ "${GITHUB_EVENT_NAME}" == "push" && $(git log -1 --pretty=%B) == *"[MAJOR]"* ]]; then
  ./gradlew incrementSemanticVersion --major
elif [[ "${GITHUB_EVENT_NAME}" == "push" && $(git log -1 --pretty=%B) == *"[MINOR]"* ]]; then
  ./gradlew incrementSemanticVersion --minor
else
  ./gradlew incrementSemanticVersion --patch
fi
