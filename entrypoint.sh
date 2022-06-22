cd /minio
wget https://dl.minio.io/server/minio/release/linux-amd64/minio
chmod +x minio
export MINIO_ACCESS_KEY="$ACCESS_KEY"
export MINIO_SECRET_KEY="$SECRET_KEY"
podman run -p 9000:9000 -p 9001:9001 \
./minio server --address :$PORT /mnt/minio/data --console-address ":9001"
