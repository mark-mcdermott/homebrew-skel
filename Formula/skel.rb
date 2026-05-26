class Skel < Formula
  desc "Create files and directories from an indented tree"
  homepage "https://github.com/mark-mcdermott/skel"
  url "https://github.com/mark-mcdermott/skel/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "1429826eec3fc33d8361963a36d44528a0297bd12202758686a5aa9ab1aaaef7"
  license "MIT"

  def install
    bin.install "skel.sh" => "skel"
  end

  test do
    (testpath/"structure.txt").write("README.md\n")
    system "#{bin}/skel < #{testpath}/structure.txt"
    assert_predicate testpath/"README.md", :exist?
  end
end
