class CliproxyImageCli < Formula
  desc "Generate and edit images through CLIProxyAPI"
  homepage "https://github.com/noooob-coder/cliproxy-image-cli"
  url "https://registry.npmjs.org/cliproxy-image-cli/-/cliproxy-image-cli-0.1.0.tgz"
  sha256 "997311c36d8d7da352380016f34303084a833e3bd7ba7bffe93974dc6b9411be"
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
