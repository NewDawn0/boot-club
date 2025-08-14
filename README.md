# 🥊 BOOT CLUB

> The first rule of Boot Club: **you do talk about Boot Club**
> The second rule of Boot Club: **you scream about your themes in a dark terminal while Nix builds them for 8+ minutes**

Welcome to **Boot Club**, a disturbingly curated collection of **Nix-buildable GRUB themes**.
Think of it as a couture fashion line for your bootloader, but instead of models, you get pixel art and BIOS flashbacks.

Here, GRUB isn't just a boot manager. It's a lifestyle. A vibe. An aesthetic journey.
Your boot menu deserves to slay — not display.

---

## 💅 What Is This?

Boot Club is a **Nix flake** that builds a parade of **aesthetic crimes** against GRUB.
Don’t ask why. Ask why not.

If you:

- use NixOS unironically
- think GRUB should have lore
- feel physical pain when you see the default boot menu

…then congratulations. You're already a member.

---

## 🔥 The Theme Roster (aka the boot multiverse)

Each theme is sourced from its original creator. All credit and licensing remains intact. I'm just the theme goblin.

| Theme       | Description                                                 | Link                                                          |
| ----------- | ----------------------------------------------------------- | ------------------------------------------------------------- |
| `arcade`    | Pixel art + CRT haze = neon boot vibes                      | [arcade](https://github.com/nobreDaniel/dotfile)              |
| `crt-amber` | It's 1983. Your boot menu glows. Your room is warm.         | [crt-amber](https://github.com/Jacksaur/CRT-Amber-GRUB-Theme) |
| `cyber-re`  | Hacker in a cyberpunk anime, boots in terminal noir         | [cyber-re](https://www.gnome-look.org/p/1420727)              |
| `fallout`   | Gritty, post-apocalyptic booting. Pip-Boy not included      | [fallout](https://github.com/shvchk/fallout-grub-theme)       |
| `gtg`       | _Grand Theft Gentoo_. It's GTA, but your distro gets jacked | [gtg](https://gitlab.com/imnotpua/grub_gtg/)                  |
| `mario`     | It's-a boot! Pixel nostalgia with pipe dreams               | [mario](https://github.com/Crylia/dotfiles.git)               |
| `minegrub`  | Blocky boots from the mines of `/dev/sda1`                  | [minegrub](https://github.com/Lxtharia/double-minegrub-menu)  |
| `sleek`     | MacOS-core aesthetic for people who run Nix in a VM         | [sleek](https://github.com/sandesh236/sleek--themes)          |
| `vimix`     | Minimalist, modern, mysteriously stylish                    | [vimix](https://github.com/vinceliuice/grub2-themes)          |
| `virtua`    | Another pixelated masterpiece. CRT? Check. Vibes? Maxed     | [virtua](https://github.com/Patato777/dotfiles)               |

> 🔗 Bonus note: every theme remains under its original license. Respect the pixel artists or perish.

---

## 🧪 How to Build (a.k.a. Summoning the Boot Daemon)

You need **Nix**. If you don't have Nix, you’re in the wrong multiverse.
Assuming you’re flake-pilled and emotionally stable enough to edit `configuration.nix`, here's how you inject Boot Club straight into your system:

```nix
# 🧩 Step 1: Add Boot Club to your flake inputs
{
  inputs.boot-club.url = "github:NewDawn0/boot-club";
  inputs.boot-club.inputs.nixpkgs.follows = "nixpkgs";
}

# 🧪 Step 2: Apply the overlay to summon the themes
{
  nixpkgs.overlays = [ inputs.boot-club.overlays.default ];
}

# 🎨 Step 3: Pick your theme in configuration.nix and flex
{
  boot.loader.grub.enable = true;
  boot.loader.grub.theme = grubThemes.minegrub;  # or: arcade, gtg, virtua, etc.
}
```

Then run:

```bash
# Activate the ritual
sudo nixos-rebuild switch
```

Reboot</br>
Stare at your new boot menu</br>
Shed a single tear</br>
You've ascended</br>

---

## 📜 License

- **This repo:** MIT. Steal it, fork it, resell it as an NFT. I dare you.
- **Themes:** Each follows its original license — check their linked repos for details.

---

## 🤝 Contributing

Boot Club is open to new members.
To contribute:

- Add your cursed masterpiece to the themes/ folder.
- Update the flake if necessary.
- Submit a PR with a ridiculous name and optional backstory.
- Want to rewrite this README with more unhinged energy? Fork me daddy.

---

## 💭 Final Thoughts

This project was made out of equal parts:

- Spite toward the default GRUB look
- Addiction to nix fmt .
- And a dream where boot menus mattered

If you’re here, you’re already one of us.
Welcome to Boot Club.
Now go theme your BIOS, coward.
