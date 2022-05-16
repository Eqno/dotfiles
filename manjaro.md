# Manjaro + i3wm

## 安装

### 下载地址

[Manjaro 社区镜像](https://manjaro.org/downloads/community/i3/)

### 启动盘制作

[Rufus](https://rufus.ie/zh)

## 配置

### 镜像源

`sudo vim /etc/pacman.conf`，底部添加：

```
[archlinuxcn]
SigLevel = Optional TrustedOnly
Server = http://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch
```

`sudo vim /etc/pacman.d/mirrorlist`，更换源：

```
## Country : China
Server = http://mirrors.tuna.tsinghua.edu.cn/manjaro/stable/$repo/$arch
```

### 时间

`sudo ntpdate ntp.aliyun.com`，同步时间。

### 字体

从 windows `C:\Windows\Fonts`偷，放在 `/usr/share/fonts/Chinese`下，`fc-cache -fv`刷新字体缓存。

### 输入法

`sudo pacman -S fcitx-sunpinyin`，右下角添加`Pinyin`到输入法。

### 网卡

#### Redmi G

[瑞昱网卡 rtw8852ae](https://github.com/lwfinger/rtw89)

### 声卡

`aplay -l | awk -F \: '/,/{print $2}' | awk '{print $1}' | uniq`查看声卡名字，选择能用的，在`sudo vim /etc/asound.conf`添加：

```
pcm.!default {
    type hw
    card 名字
}
ctl.!default {
    type hw
    card 名字
}
```

### Clash

`sudo pacman -S clash`，安装 Clash，`mkdir -p ~/.config/clash`，`wget 订阅链接`，`mv 配置文件 config.yaml`，`docker run --name=yacd --rm --pulish 80:80 haishanh/yacd`，启动浏览器输入`localhost`，即可选择线路。

### GitHub

`ssh-keygen`，`vim ~/.ssh/id_rsa.pub`，复制出来，粘贴到[GitHub](https://github.com/settings/keys)，`git config --global core.editor /usr/bin/nvim`。

### 壁纸

`vim ~/.config/nitrogen/bg-saved.cfg`，更改壁纸，`sudo vim slick-greeter.conf`，更改锁屏（自己的图片拖到`/usr/share/slick-greeter/`下，否则没有权限）。

### 终端

`sudo pacman -S compton`，i3 config 自启 compton，改 .Xresources。

### 其他

i3 config 关闭 conky。
