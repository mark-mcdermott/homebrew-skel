class Skel < Formula
  desc "Create files and directories from an indented tree"
  homepage "https://github.com/mark-mcdermott/skel"
  url "https://github.com/mark-mcdermott/skel/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "d769729fa4a17c1375c86f5eb69efa0ecd38b737b9b866350e34cf34014b0780"
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
