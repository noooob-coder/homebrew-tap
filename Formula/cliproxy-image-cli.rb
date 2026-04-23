class CliproxyImageCli < Formula
  desc "Codex-native CLI for generating and editing images through the local Codex OpenAI configuration."
  homepage "https://github.com/noooob-coder/cliproxy-image-cli"
  url "https://registry.npmjs.org/cliproxy-image-cli/-/cliproxy-image-cli-0.2.1.tgz"
  sha256 "b4d18e6df8646bcf82d2d4b56802bc459a2adc7a6177445e36702b5d1b1b659e"
  license "MIT"
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink libexec.glob("bin/*")
  end

  test do
    assert_match "Generate or edit images", shell_output("#{bin}/cliproxy-image-cli --help")
  end
end
