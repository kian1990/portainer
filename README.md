# 安装docker环境
```bash
# 以Ubuntu为例
apt-get update
apt-get install -y ca-certificates curl gnupg lsb-release
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null
apt-get update
apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
systemctl enable --now docker
```
# 构建docker镜像
```bash
docker compose up -d
```
# 删除docker镜像
```bash
docker compose down
```
# 更新代码
```bash
git clone https://github.com/kian1990/portainer.git
git add 文件或文件夹
git commit -m "上传"
git push -u origin main
```