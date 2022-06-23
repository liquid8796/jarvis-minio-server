cd /minio
wget https://dl.minio.io/server/minio/release/linux-amd64/minio
chmod +x minio
export MINIO_ACCESS_KEY="$ACCESS_KEY"
export MINIO_SECRET_KEY="$SECRET_KEY"
CONSOLE-PORT=9001
EXPOSE $CONSOLE-PORT
./minio server --address :$PORT --console-address :$CONSOLE-PORT /mnt/minio/data
