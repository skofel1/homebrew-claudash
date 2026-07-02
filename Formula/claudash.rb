# typed: false
# frozen_string_literal: true

class Claudash < Formula
  desc "TUI dashboard for Claude Code — k9s-style sessions viewer"
  homepage "https://github.com/skofel1/claudash"
  version "1.6.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/skofel1/homebrew-claudash/releases/download/v1.6.1/claudash_1.6.1_darwin_amd64.tar.gz"
      sha256 "2e18fc1bbecb136db8e9bc83086fa2103fa6a498c3820b2e00291b4ce059fcf8"
    end
    on_arm do
      url "https://github.com/skofel1/homebrew-claudash/releases/download/v1.6.1/claudash_1.6.1_darwin_arm64.tar.gz"
      sha256 "541c10e6e5c9ff437f407b2e693fa098131f1af66096b5c4b38b8e7cceb129fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/skofel1/homebrew-claudash/releases/download/v1.6.1/claudash_1.6.1_linux_amd64.tar.gz"
      sha256 "1523aa5db54520cd4b549583e7727bd0188126201bc415400b1a6900e1d01309"
    end
    on_arm do
      url "https://github.com/skofel1/homebrew-claudash/releases/download/v1.6.1/claudash_1.6.1_linux_arm64.tar.gz"
      sha256 "eaaf4f6f5ce7a065d2a4829ae81c436350cd3bddd60271610b88dc43b3566734"
    end
  end

  def install
    bin.install "claudash"
  end

  test do
    system "#{bin}/claudash", "version"
  end
end
