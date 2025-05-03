class Lbranch < Formula
  include Language::Python::Virtualenv
  
  desc "Git utility that shows recently checked-out branches in chronological order"
  homepage "https://github.com/dcchuck/lbranch"
  url "https://files.pythonhosted.org/packages/source/l/lbranch/lbranch-0.1.0.tar.gz"
  sha256 "YOUR_PACKAGE_SHA256"
  license "MIT"
  
  depends_on "python3"
  
  def install
    virtualenv_install_with_resources
  end
  
  test do
    system "#{bin}/lbranch", "--version"
  end
end
