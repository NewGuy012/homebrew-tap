class Srz < Formula
  desc "Fast, modular CLI to summarize webpages, documents, books, and live news using local LLMs"
  homepage "https://github.com/NewGuy012/srz"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "4985db79d1c9f01580c39f8450a8ebfe86c5d47d13e3d45933c3d457b2e1274a"
    end
  end

  on_linux do
    url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "20615736444651986655446734872d3ad22af7fc134df43ef8a045912cbe2091"
  end

  def install
    bin.install "srz"
  end

  test do
    assert_match "srz", shell_output("#{bin}/srz --version")
  end
end
