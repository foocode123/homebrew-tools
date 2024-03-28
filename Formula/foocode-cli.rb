class VeracodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "1.0.48"
  license "MIT"

  on_macos do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.48_macosx_arm64.tar.gz"
    sha256 "f04bafe166f4b8b93a029524214bc36c4950d540aa12c3b1be4ad911d74b5944"

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.48_linux_x86.tar.gz"
      sha256 "3972e1abd3290604b82ca62da4f3b4bfe3eff0471b123ba7d22df9ce31aa9d25"

      def install
        bin.install "veracode"
      end
    fi
    if Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.48_linux_x86.tar.gz"
      sha256 "3972e1abd3290604b82ca62da4f3b4bfe3eff0471b123ba7d22df9ce31aa9d25"

      def install
        bin.install "veracode"
      end
    fi
  end

  test do
    system "#{bin}/veracode --version"
  end
end
