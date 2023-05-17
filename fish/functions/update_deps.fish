#!/usr/bin/env fish

# Run pnpm commands
echo "Running pnpm deps:update..."
pnpm deps:update

echo "Running pnpm install..."
pnpm install

# Add specified files to git stage
echo "Adding package.json and pnpm-lock.yaml files to git stage..."
git add '**/**/package.json' 'pnpm-lock.yaml'

# Commit changes with the specified message
echo "Committing changes with message: chore: update deps"
git commit -m "chore: update deps"

echo "Done!"
