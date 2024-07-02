class FoocodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "2.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_arm64.tar.gz"
      sha256 "e91726845969c812358e6973ade4d3d891eabd935c0c5ea971c96aa81605d071"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_x86.tar.gz"
      sha256 "eebe8854fefa7c52a8f0b8f7ad7ffcd17df8317f41b84a9bcd2c9ae96ee8d367"
    end

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_linux_x86.tar.gz"
    sha256 "0dd81f8b5bcb509c95a2fc8d79d6b179bd7fb892ce37d79ed16e45796d81f9c6"

    def install
      bin.install "veracode"
    end
  end

  test do
    system "#{bin}/veracode", "--version"
  end
end
