class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.8.6-beta.2"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.8.6-beta.5.tar.gz"
  sha256 "c596257adb4896da0a49b6f31bbec6ff47b937deed29c522f52e9a8583f08741"
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
