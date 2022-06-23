cd /minio
wget https://dl.minio.io/server/minio/release/linux-amd64/minio
chmod +x minio
export MINIO_ACCESS_KEY="$ACCESS_KEY"
export MINIO_SECRET_KEY="$SECRET_KEY"
MINIO_ROOT_USER=admin MINIO_ROOT_PASSWORD=admin ./minio server --address :$PORT /mnt/minio/data
