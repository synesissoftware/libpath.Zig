//! Path parsing library, for Zig.
//!
//! **libpath** provides an I/O-free model of Unix and Windows file-system
//! path forms. This package is a scaffolding skeleton; parse, classify,
//! equate, and compare are not implemented yet.

/// Package version.
pub const VERSION = "0.0.1";

const std = @import("std");
const testing = std.testing;

test "version" {
    try testing.expectEqualStrings("0.0.1", VERSION);
}
