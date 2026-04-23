class CliproxyImageCli < Formula
  desc "Codex-native CLI for generating and editing images through the local Codex OpenAI configuration."
  homepage "https://github.com/noooob-coder/cliproxy-image-cli"
  url "https://registry.npmjs.org/cliproxy-image-cli/-/cliproxy-image-cli-0.2.6.tgz"
  sha256 "e8db803be423a5b31f950fe2e1a5027f73ee44501aa0b28f924f160b9cd35b6c"
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
