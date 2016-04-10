#liblzma

liblzma for android, just build with `ndk-build`.

XZ Utils is free general-purpose data compression software with a high compression ratio. XZ Utils were written for POSIX-like systems, but also work on some not-so-POSIX systems. XZ Utils are the successor to LZMA Utils.

The core of the XZ Utils compression code is based on LZMA SDK, but it has been modified quite a lot to be suitable for XZ Utils. The primary compression algorithm is currently LZMA2, which is used inside the .xz container format. With typical files, XZ Utils create 30 % smaller output than gzip and 15 % smaller output than bzip2.

XZ Utils consist of several components:

liblzma is a compression library with an API similar to that of zlib.
xz is a command line tool with syntax similar to that of gzip.
xzdec is a decompression-only tool smaller than the full-featured xz tool.
A set of shell scripts (xzgrep, xzdiff, etc.) have been adapted from gzip to ease viewing, grepping, and comparing compressed files.
Emulation of command line tools of LZMA Utils eases transition from LZMA Utils to XZ Utils.
While liblzma has a zlib-like API, liblzma doesn't include any file I/O functions. A separate I/O library is planned, which would abstract handling of .gz, .bz2, and .xz files with an easy to use API.

