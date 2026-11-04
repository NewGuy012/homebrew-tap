class Srz < Formula
  desc "Fast, modular CLI to summarize webpages, documents, books, and live news using local LLMs"
  homepage "https://github.com/NewGuy012/srz"
  version "0.7.2"

  on_macos do
    on_arm do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "5ee781f52953db5bc031fbc3f24b69a8c49e13e5ff5635698da88deb4b347eba"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "23ce5f63be7a5aae672722f3e1255f3310a51e7d587599c40a4560564f64e274"
    end
    on_arm do
      url "https://github.com/NewGuy012/srz/releases/download/v#{version}/srz-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "52d6279954f5adadbe965f996c2b249ed5d02bc4cdd8960c8d700940ac5a2bc6"
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
