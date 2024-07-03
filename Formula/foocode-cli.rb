class FoocodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "2.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_arm64.tar.gz"
      sha256 "ec04c3445ef86be0ba121fc860c90a18769a5be29d87321b2da37ad8bc80fbf1"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_x86.tar.gz"
      sha256 "5e2a6da79d3e60ba06811df0ed08555fdfa0cc69e5d0a49e4eaa3adf1bdb3b1c"
    end

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_linux_x86.tar.gz"
    sha256 "fd3744870d47895f4946e06ba26a8a0fbb6da3f397ddc6a32014dc989acb7cd6"

    def install
      bin.install "veracode"
    end
  end

  test do
    system "#{bin}/veracode", "version"
  end
end
