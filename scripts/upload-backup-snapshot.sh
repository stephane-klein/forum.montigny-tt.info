#!/usr/bin/env bash
set -e

cd "$(dirname "$0")/../"

source ./secrets
export MC_HOST_backup=https://SCWF4FNPVB7QRQCRKNQ0:${S3_SECRET}@s3.fr-par.scw.cloud
docker-compose down
tar czfv snapshot.tar.gz ./
docker-compose up -d
./mc cp snapshot.tar.gz backup/backup-montigny-tt-info/snapshot.tar.gz
rm snapshot.tar.gz

