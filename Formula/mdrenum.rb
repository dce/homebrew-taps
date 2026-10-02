class Mdrenum < Formula
  desc "Keep numbered, reference-style Markdown links in sequential order"
  homepage "https://github.com/dce/mdrenum"
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-macos-arm64.tar.gz"
      sha256 "6a050850583e7b254b2afead69a6776514fe51a1a75617b6c2855c353c3aa70d"
    else
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-macos-x64.tar.gz"
      sha256 "2f6c66ddcebae36d363fcee52923ab0da0e10c47b3387f7b1636c390828d7d7f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-linux-arm64.tar.gz"
      sha256 "2597cd9bd7eb20272661331c19e806ca7f46ef8691df4d73c0daae6d26f776ea"
    else
      url "https://github.com/dce/mdrenum/releases/download/v#{version}/mdrenum-linux-x64.tar.gz"
      sha256 "b2241af7329e7a6a7772df1c065ec6e2ade90a8ab640f6e37cf7cd3132ff56ad"
    end
  end

  def install
    bin.install "mdrenum"
  end

  test do
    system "#{bin}/mdrenum", "--version"
  end
end
