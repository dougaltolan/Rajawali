set -e

docker run -it -v ~/.aws:/root/.aws -v ${TRAVIS_BUILD_DIR}:/workspace -w /workspace rajawali/alpine-glibc-android /bin/sh -c \
    "./gradlew build test --stacktrace --continue"