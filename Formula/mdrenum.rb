class Mdrenum < Formula
  desc "Keep numbered, reference-style Markdown links in sequential order"
  homepage "https://github.com/dce/mdrenum"
  version "0.1.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-macos-arm64.tar.gz"
      sha256 "cd886462f6d558200449a1ecc6c6d38a7cb03a0b48d90b2c672ebefe07997e1a"
    else
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-macos-x64.tar.gz"
      sha256 "a89e47715d05b75955aa64fc0bc1258d03b7c436a6ae52b976afc53a6e1b58dd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-linux-arm64.tar.gz"
      sha256 "d570c75679fa2bd3d412bfa9237845a7e7bae29f80b6936e1a19e58eb3b89a3f"
    else
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-linux-x64.tar.gz"
      sha256 "658e41902e9b37fde1cea32251f6c4596b86d3f01570c889f074b956b7f801d5"
    end
  end

  def install
    bin.install "mdrenum"
  end

  test do
    system "#{bin}/mdrenum", "--version"
  end
end
