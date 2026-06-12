class Hoconvert < Formula
  desc "CLI tool to convert HOCON into valid JSON, YAML, or TOML written in Rust."
  version "1.1.1"
  homepage "https://github.com/maoertel/hoconvert"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.1.1/hoconvert-v1.1.1-darwin-amd64.tar.gz"
    sha256 "8d4a69372750c05ee7b7a9fa10bc6a3d0e1a20c6879da4a09358216804adf64d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.1.1/hoconvert-v1.1.1-darwin-arm64.tar.gz"
    sha256 "204a5601f879a1bc784d0e20e986e2c2d9244bd4b0dce049f4de7a7a4ccb0661"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.1.1/hoconvert-v1.1.1-linux-amd64.tar.gz"
    sha256 "a8460ac3f6ba5e809099f16a5071d2c6136be331c95647aa56771e981405d192"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.1.1/hoconvert-v1.1.1-linux-arm64.tar.gz"
    sha256 "95375e0ba6b99eb00ed7e5df4c8e589e37afded373173f1eb706e2f6d755631b"
  end

  def install
    bin.install "hoconvert"
  end

  test do
    system "#{bin}/hoconvert --version"
  end
end
