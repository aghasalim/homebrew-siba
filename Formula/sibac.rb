class Sibac < Formula
  desc "SIBA Code: coding agent for your terminal"
  homepage "https://siba.az"
  url "https://github.com/aghasalim/sibac/archive/aa286f801c86c9730c684da1d9f206926eedb9c8.tar.gz"
  version "0.1.0"
  sha256 "6a9cac78e030179d09f32a70e1265379c3f0fc8381737bd750b0016871d237bf"
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
