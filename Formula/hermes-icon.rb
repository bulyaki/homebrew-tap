class HermesIcon < Formula
  desc "Customize the Hermes desktop app icon and persist it across updates"
  homepage "https://github.com/bulyaki/hermes-icon"
  url "https://github.com/bulyaki/hermes-icon/releases/download/v0.1.2/hermes-icon-0.1.2.tar.gz"
  sha256 "170616fb4c723d55dab5863428f958e022170cde7491b5aa5c19a25a69963dde"
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
