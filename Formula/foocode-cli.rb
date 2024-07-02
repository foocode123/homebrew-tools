class FoocodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "2.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_arm64.tar.gz"
      sha256 "99265aa85c0e26f2f4dc6d5c9b5fb0e102db793b16a8e4aef16e3073a7644ec4"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_x86.tar.gz"
      sha256 "b3b7e85beac14bce086db2b57f6796601c6b1c63b44ac0a861217701edf6c935"
    end

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_linux_x86.tar.gz"
    sha256 "8ae82fbe484698d84bd9bee814ea37c44486fa558b7e3f313127514190c6a904"

    def install
      bin.install "veracode"
    end
  end

  test do
    system "#{bin}/veracode", "--version"
  end
end
