class Mdrenum < Formula
  desc "Keep numbered, reference-style Markdown links in sequential order"
  homepage "https://github.com/dce/mdrenum"
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-macos-arm64.tar.gz"
      sha256 "f566ea4acf7f3e661639587c2b200410f629032f764b89c118b1eed723639ba7"
    else
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-macos-x64.tar.gz"
      sha256 "761ac5443b9beb44f79f1ae609a1ea958839e95aa1e338f24ce849694f670fae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-linux-arm64.tar.gz"
      sha256 "df1b80ed0c27e622c80d7c59b7c862736a7c100ca2e68ff65e846768f30bf672"
    else
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-linux-x64.tar.gz"
      sha256 "5e7669d7c83c73761799e9c43a3f010d17e6bd75bf051fc4108f7ba4b5e1fbaa"
    end
  end

  def install
    bin.install "mdrenum"
  end

  test do
    system "#{bin}/mdrenum", "--version"
  end
end
