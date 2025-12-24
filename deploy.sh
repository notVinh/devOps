#  chua su dung ngnix
# #!/bin/bash

# echo "--- Bắt đầu quy trình cập nhật tự động ---"

# # 1. Kéo bản mới nhất từ Docker Hub về
# sudo docker compose pull

# # 2. Khởi động lại các container với image mới (không làm gián đoạn các dịch vụ khác)
# sudo docker compose up -d

# # 3. Dọn dẹp các image cũ bị thừa để tránh đầy ổ cứng
# sudo docker image prune -f

# echo "--- Cập nhật thành công vào lúc: $(date) ---"

# su dung ngnix
#!/bin/bash
cd /home/nashies/hoc_devops/autodocker/hoc_compose/

echo "--- Dang keo code moi tu Docker Hub ---"
# Pull tat ca cac image moi (ca user-api va nginx neu co)
sudo docker compose pull

echo "--- Dang tai khoi dong he thong ---"
# Up se tu dong tao moi container nao co ban cap nhat
sudo docker compose up -d --remove-orphans

echo "--- Dang don dep image cu ---"
sudo docker image prune -f

echo "Cap nhat thanh cong qua Nginx!"