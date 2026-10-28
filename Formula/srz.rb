class Srz < Formula
  desc "Fast, modular CLI to summarize webpages, documents, books, and live news using local LLMs"
  homepage "https://github.com/NewGuy012/srz"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "<SHA256_ARM64>"
    else
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "<SHA256_INTEL>"
    end
  end

  on_linux do
    url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "<SHA256_LINUX>"
  end

  def install
    bin.install "srz"
  end

  test do
    assert_match "srz", shell_output("#{bin}/srz --version")
  end
end
