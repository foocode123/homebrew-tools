class VeracodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "1.0.46"
  license "MIT"

  on_macos do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.46_macosx_arm64.tar.gz"
    sha256 "561494740443cc1cc0973daad4e6f93d05e147fb7d74e1d71668b43e5eb828de"

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.46_linux_x86.tar.gz"
      sha256 "fca024b8b9095881446882515ea334fa4ecc858a0dae3b9e1ccd9f1360643896"

      def install
        bin.install "veracode"
      end
    fi
    if Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.46_linux_x86.tar.gz"
      sha256 "fca024b8b9095881446882515ea334fa4ecc858a0dae3b9e1ccd9f1360643896"

      def install
        bin.install "veracode"
      end
    fi
  end

  test do
    system "#{bin}/veracode --version"
  end
end
