# Setup Bitfusion Client for Ubuntu18.04
## Install Git
---
```
$ sudo apt update
$ sudo apt -y install git
```

## Clone repogitory
---
```
$ cd && git clone https://github.com/y-yas/bf/
```

## Download Bitfusion client
---
```
$ ./bf/setup_ubuntu.sh
```

## Enable Bitfusion client 
---
Bitfusionサーバと同一vCenterインスタンスの場合はEnableを実施  
対象のクライアントサーバはEnable前にPowerOff

![Enable_img](./images/enable.png)


## Deploy Client Token
---
ベアメタルサーバ、Bitfusionサーバとは別のｖCenterで管理される仮想マシンの場合はTokenを利用

1. vSphere Client で、[メニュー ] > [[Bitfusion]] 
2. [トークン] タブで [新規トークン] 
3. [トークンの作成] ダイアログ ボックスで、説明を入力し、[作成] 
4. リストからトークンを選択し、[ダウンロード] をクリックして、tar ファイルをローカル マシンに保存
5. tar ファイルをクライアント マシンのファイルシステムにコピーし、解凍

- ca.crt を /etc/bitfusion/tls にコピーします。
- client.yaml を ~/.bitfusion にコピーします。
- servers.conf を ~/.bitfusion にコピーします。

## Add Bitfusion user（enable、token 共通）
---
```
$ cd && ./bf/add_grpup.sh
```


