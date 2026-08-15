class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.8.6-beta.5"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.9.0-beta.1.tar.gz"
  sha256 "69e088749aac54a5619f2c4135dd3602d132d2a05e5034d3d6d51ae76e9497cf"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "inspectah-darwin-arm64" => "inspectah"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inspectah version")
  end
end
