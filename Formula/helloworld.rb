# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Helloworld < Formula
  desc "You use the Veracode CLI to perform various actions for testing the security of your applications."
  homepage "https://www.veracode.com"
  version "1.0.39"
  license "MIT"

  on_macos do
    url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.39_macosx_arm64.tar.gz"
    sha256 "7333e0ef46e5464f077c8c54ae93269d83c77905c58576440f416d21bc6d42ea"

    def install
      bin.install "helloworld"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.39_linux_x86.tar.gz"
      sha256 "d09f1d16a7c3d89ea173250b37757bc6734f48dd69991831d6f41667cfcfc96d"

      def install
        bin.install "helloworld"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://tools.veracode.com/veracode-cli/veracode-cli_1.0.39_linux_x86.tar.gz"
      sha256 "233be2ea49d3edb44bcbb354f7aa44871c3a3de41182e2e4e482b307c0a25ec6"

      def install
        bin.install "helloworld"
      end
    end
  end

  test do
    system "#{bin}/helloworld --version"
  end
end
