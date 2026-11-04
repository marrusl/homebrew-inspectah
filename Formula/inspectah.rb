class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  version "0.9.0-beta.3"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.9.0-beta.4.tar.gz"
  sha256 "949b7d5bc1b98bb58494415e8ed7a14730ba43f5ded2feea50293e316df740d5"
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
