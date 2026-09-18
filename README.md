# libpath.Zig <!-- omit in toc -->

Path parsing library, for Zig

![Language](https://img.shields.io/badge/Zig-F7A41D?style=flat&logo=zig&logoColor=white)
[![License](https://img.shields.io/badge/License-BSD_3--Clause-blue.svg)](https://opensource.org/licenses/BSD-3-Clause)
[![GitHub release](https://img.shields.io/github/v/release/synesissoftware/libpath.Zig.svg)](https://github.com/synesissoftware/libpath.Zig/releases/latest)
[![Last Commit](https://img.shields.io/github/last-commit/synesissoftware/libpath.Zig)](https://github.com/synesissoftware/libpath.Zig/commits/master)
[![CI](https://github.com/synesissoftware/libpath.Zig/actions/workflows/ci.yml/badge.svg)](https://github.com/synesissoftware/libpath.Zig/actions/workflows/ci.yml)


## Table of Contents <!-- omit in toc -->

- [Introduction](#introduction)
- [Installation](#installation)
- [Components](#components)
- [Examples](#examples)
- [Project Information](#project-information)
  - [Where to get help](#where-to-get-help)
  - [Contribution guidelines](#contribution-guidelines)
  - [Dependencies](#dependencies)
    - [Efferent (fan-out)](#efferent-fan-out)
    - [Development Dependencies](#development-dependencies)
    - [Afferent (fan-in)](#afferent-fan-in)
  - [Related projects](#related-projects)
  - [License](#license)


## Introduction

**libpath** provides a multi-language, I/O-free model of Unix and Windows file-system path *forms* — parsing, classifying, and comparing them under selectable OS rule sets — as a reliable foundation for applications and path-consuming libraries (notably **recls**).

**libpath.Zig** is the **Zig** implementation. This repository is a packaging skeleton; the path API is not implemented yet.


## Installation

Add **libpath.Zig** to your `build.zig.zon`:

```zig
.{
    .name = "my-project",
    .version = "0.1.0",
    .dependencies = .{
        .libpath = .{
            .url = "https://github.com/synesissoftware/libpath.Zig/archive/refs/tags/0.0.1.tar.gz",
            // .hash = "...",
        },
    },
}
```

Then import and expose the module in your `build.zig`:

```zig
const libpath_dep = b.dependency("libpath", .{
    .target = target,
    .optimize = optimize,
});
exe.root_module.addImport("libpath", libpath_dep.module("libpath"));
```


## Components

Skeleton; path API not yet implemented. The package currently exports `VERSION`.


## Examples

See [EXAMPLES.md](./EXAMPLES.md). Run the sample with:

```bash
zig build run-example
```


## Project Information


### Where to get help

[GitHub Page](https://github.com/synesissoftware/libpath.Zig "GitHub Page")


### Contribution guidelines

Defect reports, feature requests, and pull requests are welcome on https://github.com/synesissoftware/libpath.Zig.


### Dependencies


#### Efferent (fan-out)

None.


#### Development Dependencies

None.


#### Afferent (fan-in)

None (currently).


### Related projects

* [**libpath**](https://github.com/synesissoftware/libpath/);
* [**libpath.Go**](https://github.com/synesissoftware/libpath.Go/);
* [**libpath.Python**](https://github.com/synesissoftware/libpath.Python/);
* [**libpath.Ruby**](https://github.com/synesissoftware/libpath.Ruby/);
* [**libpath.Rust**](https://github.com/synesissoftware/libpath.Rust/);


### License

**libpath.Zig** is released under the 3-clause BSD license. See [LICENSE](./LICENSE) for details.


<!-- ########################### end of file ########################### -->
