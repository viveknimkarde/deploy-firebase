#!/bin/sh
TOK = $FIREBASE_TOKEN

echo "Tok ${TOK}"
echo "Token ${FIREBASE_TOKEN}"

if [ -z "${FIREBASE_TOKEN}" ]; then
    echo "FIREBASE_TOKEN is missing"
    exit 1
fi

if [ -z "${FIREBASE_PROJECT}" ]; then
    echo "FIREBASE_PROJECT is missing"
    exit 1
fi

firebase deploy \
    -m "${GITHUB_SHA}" \
    --project ${FIREBASE_PROJECT}
