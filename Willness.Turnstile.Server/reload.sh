#!/bin/sh

echo "Stopping service..."
systemctl stop willness.turnstile.service

echo "Enabling service..."
systemctl enable willness.turnstile.service

echo "Starting service..."
systemctl start willness.turnstile.service

echo "Checking nginx synthax..."
nginx -t

echo "Reloading nginx..."
nginx -s reload

echo "Done."