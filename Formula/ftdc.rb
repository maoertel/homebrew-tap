class Ftdc < Formula
  desc "Command line tool to download FTDC data from mongodb clusters."
  homepage "https://github.com/maoertel/mongodb-ftdc"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.1/ftdc-v0.1.1-macOS-darwin-amd64.tar.gz"
    sha256 "bdf2cecac090239ec2a14a0b0eeeaa5ec53a0058f5c771bcbba5abb2130f2e34"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.1/ftdc-v0.1.1-macOS-darwin-arm64.tar.gz"
    sha256 "3bab48e38a573a327931e18192d0c04038156aef4f6c5dd75cbf0577d046ec78"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.1/ftdc-v0.1.1-linux-amd64.tar.gz"
    sha256 "f8aa7ee57d8691cca87711f13f15e2c07bfbaf0106e224c76fc05c7bacff3e37"
  end

  def install
    bin.install "ftdc"
  end

  test do
    system "#{bin}/ftdc --version"
  end
end
