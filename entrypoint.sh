cd /minio
wget https://dl.minio.io/server/minio/release/windows-amd64/minio.RELEASE.2022-06-20T23-13-45Z
chmod +x minio
export MINIO_ACCESS_KEY="$ACCESS_KEY"
export MINIO_SECRET_KEY="$SECRET_KEY"
./minio server --address :$PORT /mnt/minio/data
