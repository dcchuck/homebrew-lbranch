class Lbranch < Formula
  include Language::Python::Virtualenv

  desc "Git utility that shows recently checked-out branches in chronological order"
  homepage "https://github.com/dcchuck/lbranch"
  url "https://files.pythonhosted.org/packages/source/l/lbranch/lbranch-0.1.3.tar.gz"
  sha256 "62f6b12cf5881c63b55597cd9c8527fb6e4e51ea061668a276cc52629a559115"
  license "MIT"

  depends_on "python3"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/lbranch", "--version"
  end
end
