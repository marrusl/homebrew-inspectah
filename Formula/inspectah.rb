class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "f47d4c98c5cecb44c86746ad62766fd2443fe298d8336d52ae60d26053289e73"
  license "MIT"

  depends_on "go" => :build

  def install
    cd "cmd/inspectah" do
      ldflags = %W[
        -s -w
        -X main.version=#{version}
        -X main.commit=v#{version}
        -X main.date=#{time.iso8601}
      ]
      system "go", "build", *std_go_args(ldflags:), "-mod=vendor"
    end
  end

  test do
    output = shell_output("#{bin}/inspectah version")
    assert_match "inspectah wrapper", output
  end
end
