#!/usr/bin/env sh

set -xeu

main() {
    rustup toolchain install stable
    pip install -r requirements/requirements.txt
    CI=1 NOCLR=1 python3 ./scripts/blog.py static
    rm -rf ./scripts/ ./requirements/
}

main "$@"

