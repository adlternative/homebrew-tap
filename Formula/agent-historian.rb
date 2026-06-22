class AgentHistorian < Formula
  desc "Search and read past AI coding-agent conversation history (ochist)"
  homepage "https://github.com/adlternative/agent-historian"
  url "https://registry.npmjs.org/agent-historian/-/agent-historian-0.5.1.tgz"
  sha256 "e64ab4c6039b874c37483a2a4b1e450b6ae920070ee52f9862f05b2bab139ac3"
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
