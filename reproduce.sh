#!/bin/sh
set -xeuo pipefail

mix clean
mix reproduce
mix reproduce
mix reproduce
mix clean
mix reproduce
