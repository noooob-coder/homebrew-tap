class CliproxyImageCli < Formula
  desc "Codex-native CLI for generating and editing images through the local Codex OpenAI configuration."
  homepage "https://github.com/noooob-coder/cliproxy-image-cli"
  url "https://registry.npmjs.org/cliproxy-image-cli/-/cliproxy-image-cli-0.2.5.tgz"
  sha256 "c5ebeadc53e80f839cce2f40a161b2b043a95bc40247d4c5f75c1ef5191cda48"
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
