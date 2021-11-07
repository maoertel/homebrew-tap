class Hoconvert < Formula
  desc "CLI tool to convert HOCON into valid JSON or YAML written in Rust."
  version "0.1.2"
  homepage "https://github.com/maoertel/hoconvert"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v0.1.2/hoconvert-v0.1.2-darwin-amd64.tar.gz"
    sha256 "324afcaed854e57eddfd74204737ec4ffa793a2c336b2d418e352bb65a93c374"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maoertel/hoconvert/releases/download/v0.1.2/hoconvert-v0.1.2-darwin-arm64.tar.gz"
    sha256 "fb39ecf4a08818faa9a00485e2195c3f29e7f10ecd71443bf80c82fa24dea4ad"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maoertel/hoconvert/releases/download/v0.1.2/hoconvert-v0.1.2-linux-amd64.tar.gz"
    sha256 "7c4269fe513e3b6cdfb42fc64e79afb363283b3e4123ea241b11614fe39a5f38"
  end

  def install
    bin.install "hoconvert"
  end

  test do
    system "#{bin}/hoconvert --version"
  end
end
