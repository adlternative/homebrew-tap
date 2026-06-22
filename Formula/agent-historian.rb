class AgentHistorian < Formula
  desc "Search and read past AI coding-agent conversation history (ochist)"
  homepage "https://github.com/adlternative/agent-historian"
  url "https://registry.npmjs.org/agent-historian/-/agent-historian-0.5.0.tgz"
  sha256 "d7ebc51a3014291cdf01a71d554d4336c971886c1aa934e117b35342e1800fb7"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ochist --version")
    assert_match "OpenCode", shell_output("#{bin}/ochist sources")
  end
end
