class Srz < Formula
  desc "Fast, modular CLI to summarize webpages, documents, books, and live news using local LLMs"
  homepage "https://github.com/NewGuy012/srz"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "58bea8418235ef06e4a26aee0da133d01f3ec73b8a43ce8f9dcc495943d131bf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38cb18e1a53961f86945cd4caa7d272249d9c050cc0674e9513b35341d31dce2"
    end
    on_arm do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc961fa4374fb1c13fe045a5a3461589395857eef5439058cb34a86e7c1e8ba9"
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
