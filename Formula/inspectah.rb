class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.9.0-beta.6"
  url "https://github.com/marrusl/inspectah/releases/download/v0.9.0-beta.6/inspectah-darwin-arm64"
  sha256 "dbdeb0462c100e328b7615a23a0b8fafe3d29729d5ffae581271fe38445f0ce6"
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
