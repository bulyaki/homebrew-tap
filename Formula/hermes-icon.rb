class HermesIcon < Formula
  desc "Customize the Hermes desktop app icon and persist it across updates"
  homepage "https://github.com/bulyaki/hermes-icon"
  url "https://github.com/bulyaki/hermes-icon/releases/download/v0.1.3/hermes-icon-0.1.3.tar.gz"
  sha256 "0e3ff678b843980b2a33297ef9bd9be5b4fadf4f9e88d347c5e70547586fe883"
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
