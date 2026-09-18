const std = @import("std");
const libpath = @import("libpath");

pub fn main(init: std.process.Init) !void {
    var buffer: [256]u8 = undefined;
    var stdout_impl = std.Io.File.stdout().writer(init.io, &buffer);
    const stdout = &stdout_impl.interface;

    try stdout.print("libpath.Zig version: {s}\n", .{libpath.VERSION});
    try stdout.flush();
}
