class Sibac < Formula
  desc "SIBA Code: coding agent for your terminal"
  homepage "https://code.siba.az"
  url "https://github.com/aghasalim/sibac/archive/3c36aef5aaaec8729195c8d36821cd417f17fe2a.tar.gz"
  version "0.2.1"
  sha256 "77801285363ab96d0ce7fcca105fdacc09fe9f3f13831eb0b93bc056c4b2a649"
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
