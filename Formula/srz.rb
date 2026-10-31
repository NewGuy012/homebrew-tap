class Srz < Formula
  desc "Fast, modular CLI to summarize webpages, documents, books, and live news using local LLMs"
  homepage "https://github.com/NewGuy012/srz"
  version "0.6.2"

  on_macos do
    on_arm do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "dd201ddcb7fb4df9b739aaf5ddac728b5e8f6c4f35817f4c6401216c5d87be67"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b5e416624d70178166a9b0399e90de2fbd17945871b5e77fba8e411ae2a30e39"
    end
    on_arm do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f86c9053a0c65ce0278920f06461f4fc8d5006b54d9847e1ab20d6b730c32b7"
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
