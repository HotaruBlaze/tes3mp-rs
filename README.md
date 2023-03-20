# tes3mp-rs - Phoenix Fork
# Note: This is a fork updated for 0.8.1, as the original [tes3mp-rs](https://github.com/teamnwah/tes3mp-rs) seems abandoned and out of date.

Rust bindings for creating a TES3MP server plugin

Generating the bindings can be done via running


## For Windows:
```
choco install mingw -y --version=8.5.0
./setup-externs.ps1
python .\generate-rust.py
```

## For Linux:
TODO: Update build instructions for linux


# Build new Bindings:
```
./setup-externs
./generate-rust.py
```
this will generate a new `tes3mp-plugin/src/plugin/generated.rs` file
