#!/bin/sh

# regenerates the CLI tool, i.e. all files except `addy-keys`, `addy`, and this file

NAME="addy"
AUTONAME="client.sh"

openapi-generator-cli generate \
  --skip-validate-spec \
  --input-spec openapi.yaml \
  --generator-name bash \
  --output .

sed "s/^complete -F _/complete -F _ ${NAME}/" "${AUTONAME}.bash-completion" > "${NAME}.bash-completion"
