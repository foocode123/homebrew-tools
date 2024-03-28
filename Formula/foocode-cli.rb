class VeracodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "1.0.45"
  license "MIT"

  on_macos do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.45_macosx_arm64.tar.gz"
    sha256 ""

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.45_linux_x86.tar.gz"
      sha256 ""

      def install
        bin.install "veracode"
      end
    fi
    if Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.45_linux_x86.tar.gz"
      sha256 ""

      def install
        bin.install "veracode"
      end
    fi
  end

  test do
    system "#{bin}/veracode --version"
  end
end
