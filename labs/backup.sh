#!/bin/bash

src="/d/CODING/cyber/notes"
dest="/d/CODING/cyber/labs/backup-$(date +%Y-%m-%d)"

mkdir -p $dest
cp -r $src/* $dest

echo "Backup completed!"
