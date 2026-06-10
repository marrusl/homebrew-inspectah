class Inspectah < Formula
  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.8.6-beta.1.tar.gz"
  sha256 "5cc11397f9f0630c49c63dbfdb1ea1f4c7681c8af2b18ef96848ea2f33f2be75"
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
