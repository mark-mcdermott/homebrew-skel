class Skel < Formula
  desc "Create files and directories from an indented tree"
  homepage "https://github.com/mark-mcdermott/skel"
  url "https://github.com/mark-mcdermott/skel/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "87808213ef098d63e42b138578ccc435d237365a0fe37e641f453a0f2618f942"
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
