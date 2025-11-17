class Mdrenum < Formula
  desc "Keep numbered, reference-style Markdown links in sequential order"
  homepage "https://github.com/dce/mdrenum"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-macos-arm64.tar.gz"
      sha256 "85c33a9e385f0a09ab78201819c74430af5f77bcc7764f4acb437f7b3055877c"
    else
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-macos-x64.tar.gz"
      sha256 "39c7f8f600c20aea141221717dbe7274763f174e095b333a0bd6ad0539898ad8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-linux-arm64.tar.gz"
      sha256 "771d99e7378bba028d1c268e0db895fcdb6a2b5cf4483022271846f9b6e87a70"
    else
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-linux-x64.tar.gz"
      sha256 "d20209ed71cdebb6d400364a452ed1a6125ba6c950080c5688d3d02aac52f465"
    end
  end

  def install
    bin.install "mdrenum"
  end

  test do
    system "#{bin}/mdrenum", "--version"
  end
end
