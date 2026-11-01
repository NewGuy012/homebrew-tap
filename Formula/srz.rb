class Srz < Formula
  desc "Fast, modular CLI to summarize webpages, documents, books, and live news using local LLMs"
  homepage "https://github.com/NewGuy012/srz"
  version "0.7.1"

  on_macos do
    on_arm do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "1a49320acc8850a488e30837d884a0456c04a3c68712d3fe83084b676a80a2b1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89c4cfbb4343f46251d88d69c0cd426523a087d5a57d22bb15a83e6734c0745e"
    end
    on_arm do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6b3fb712fcb90a995ffe6885925bd1f8009bc37d1a0ebd3f56a6f6ed84770e32"
    end
  end

  def install
    bin.install "srz"
    generate_completions_from_executable(bin/"srz", "completions")
  end

  test do
    assert_match "srz", shell_output("#{bin}/srz --version")
  end
end
