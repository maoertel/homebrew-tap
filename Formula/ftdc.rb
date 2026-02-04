class Ftdc < Formula
  desc "CLI tool to download FTDC data from MongoDB Atlas clusters"
  version "0.1.5"
  homepage "https://github.com/maoertel/mongodb-ftdc"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.5/ftdc-v0.1.5-darwin-amd64.tar.gz"
    sha256 "e01473baa4d595897951fb48f5814d23a24ef5834acd9244fcc9a8fe8fb005d4"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.5/ftdc-v0.1.5-darwin-arm64.tar.gz"
    sha256 "c055fcadaf8326b8acc8319d5d71c0097b7322eec302f44518b98b249587d693"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.5/ftdc-v0.1.5-linux-amd64.tar.gz"
    sha256 "2d8f48a8eb676e63a0dd83d3a9a47c91d1a03277e4026236a436207b65a724d4"
  end
  if OS.linux? && Hardware::CPU.arm?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.5/ftdc-v0.1.5-linux-arm64.tar.gz"
    sha256 "9079c0a66600b7c7dc5660ee6a18cebe5817f35feb1311918acf5f7f7061936a"
  end

  def install
    bin.install "ftdc"
  end

  test do
    system "#{bin}/ftdc --version"
  end
end
