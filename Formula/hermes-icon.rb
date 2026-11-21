class HermesIcon < Formula
  desc "Customize the Hermes desktop app icon and persist it across updates"
  homepage "https://github.com/bulyaki/hermes-icon"
  url "https://github.com/bulyaki/hermes-icon/releases/download/v0.1.10/hermes-icon-0.1.10.tar.gz"
  sha256 "6fa99adcd3e72a8f4d8519d6fe880f8262598acab30dc4a0a2963076a4d500fc"
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
