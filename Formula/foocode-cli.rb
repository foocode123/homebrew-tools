class FoocodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "2.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_arm64.tar.gz"
      sha256 "f5e6f915a8ce8ac921d053e63510aba47935244ab49f9e06223c5678c2947b58"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_x86.tar.gz"
      sha256 "8550e90a5c6a50c2e022847aa5d3b39dd8c3ab18ba0e5ca057ac54199c5f818e"
    end

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_linux_x86.tar.gz"
    sha256 "445345d135abddb27cf731e0f5e34c8e71bd6976c99ab900cfe7239eeb7f1179"

    def install
      bin.install "veracode"
    end
  end

  test do
    system "#{bin}/veracode", "--version"
  end
end
