class Hoconvert < Formula
  desc "CLI tool to convert HOCON into valid JSON or YAML written in Rust."
  version "1.0.0"
  homepage "https://github.com/maoertel/hoconvert"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.0.0/hoconvert-v1.0.0-darwin-amd64.tar.gz"
    sha256 "eb88b23fb32df81fc804bea772f79dd04475b32677337bbb480843ed5b592a0b"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.0.0/hoconvert-v1.0.0-darwin-arm64.tar.gz"
    sha256 "1434d76f4aba725abaf81366dd47493e665de3fcabf4c24eaad8e9bc7b16a333"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v1.0.0/hoconvert-v1.0.0-linux-amd64.tar.gz"
    sha256 "de3012b85d2d172788676c2a83806a0332da29000bb88d6a205c0f16e9b68058"
  end

  def install
    bin.install "hoconvert"
  end

  test do
    system "#{bin}/hoconvert --version"
  end
end
