class Hoconvert < Formula
  desc "CLI tool to convert HOCON into valid JSON, YAML, or TOML written in Rust."
  version "1.1.0"
  homepage "https://github.com/maoertel/hoconvert"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.1.0/hoconvert-v1.1.0-darwin-amd64.tar.gz"
    sha256 "8aa6b6d19b81ce9fc9014c5aca48025246f6cfc6f093550a4affd0de54f5185e"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.1.0/hoconvert-v1.1.0-darwin-arm64.tar.gz"
    sha256 "0f00252c343222172e872b558495e6e07a90460539bea0f311d0297dd92c090e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.1.0/hoconvert-v1.1.0-linux-amd64.tar.gz"
    sha256 "e5679bad6312cdb1cdd761599fb832e1e798db0bb328a0ada2f7b6e20c6a0cff"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.1.0/hoconvert-v1.1.0-linux-arm64.tar.gz"
    sha256 "f5c57f8295d799264ddde21163a4aac17b5f68454625066680d54b8e1dc5e553"
  end

  def install
    bin.install "hoconvert"
  end

  test do
    system "#{bin}/hoconvert --version"
  end
end
