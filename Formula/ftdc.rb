class Ftdc < Formula
  desc "Command line tool to download FTDC data from mongodb clusters."
  version "0.1.2"
  homepage "https://github.com/maoertel/mongodb-ftdc"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.2/ftdc-v0.1.2-macOS-darwin-amd64.tar.gz"
    sha256 "b4a9b94886c95f01d946e1066266e1258092d1387cc6090f00ef84ff8f186f70"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.2/ftdc-v0.1.2-macOS-darwin-arm64.tar.gz"
    sha256 "6a069f22289e9eae5a66ff5c17e6592e5933096016ba1c04c12943ee9e2e10e8"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.2/ftdc-v0.1.2-linux-amd64.tar.gz"
    sha256 "2f49613f73972a0ba04776886353cf11bc93ffd02b08c79b8504195da419f335"
  end

  def install
    bin.install "ftdc"
  end

  test do
    system "#{bin}/ftdc --version"
  end
end
