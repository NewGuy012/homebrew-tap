class Srz < Formula
  desc "Fast, modular CLI to summarize webpages, documents, books, and live news using local LLMs"
  homepage "https://github.com/NewGuy012/srz"
  version "0.7.9"

  on_macos do
    on_arm do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "0b8cc9320a89acf25767ea92e3e626ba8890db58c6f73455dbcfb211648207c2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "29314da79cd50072c5ce84e3bdb8f823de225fccba09690f6ba3294f750bda55"
    end
    on_arm do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ae36b500f4a627fd180313afb62888bdbf8b0d3644f57da87a70e2e4753e7cb4"
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
