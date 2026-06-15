class Hoconvert < Formula
  desc "CLI tool to convert HOCON into valid JSON, YAML, or TOML written in Rust."
  version "1.2.0"
  homepage "https://github.com/maoertel/hoconvert"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.2.0/hoconvert-v1.2.0-darwin-amd64.tar.gz"
    sha256 "d601944e8bcadd7b3e1d7b4a5dde6cd36b5c511d9b10dff04e7a515da8179dbb"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.2.0/hoconvert-v1.2.0-darwin-arm64.tar.gz"
    sha256 "3b11e9615f07ec7151d62a129d97eb8c9270af8730d82370bee0d855d4440908"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.2.0/hoconvert-v1.2.0-linux-amd64.tar.gz"
    sha256 "fbe501eb4391f5886a0582893e1192c6827b49960eca5c18264a7a642db9b883"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.2.0/hoconvert-v1.2.0-linux-arm64.tar.gz"
    sha256 "31abce2cf10d11e09372900ea945e6c0b3c935ab8c56b6e167550ad52101893c"
  end

  def install
    bin.install "hoconvert"
  end

  test do
    system "#{bin}/hoconvert --version"
  end
end
