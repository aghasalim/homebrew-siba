class Sibac < Formula
  desc "SIBA Code: coding agent for your terminal"
  homepage "https://code.siba.az"
  url "https://github.com/aghasalim/sibac/archive/e2b64f7cc73d7921cec3c929ee46c7198347edca.tar.gz"
  version "0.2.2"
  sha256 "16d71d04698b0f16c226ca573f8a9252ddee9c4fecbc7969098dac46f6144236"
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
