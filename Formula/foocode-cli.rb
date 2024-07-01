class FoocodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "2.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_arm64.tar.gz"
      sha256 "5d5ce9bccb7c24b5fbb902b52232cc3137299dcf7b61022f4c2f89628dca0d28"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_x86.tar.gz"
      sha256 "2ce1c19724e2f3b1a83b4d6896677f5d409fd6f988a2902ddb9c95b31c6c2a1b"
    end

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_linux_x86.tar.gz"
    sha256 "f148d3a0d03d8bc41b66ed7302519495d36dc90da670dd473b6d8cc1f71d5d0c"

    def install
      bin.install "veracode"
    end
  end

  test do
    system "#{bin}/veracode", "--version"
  end
end
