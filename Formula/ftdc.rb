class Ftdc < Formula
  desc "Command line tool to download FTDC data from mongodb clusters."
  version "0.1.3"
  homepage "https://github.com/maoertel/mongodb-ftdc"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.3/ftdc-v0.1.3-macOS-darwin-amd64.tar.gz"
    sha256 "d0117ba190ed0afbc048d84ad3d8a883e960158d451ece0758f0f48a0593b0b5"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.3/ftdc-v0.1.3-macOS-darwin-arm64.tar.gz"
    sha256 "209fd2d50f9a5c2faa490ac58772a9395f12f93e0e5f517f10e65e5bc2b4bb3d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.3/ftdc-v0.1.3-linux-amd64.tar.gz"
    sha256 "7b42b3cae56af5ef2660afeee89dc4e66693a6dddad63798b1af762167a90768"
  end

  def install
    bin.install "ftdc"
  end

  test do
    system "#{bin}/ftdc --version"
  end
end
