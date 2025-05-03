class Lbranch < Formula
  include Language::Python::Virtualenv

  desc "Git utility that shows recently checked-out branches in chronological order"
  homepage "https://github.com/dcchuck/lbranch"
  url "https://files.pythonhosted.org/packages/source/l/lbranch/lbranch-0.1.0.tar.gz"
  sha256 "357b4c59ec528bd5b03dbb37e083cb8a2ce7cba8721990f3d6f43e7026c31f2c"
  license "MIT"

  depends_on "python3"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/lbranch", "--version"
  end
end
