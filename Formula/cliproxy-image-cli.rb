class CliproxyImageCli < Formula
  desc "Generate and edit images through CLIProxyAPI"
  homepage "https://github.com/noooob-coder/cliproxy-image-cli"
  url "https://registry.npmjs.org/cliproxy-image-cli/-/cliproxy-image-cli-0.1.0.tgz"
  sha256 "4009f31f30208b638d64b5ffbbca2c156b3d3e2167c8eb70cd6729d4f766ea4e"
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
