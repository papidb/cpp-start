const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const target = b.standardTargetOptions(.{});

    const mode = b.standardReleaseOptions();

    const exe = b.addExecutable("main", "main.cpp");
    exe.setOutputDir(".");
    exe.setTarget(target);
    exe.setBuildMode(mode);
    exe.linkSystemLibrary("c++");
    exe.addIncludePath("src");
    exe.addPackagePath("c", "builtin");
    exe.addPackagePath("pthread", "builtin");
    exe.install();
}
