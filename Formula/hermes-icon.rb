class HermesIcon < Formula
  desc "Customize the Hermes desktop app icon and persist it across updates"
  homepage "https://github.com/bulyaki/hermes-icon"
  url "https://github.com/bulyaki/hermes-icon/releases/download/v0.1.4/hermes-icon-0.1.4.tar.gz"
  sha256 "d14f4be2bf46ce29eba4e7ff4bbaa4b8d7e4b3eff90123598b67f5b0161719ce"
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
