class Sibac < Formula
  desc "SIBA Code: coding agent for your terminal"
  homepage "https://siba.az"
  url "https://github.com/aghasalim/sibac/archive/7d3206d96e0cdb3576964d7f29973b2fd5bd5b43.tar.gz"
  version "0.2.0"
  sha256 "3cb3739aabd1633327d701b578326beb7d6c96054f1e986ef86d516345f4ce71"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/sibac --version")
  end
end
