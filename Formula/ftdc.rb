class Ftdc < Formula
  desc "Command line tool to download FTDC data from mongodb clusters."
  version "0.1.4"
  homepage "https://github.com/maoertel/mongodb-ftdc"
  license "MIT"

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.4/ftdc-v0.1.4-darwin-amd64.tar.gz"
    sha256 "a38e47c25ae31037c96cc5bce73b238f49fdfa9aaaf54a3df7c2a53d5bb23772"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.4/ftdc-v0.1.4-darwin-arm64.tar.gz"
    sha256 "fddef523c39df3fff52b1a4db215eebfa6624428629b9fb967d5c4e37922b900"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/maoertel/mongodb-ftdc/releases/download/v0.1.4/ftdc-v0.1.4-linux-amd64.tar.gz"
    sha256 "a77f56ad6bb198feeace2e24bc3dc82f317778b718919d44e6fda53d8b660479"
  end

  def install
    bin.install "ftdc"
  end

  test do
    system "#{bin}/ftdc --version"
  end
end
