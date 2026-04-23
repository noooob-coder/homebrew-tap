class CliproxyImageCli < Formula
  desc "Codex-native CLI for generating and editing images through the local Codex OpenAI configuration."
  homepage "https://github.com/noooob-coder/cliproxy-image-cli"
  url "https://registry.npmjs.org/cliproxy-image-cli/-/cliproxy-image-cli-0.2.3.tgz"
  sha256 "a2397b9a25aeeabb53fc1540f4a3878080eabdfad52a9eada95408e7a07c9afc"
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
