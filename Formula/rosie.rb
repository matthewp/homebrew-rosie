class Rosie < Formula
  desc "A robot helper for agent skills"
  homepage "https://github.com/matthewp/rosie"
  url "https://github.com/withastro/rosie/archive/refs/tags/v0.8.5.tar.gz"
  sha256 "d7c3944d90f75e66530742a5132c44dfb296b704541dc465d82e71439584776e"
  license "BSD-3-Clause"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args(path: ".")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/rosie --version").strip
  end
end
