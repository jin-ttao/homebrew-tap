class Resumer < Formula
  include Language::Python::Virtualenv

  desc "Browse & resume your Claude Code / Codex sessions with fzf"
  homepage "https://github.com/jin-ttao/resumer"
  url "https://github.com/jin-ttao/resumer/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "017327c5eef26652179c5ecfde84aaa81e78c554ab140c5d2e09115b7b51d89d"
  license "MIT"

  depends_on "fzf"
  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "usage: resumer", shell_output("#{bin}/resumer --help")
  end
end
