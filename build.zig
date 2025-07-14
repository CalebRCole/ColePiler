const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const mod = b.addModule({
    	  .name = 1,
	  .root_source_file = "main.zig",
	  .target = target;
	  .optimize = optimize;
    })
    const exe = b.addExecutable(.{
    	  root_module(mod);
    });

    b.installArtifact(exe);
}