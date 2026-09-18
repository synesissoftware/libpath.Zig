const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    // Create a module for other packages to import
    const libpath_module = b.addModule("libpath", .{
        .root_source_file = b.path("src/root.zig"),
        .target = target,
        .optimize = optimize,
    });

    // Static library using the module
    const lib = b.addLibrary(.{
        .name = "libpath",
        .linkage = .static,
        .root_module = libpath_module,
    });
    b.installArtifact(lib);

    // Unit tests using the module
    const lib_unit_tests = b.addTest(.{
        .root_module = libpath_module,
    });
    const run_lib_unit_tests = b.addRunArtifact(lib_unit_tests);

    const test_step = b.step("test", "Run unit tests");
    test_step.dependOn(&run_lib_unit_tests.step);

    // Example: libver
    const example = b.addExecutable(.{
        .name = "libver",
        .root_module = b.createModule(.{
            .root_source_file = b.path("examples/libver.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });
    example.root_module.addImport("libpath", libpath_module);
    b.installArtifact(example);

    const run_example = b.addRunArtifact(example);
    if (b.args) |args| {
        run_example.addArgs(args);
    }

    const run_example_step = b.step("run-example", "Run the libver example");
    run_example_step.dependOn(&run_example.step);
}
