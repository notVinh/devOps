#!/bin/bash

echo "--- Bắt đầu quy trình cập nhật tự động ---"

# 1. Kéo bản mới nhất từ Docker Hub về
sudo docker compose pull

# 2. Khởi động lại các container với image mới (không làm gián đoạn các dịch vụ khác)
sudo docker compose up -d

# 3. Dọn dẹp các image cũ bị thừa để tránh đầy ổ cứng
sudo docker image prune -f

echo "--- Cập nhật thành công vào lúc: $(date) ---"