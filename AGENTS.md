# Proton-BM workspace instructions

## Project shorthands

- `%pjsync`: fetch the latest published release from `upstream`, create or reuse the corresponding upstream branch with `cachyos` replaced by `bm`, merge the release tag, and check, migrate or fix the Bemani patches. Run the relevant builds and tests.

## Project scope

- Read `README.md` and the relevant source and patches before continuing work. Consult ignored `local/` records when needed for builds or verification.
- Maintain one Bemani-focused Proton-CachyOS fork for implementations and modifications. Keep `wine/` as the clean upstream CachyOS submodule; manage Wine implementations, modifications and tests through `patches/wine/`.
- Use upstream source layout, style, tests and Proton SDK build rules. Apply each Wine patch once to the build copy.
- Organize patches by feature, including its fixes and regression tests; update the feature patch instead of appending patches that record successive revisions.
- Before adding a game- or process-specific workaround, read the affected project's and component's quirk guidelines and follow their existing application detection and quirk mechanisms. Keep such exceptions scoped to the affected application; fix general defects in the shared implementation.
- Put build output and test prefixes under `build/`. Keep local runtime state, diagnostics, source archives and build records under ignored `local/`; do not commit these files or expose their contents.
- Limit changes to the requested Bemani implementation or modification and necessary build/test integration; leave unrelated upstream code alone.
- Keep a brief feature list in `README.md` and the wiki Home page. Use one Setup page with H2 game sections, including IIDX 27+ and REFLEC BEAT, and H3 Requirement / Audio Effects subsections. Keep the registration script at `assets/dsdmo-register.bat` and native `dsdmo.dll` installation under Audio Effects and mark built-in effects experimental. Document only implemented behavior, limitations and fork-specific requirements; omit default Spice options, generic Proton environment configuration and internal technical details. Keep build/test records under ignored `local/` and omit work history from public documentation. Do not put implementation status or test results in `AGENTS.md`.
- Distinguish automated regression tests from physical input verification; claim support only within the verified scope.
- Keep the original project remote as `upstream` and the personal fork as `origin`. Push fork changes to `origin`; do not push them to `upstream`.
- Name branches by replacing `cachyos` in the corresponding upstream names with `bm`.
- Use `bm-<upstream-version>-<bm-revision>-slr` for release tags. Start the BM revision at `1` for each upstream version and increment it for BM updates.
- Use `Proton-BM` for fork branding; identify CachyOS only as the upstream source.
