class Sibac < Formula
  desc "SIBA Code: coding agent for your terminal"
  homepage "https://code.siba.az"
  url "https://github.com/aghasalim/sibac/archive/8019ed0d3a1e4f1108e66bf88169d93409a8c02b.tar.gz"
  version "0.2.3"
  sha256 "9d17d3776e2644d790c806bb37629518d10bf4b7d6323bebfa2a0243e22e8eff"
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
