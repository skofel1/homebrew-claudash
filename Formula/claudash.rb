# typed: false
# frozen_string_literal: true

class Claudash < Formula
  desc "TUI dashboard for Claude Code — k9s-style sessions viewer"
  homepage "https://github.com/skofel1/claudash"
  version "1.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/skofel1/homebrew-claudash/releases/download/v1.6.0/claudash_1.6.0_darwin_amd64.tar.gz"
      sha256 "8a44606af2e0485bb8d908db43c20e7dfa2e295d32908db3c64d2fbe4128c906"
    end
    on_arm do
      url "https://github.com/skofel1/homebrew-claudash/releases/download/v1.6.0/claudash_1.6.0_darwin_arm64.tar.gz"
      sha256 "af672fc01bd73e4950e2bcf6ff53f1b93877a98b0d67a16b33eef431558e48cc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/skofel1/homebrew-claudash/releases/download/v1.6.0/claudash_1.6.0_linux_amd64.tar.gz"
      sha256 "40461ddbdb7860d4429b3465c95d09ea58a63d97bdc4e826b912db9ad08a01ef"
    end
    on_arm do
      url "https://github.com/skofel1/homebrew-claudash/releases/download/v1.6.0/claudash_1.6.0_linux_arm64.tar.gz"
      sha256 "f3c64ee694c1ecb307c136c2103521e053500ff3826892a1038d3f85452a7a7f"
    end
  end

  def install
    bin.install "claudash"
  end

  test do
    system "#{bin}/claudash", "version"
  end
end
