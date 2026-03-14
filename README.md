<h1 align="center">
  😍 + 🚀
  <br>Toolbx Spaceship Section<br>
</h1>

<h4 align="center">
  A <a href="https://docs.fedoraproject.org/en-US/atomic-desktops/toolbox" target="_blank">Toolbx</a> section for Spaceship prompt
</h4>

<p align="center">
  <a href="https://github.com/WilfSilver/spaceship-toolbx/releases">
    <img src="https://img.shields.io/github/v/release/WilfSilver/spaceship-toolbx.svg?style=flat-square"
      alt="GitHub Release" />
  </a>

  <a href="https://github.com/WilfSilver/spaceship-toolbx/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/WilfSilver/spaceship-toolbx/ci.yaml?style=flat-square"
      alt="GitHub Workflow Status" />
  </a>

  <a href="https://twitter.com/SpaceshipPrompt">
    <img src="https://img.shields.io/badge/twitter-%40SpaceshipPrompt-00ACEE.svg?style=flat-square"
      alt="Spaceship Twitter" />
  </a>

  <a href="https://discord.gg/NTQWz8Dyt9">
    <img
      src="https://img.shields.io/discord/859409950999707668?label=discord&logoColor=white&style=flat-square"
      alt="Chat on Discord"
    />
  </a>
</p>

Shows your current toolbx in your prompt! It uses `.containerenv` behind the scenes so could work with other systems (but these are not tested).

## Installing

You need to source this plugin somewhere in your dotfiles. Here's how to do it with some popular tools:

### [Oh-My-Zsh]

Execute this command to clone this repo into Oh-My-Zsh plugin's folder:

```zsh
git clone https://github.com/WilfSilver/spaceship-toolbx.git $ZSH_CUSTOM/plugins/spaceship-section
```

Include `spaceship-toolbx` in Oh-My-Zsh plugins list:

```zsh
plugins=($plugins spaceship-toolbx)
```

### [zplug]

```zsh
zplug "WilfSilver/spaceship-toolbx"
```

### [antigen]

```zsh
antigen bundle "WilfSilver/spaceship-toolbx"
```

### [antibody]

```zsh
antibody bundle "WilfSilver/spaceship-toolbx"
```

### [zinit]

```zsh
zinit light "WilfSilver/spaceship-toolbx"
```

### [zgen]

```zsh
zgen load "WilfSilver/spaceship-toolbx"
```

### [znap]

```zsh
znap source "WilfSilver/spaceship-toolbx"
```

### [sheldon]

```toml
[plugins.spaceship-section]
github = "WilfSilver/spaceship-toolbx"
```

### Manual

If none of the above methods works for you, you can install Spaceship manually.

1. Clone this repo somewhere, for example to `$HOME/.zsh/spaceship-section`.
2. Source this section in your `~/.zshrc`.

### Example

```zsh
mkdir -p "$HOME/.zsh"
git clone --depth=1 https://github.com/WilfSilver/spaceship-toolbx.git "$HOME/.zsh/spaceship-section"
```

For initializing prompt system add this to your `.zshrc`:

```zsh title=".zshrc"
source "~/.zsh/spaceship-section/spaceship-section.plugin.zsh"
```

## Usage

After installing, add the following line to your `.zshrc` in order to include Ember section in the prompt:

```zsh
spaceship add toolbx
```

## Options

This section is shown only in directories within a foobar context.

| Variable                   |              Default               | Meaning                              |
| :------------------------- | :--------------------------------: | ------------------------------------ |
| `SPACESHIP_TOOLBX_SHOW`    |               `true`               | Show current section                 |
| `SPACESHIP_TOOLBX_PREFIX`  |                `in`                | Prefix before section                |
| `SPACESHIP_TOOLBX_SUFFIX`  | `$SPACESHIP_PROMPT_DEFAULT_SUFFIX` | Suffix after section                 |
| `SPACESHIP_TOOLBX_COLOR`   |             `yellow`               | Color of section                     |

## Contributing

First, thanks for your interest in contributing!

Contribute to this repo by submitting a pull request. Please use [conventional commits](https://www.conventionalcommits.org/), since this project adheres to [semver](https://semver.org/) and is automatically released via [semantic-release](https://github.com/semantic-release/semantic-release).

## License

MIT © [Wilf Silver](https://wilfsilver.co.uk)

<!-- References -->

[Oh-My-Zsh]: https://ohmyz.sh/
[zplug]: https://github.com/zplug/zplug
[antigen]: https://antigen.sharats.me/
[antibody]: https://getantibody.github.io/
[zinit]: https://github.com/zdharma/zinit
[zgen]: https://github.com/tarjoilija/zgen
[sheldon]: https://sheldon.cli.rs/
[znap]: https://github.com/marlonrichert/zsh-snap
