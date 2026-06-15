class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.8.6-beta.2"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.8.6-beta.3.tar.gz"
  sha256 "239f059beb725a72ec249f89c990f60e503b0797b333a18569fb64ca56b7d541"
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
