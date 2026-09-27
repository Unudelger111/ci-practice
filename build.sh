#!/bin/bash

echo "===== RUNNING TESTS ====="

python3 test_app.py

if [ $? -ne 0 ]; then
    echo "Tests failed!"
    exit 1
fi

echo ""
echo "===== BUILDING DOCKER IMAGE ====="

docker build -t ci-app .

if [ $? -ne 0 ]; then
    echo "Docker build failed!"
    exit 1
fi

echo ""
echo "===== SUCCESS ====="
echo "Tests passed and Docker image built successfully."

