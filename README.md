# aa-antiinvehicleshoot

Made By: **Abu Atab DEV Team**

---

## Overview

**aa-antiinvehicleshoot** is a lightweight FiveM resource designed to prevent **aiming (and drive-by behavior) inside vehicles only when a weapon is equipped**.

---

## Showcase

### Video Preview
[Watch the video](https://streamable.com/scw6jr)

---

## Core Features

- Prevent aiming **only when a weapon is equipped** (unarmed = normal aim)
- Prevent drive-by behavior while aiming is blocked
- Mode selection:
  - **Driver only**
  - **All occupants** (driver + passengers)
- Fully configurable via `config.lua`
- Built-in GitHub **Latest Release** update checker
- Lightweight and optimized

---

## Dependencies

- None

---

## Installation

1. Put the resource in your `resources` folder:
```
aa-antiinvehicleshoot
```
2. Add to `server.cfg`:
```cfg
ensure aa-antiinvehicleshoot
```

---

## Configuration

All settings are located in:

```
config.lua
```

### Main options

* Enable / Disable:

  * `Config.DisableShootInVehicle.Enabled`
* Mode:

  * `Config.DisableShootInVehicle.Mode = "all"` → Driver + passengers
  * `Config.DisableShootInVehicle.Mode = "driver"` → Driver only

### Update checker (GitHub)

* `Config.CheckForUpdates = true/false`

Example:

```lua
Config.CheckForUpdates = true
```

---

## Notes

* This resource blocks **aiming only when a weapon is equipped**.
* If the player is **unarmed**, aiming works normally.
* Does not affect driving, entering/exiting vehicles, or general movement.

---

## Updates (GitHub)

This resource can check for updates automatically using **GitHub Releases (Latest Release)**.

If your version is outdated, a warning will appear in the server console showing:

* Current version
* Latest version
* Update link

---

## Links

* Discord: **[Abu Atab DEV](https://discord.gg/ZVrTWVvf5f)**
* GitHub: **[@Abu-Atab](https://github.com/abu-atab)**

---

## Support & Updates

Support, updates, and announcements are provided **only** through the official Discord server.

Join here:
**[Abu Atab DEV](https://discord.gg/ZVrTWVvf5f)**

---

## IMPORTANT NOTICE

This resource is **protected** and provided for **personal server use only**.  
Any form of redistribution, resale, leaking, or re-uploading is **strictly prohibited**.

By using this resource, you automatically agree to all terms listed in the license file.