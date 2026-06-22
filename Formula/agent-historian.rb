class AgentHistorian < Formula
  desc "Search and read past AI coding-agent conversation history (ochist)"
  homepage "https://github.com/adlternative/agent-historian"
  url "https://registry.npmjs.org/agent-historian/-/agent-historian-0.6.0.tgz"
  sha256 "cd3f669c6746c02b9bc7ecf58f1651cf08186269f0b888048a133b17de77de3d"
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
