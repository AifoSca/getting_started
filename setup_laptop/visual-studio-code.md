
## Visual Studio set-up

plugin
- [ ]  git-lens
- [ ]  yaml
- [ ]  vscode-icons
- [ ]  markdown-lint


settings → search rulers: open settings.json

```
{
    "yaml.schemas": {
        "file:///toc.schema.json": "/toc\\.yml/i"
    },
    "workbench.colorTheme": "Monokai",
    "workbench.iconTheme": "vscode-icons",
    "window.zoomLevel": -1,
    "workbench.colorCustomizations": {
        "editorRuler.foreground": "#ff4081"
    },
    "editor.rulers": [
    
        80,
        120
    ],
    "editor.minimap.enabled": false,
    "breadcrumbs.enabled": false,
    "editor.renderWhitespace": "all"
}
```

[https://medium.com/@qjli/daily-dev-tips-103-visual-studio-code-how-to-make-text-uppercase-or-lowercase-dbbd60511762](https://medium.com/@qjli/daily-dev-tips-103-visual-studio-code-how-to-make-text-uppercase-or-lowercase-dbbd60511762)

## ITerm set-up

First things first:

- Session > Edit Session >Terminal > unlimited scrollback

Second thing

VERY IMPORTANT ITERM2 !!!
[https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x](https://coderwall.com/p/h6yfda/use-and-to-jump-forwards-backwards-words-in-iterm-2-on-os-x)

- ITerm go to profiles -> Edit Profile -> Key -> Key Mappings

Add
Firs One

> Keyboard Shortcut: ⌥→
> Action: Send Escape Sequence
> Esc+: f

Second One
> Keyboard Shortcut: ⌥←
> Action: Send Escape Sequence
> Esc+: b
