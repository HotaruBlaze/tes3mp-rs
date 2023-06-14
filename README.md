# tes3mp-rs - Phoenix Fork
# Note: This is a fork updated for 0.8.1, as the original [tes3mp-rs](https://github.com/teamnwah/tes3mp-rs) seems abandoned and out of date.

Rust bindings for creating a TES3MP server plugin

Generating the bindings can be done via running

# Example Plugin
https://github.com/HotaruBlaze/tes3mp-rs-example

# Note about Windows: 
Windows seems to struggle to generate the bindings correctly, this is expected to be due to differences in C++ compilers and the version required for tes3mp. 


# Build new Bindings:
```
./setup-externs
./generate-rust.py
```
this will generate a new `tes3mp-plugin/src/plugin/generated.rs` file
