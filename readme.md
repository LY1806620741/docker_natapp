## Natapp by docker
将nginx和natapp进行了一次封装，使用nginx进行转发内网web端口，natapp进行内网穿透。需要安装docker
### 1.Usage
```
$docker run -e HOST=192.168.3.102:80 -e TOKEN=123456 -e PORT=81 -it jieshao/natapp:1.0 /bin/bash
```
#### 1.1变量说明
1. HOST是内网中web服务的地址和端口
2. TOKEN填写natapp的令牌
3. PORT可选，对应的是natapp服务器设置使用的端口，默认80
```
Ctrl + P +Q
```
不关闭容器退出容器
```
exit
```
关闭并退出容器
### 2.自行编译Dockerfile
#### 2.1获取dockerfile进行修改
```
$git clone https://github.com/LY1806620741/docker_natapp.git
docker build .
```
#### 2.2移除未命名images
```
docker rmi -f $(docker images -f "dangling=true" -q)
```