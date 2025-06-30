class Lbranch < Formula
  include Language::Python::Virtualenv

  desc "Git utility that shows recently checked-out branches in chronological order"
  homepage "https://github.com/dcchuck/lbranch"
  url "https://files.pythonhosted.org/packages/source/l/lbranch/lbranch-0.1.2.tar.gz"
  sha256 "cf7ea50c19751256e7f068be4a37d89deb32870ee0c64ff5b50ce12855030cce"
  license "MIT"

  depends_on "python3"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/lbranch", "--version"
  end
end
