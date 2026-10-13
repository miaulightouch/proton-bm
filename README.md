# Proton-BM

Bemani-focused improvements to [Proton-CachyOS](https://github.com/CachyOS/proton-cachyos).

> [!WARNING]
> # it's experimental AI slop!
> author can't even understand the codes.

- **Multitouch:** Implements Windows pointer input on XWayland and Wayland.
- **WASAPI Exclusive Playback (experimental):** Playback through PipeWire with recovery attempts after externally forced quantum changes; fake exclusive mode is unsupported.
- **DirectSound Effects (experimental):** Built-in audio effects.
- **Compatibility Fixes:** Media playback, audio device mapping and Shader Model 2 compilation fixes.

WASAPI exclusive playback requires a session manager that honors exclusive requests. Deliberate manual PipeWire linking is outside the supported scope.

See the [wiki](https://github.com/miaulightouch/proton-bm/wiki) for supported behavior and [setup](https://github.com/miaulightouch/proton-bm/wiki/Setup).

For building, see the [upstream guide](https://github.com/CachyOS/proton-cachyos/blob/cachyos_main/BUILDING.md).
