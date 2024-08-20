# wrapper
All files from anonymous, No need for an Android emulator to decrypt alac


### 安装
推荐Windows Subsystem for Linux (WSL)使用
usage:  `./wrapper [port] ([username] [password])`
get-m3u8为port+10000

```shell
sudo -i
wget "https://github.com/zhaarey/wrapper/releases/download/linux/wrapper.linux.x86_64.tar.gz"
mkdir wrapper
tar -xzf wrapper.linux.x86_64.tar.gz -C wrapper
cd wrapper
./wrapper
```