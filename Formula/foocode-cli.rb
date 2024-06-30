class veracodeCli < Formula
  desc "You use the veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "3.1.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_3.1.5_macosx_arm64.tar.gz"
      sha256 "d77b2aa19842b67f4b5a509300b6afbe7c8fbb934afbd932392b1fd457756fb2"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_3.1.5_macosx_x86.tar.gz"
      sha256 "68bdf646faeebe0a97e41e83d65c00b7812b87a54b62b3aae865a3b5ca768c0b"
    end

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_3.1.5_linux_x86.tar.gz"
      sha256 "96d76c6cac0d8f4d216131f0a51882f421e1c018a70a189d333dcb1b35638810"

      def install
        bin.install "veracode"
      end
    fi
    if Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_3.1.5_linux_x86.tar.gz"
      sha256 "96d76c6cac0d8f4d216131f0a51882f421e1c018a70a189d333dcb1b35638810"

      def install
        bin.install "veracode"
      end
    fi
  end

  test do
    system "#{bin}/veracode --version"
  end
end
