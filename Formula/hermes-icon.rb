class HermesIcon < Formula
  desc "Customize the Hermes desktop app icon and persist it across updates"
  homepage "https://github.com/bulyaki/hermes-icon"
  url "https://github.com/bulyaki/hermes-icon/releases/download/v0.1.5/hermes-icon-0.1.5.tar.gz"
  sha256 "1ef8a16bb3c80f0f1dfee2b8b2e11a6b99a3a48b49e46b04eb867c553b12234a"
  license "MIT"
  head "https://github.com/bulyaki/hermes-icon.git", branch: "main"

  depends_on :macos

  def install
    libexec.install "bin", "src", "run.py"
    bin.install_symlink libexec/"bin/hermes-icon"
  end

  test do
    assert_match "hermes-icon #{version}", shell_output("#{bin}/hermes-icon --version")
  end
end
