class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.9.0-beta.8"
  url "https://github.com/marrusl/inspectah/releases/download/v0.9.0-beta.8/inspectah-darwin-arm64"
  sha256 "14773777087d0c98d82dbc73461a8171ac8bfcf2c26f6ba29abb6541c516e224"
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
