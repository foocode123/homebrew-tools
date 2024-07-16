class FoocodeCli < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "2.26.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_arm64.tar.gz"
      sha256 "f280736ee99355697ddff55cc000e0baa65d7af60e2de4fb8f44e41e81eaf827"
    elsif Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_macosx_x86.tar.gz"
      sha256 "a733cc861fa8cd2c7ba34636f4fc473ea9599ad9297c906e3f7679afa26f34ea"
    end

    def install
      bin.install "veracode"
    end
  end

  on_linux do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_2.26.0_linux_x86.tar.gz"
    sha256 "eb36b0848f41b29da17ddab72fbc95d76f499a51f5bb0ccae03634fd3efd728e"

    def install
      bin.install "veracode"
    end
  end

  test do
    system "#{bin}/veracode", "version"
  end
end
