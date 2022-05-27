class Hoconvert < Formula
  desc "CLI tool to convert HOCON into valid JSON or YAML written in Rust."
  version "0.1.3"
  homepage "https://github.com/maoertel/hoconvert"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v0.1.3/hoconvert-v0.1.3-darwin-amd64.tar.gz"
    sha256 "5e76dfee6e19ecfe6b4429c26ad546b1cfc3c70cd9b3450cf12a8ece8239b4f9"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maoertel/hoconvert/releases/download/v0.1.3/hoconvert-v0.1.3-darwin-arm64.tar.gz"
    sha256 "8c2380dde65bea4d888958de28e8b2b51da9851545ed86a37c3fcf5f04a3f4d9"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v0.1.3/hoconvert-v0.1.3-linux-amd64.tar.gz"
    sha256 "6c36e4ffac3b4eb022c2b94b9703395e50e6d7dde064a3402aa13c20ea9f64d2"
  end

  def install
    bin.install "hoconvert"
  end

  test do
    system "#{bin}/hoconvert --version"
  end
end
