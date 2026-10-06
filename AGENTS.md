# Proton-BM workspace instructions

## Project shorthands

- `%pjsync`: fetch the latest published release from `upstream`, create or reuse the corresponding upstream branch with `cachyos` replaced by `bm`, merge the release tag, and check, migrate or fix the Bemani patches. Run the relevant builds and tests.

## Project scope

- Read `README.md` and the relevant source and patches before continuing work. Consult ignored `local/` records when needed for builds or verification.
- Maintain one Bemani-focused Proton-CachyOS fork for implementations and modifications. Keep `wine/` as the clean upstream CachyOS submodule; manage Wine implementations, modifications and tests through `patches/wine/`.
- Use upstream source layout, style, tests and Proton SDK build rules. Apply each Wine patch once to the build copy.
- Put build output and test prefixes under `build/`. Keep local runtime state, diagnostics, source archives and build records under ignored `local/`; do not commit these files or expose their contents.
- Limit changes to the requested Bemani implementation or modification and necessary build/test integration; leave unrelated upstream code alone.
- Keep feature support and API limitations in `README.md`, and build/test records under ignored `local/`. Do not put implementation status, test results or work history in `AGENTS.md`.
- Distinguish automated regression tests from physical input verification; claim support only within the verified scope.
- Keep the original project remote as `upstream` and the personal fork as `origin`. Push fork changes to `origin`; do not push them to `upstream`.
- Name branches by replacing `cachyos` in the corresponding upstream names with `bm`.
- Use `bm-<upstream-version>-<bm-revision>-slr` for release tags. Start the BM revision at `1` for each upstream version and increment it for BM updates.
- Use `Proton-BM` for fork branding; identify CachyOS only as the upstream source.
