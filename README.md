# vim Fcitx 输入法自动切换

==================================================

vim 中在离开/重新进入插入模式时自动切换输入法状态，以便在普通模式下始终是英文输入模式，切换回插入模式时恢复离开时的输入法输入模式。仅仅是将[通过命令控制 Fcitx](http://fcitx.github.com/handbook/chapter-remote.html)里面的代码变成了插件形式。

## \* 要求

支持 fcitx4、fcitx5。其他 fcitx 版本未经测试。

## \* 安装

### Use Vundle

Add this in your .vimrc

> Plugin pchaos/fcitx5-status'

Next,open vim and execute this

> :BundleInstall

### Use SpaceVim

添加以下内容到 ~/.SpaceVim.d/init.toml :

```toml
[[custom_plugins]]
  # 中文自动切换
  name = "pchaos/fcitx5-status"
  merged=0
```

### lazy.nvim

```lua
  { -- 返回到 normal 模式时快速切换为英文输入法
    "pchaos/fcitx5-status",
  },
```
