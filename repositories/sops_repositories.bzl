load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")

def sops_repositories():
#    Attempting to try a M1 runnable here and see if it works
  http_file(
    name = "sops_darwin",
    # sha256 = "795f03364ed8499d169505021b443226b5a9ee9e8a58f560188a133870d194c9",
    urls = ["https://github.com/mozilla/sops/releases/download/v3.7.1/sops-v3.7.1.darwin"],
    executable = True
  )

  http_file(
    name = "sops_linux",
    # sha256 = "610fca9687d1326ef2e1a66699a740f5dbd5ac8130190275959da737ec52f096",
    urls = ["https://github.com/mozilla/sops/releases/download/v3.7.1/sops-v3.7.1.linux"],
    executable = True
  )

  http_file(
    name = "sops_windows",
    # sha256 = "69cfb3eeaa0b77cc4923428855acdfc9ca9786544eeaff9c21913be830869d29",
    urls = ["https://github.com/mozilla/sops/releases/download/v3.7.1/sops-v3.7.1.exe"],
    executable = True
  )

  http_file(
    name = "sops_darwin_m1",
    # sha256 = "795f03364ed8499d169505021b443226b5a9ee9e8a58f560188a133870d194c9",
    urls = ["https://github.com/lucqui/sops-m1-build/raw/main/sops"],
    executable = True
  )