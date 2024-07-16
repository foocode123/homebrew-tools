class FoocodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "2.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_arm64.tar.gz"
      sha256 "490cdcc53eda40898aa9c5c5109c5e943ff6d172e0e27750ee96ec407e0d045d"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_x86.tar.gz"
      sha256 "df237451ccf7286bfcbb2e8a5e877bce2b161fee17a2880e608e123e29954874"
    end

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_linux_x86.tar.gz"
    sha256 "f6380812204a4d4241f6ee5a6a858bdaece0cbf3e70ab42a52b8559b8c4b887e"

    def install
      bin.install "veracode"
    end
  end

  test do
    system "#{bin}/veracode", "version"
  end
end
