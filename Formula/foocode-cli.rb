class FoocodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "2.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_arm64.tar.gz"
      sha256 ""
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_x86.tar.gz"
      sha256 ""
    end

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_linux_x86.tar.gz"
    sha256 ""

    def install
      bin.install "veracode"
    end
  end

  test do
    system "#{bin}/veracode", "--version"
  end
end
