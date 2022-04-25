# Fcitx 输入法自动切换
===================

在离开/重新进入插入模式时自动切换输入法状态，以便在普通模式下始终是英文输入模式，切换回插入模式时恢复离开时的输入法输入模式。仅仅是将[通过命令控制Fcitx](http://fcitx.github.com/handbook/chapter-remote.html)里面的代码变成了插件形式。

## 要求
---
支持fcitx4、fcitx5。其他fcitx版本未经测试。

## 安装
----

直接安装即可

### SpaceVim
添加以下内容到 ~/.SpaceVim.d/init.toml :

```toml
[[custom_plugins]]
  # 中文自动切换
  name = "pchaos/fcitx5-status"
  merged=0
```
