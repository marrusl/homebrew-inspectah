class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.8.6-beta.5"
  url "https://github.com/marrusl/inspectah/releases/download/v0.8.6-beta.5/inspectah-darwin-arm64"
  sha256 "852ff611d7e283c0a2d3f014570562e9c5a89c0adcf473dab99cf711494e7ff1"
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
