# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Daylight < Formula
  desc "track sunrise / sunset times for your date and location"
  homepage ""
  version "1.0.0"
  license "unlicensed"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jbreckmckye/daylight/releases/download/v1.0.0/daylight_Darwin_x86_64.tar.gz"
      sha256 "98417425fbde784c836fe5fe2cff0dab4658788543b8fe2c81a20313e8962c50"

      def install
        bin.install "daylight"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/jbreckmckye/daylight/releases/download/v1.0.0/daylight_Darwin_arm64.tar.gz"
      sha256 "69cfd6b889bad58c82178f191c7104b69f9860b2af0098c0dba0747b491b9d3a"

      def install
        bin.install "daylight"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jbreckmckye/daylight/releases/download/v1.0.0/daylight_Linux_x86_64.tar.gz"
        sha256 "b32164643e538ffd34ea59a64fc52937212dccb112d20e24b0700b9e83131285"

        def install
          bin.install "daylight"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/jbreckmckye/daylight/releases/download/v1.0.0/daylight_Linux_arm64.tar.gz"
        sha256 "1615902dc2bdb1bc3b0bf08cf2d4e5affb822a80848bf0b0c75161b2418da491"

        def install
          bin.install "daylight"
        end
      end
    end
  end

  def caveats
    <<~EOS
      daylight is very new, so be sure to check for updates and report any bugs
    EOS
  end

  test do
    daylight --help
  end
end
