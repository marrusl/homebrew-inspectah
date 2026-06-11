class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.8.6-beta.2"
  url "https://github.com/marrusl/inspectah/releases/download/v0.8.6-beta.2/inspectah-darwin-arm64"
  sha256 "408cc5f6a1f347eac3c32ce412ddad47def42189b3f2bcae7e069da71b3043f9"
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
