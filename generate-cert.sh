#!/bin/sh

if ! command -v mkcert > /dev/null
then
    brew install mkcert nss
fi

read -p "Enter your team name: (ex: lyra) " team

echo "Your domain: app.${team:-lyra}.axeleration.id"

mkcert -install -key-file ./ssl/key.pem -cert-file ./ssl/cert.pem "app.${team:-lyra}.axeleration.id"

mkcert -install