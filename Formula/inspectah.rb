class Yoinkc < Formula
  include Language::Python::Virtualenv

  desc "Inspect RHEL/CentOS hosts and produce bootc image artifacts"
  homepage "https://github.com/marrusl/inspectah"
  url "https://github.com/marrusl/inspectah/archive/refs/tags/v0.5.1.tar.gz"
  sha256 "f47d4c98c5cecb44c86746ad62766fd2443fe298d8336d52ae60d26053289e73"
  license "MIT"

  depends_on "python@3.13"
  depends_on "rust" => :build

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "jinja2" do
    url "https://files.pythonhosted.org/packages/df/bf/f7da0350254c0ed7c72f3e33cef02e048281fec7ecec5f032d4aac52226b/jinja2-3.1.6.tar.gz"
    sha256 "0137fb05990d35f1275a587e9aee6d56da821fc83491a0fb838183be43f66d6d"
  end

  resource "markupsafe" do
    url "https://files.pythonhosted.org/packages/7e/99/7690b6d4034fffd95959cbe0c02de8deb3098cc577c67bb6a24fe5d7caa7/markupsafe-3.0.3.tar.gz"
    sha256 "722695808f4b6457b320fdc131280796bdceb04ab50fe1795cd540799ebe1698"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/09/e5/06d23afac9973109d1e3c8ad38e1547a12e860610e327c05ee686827dc37/pydantic-2.13.2.tar.gz"
    sha256 "b418196607e61081c3226dcd4f0672f2a194828abb9109e9cfb84026564df2d1"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/43/bb/4742f05b739b2478459bb16fa8470549518c802e06ddcf3f106c5081315e/pydantic_core-2.46.2.tar.gz"
    sha256 "37bb079f9ee3f1a519392b73fda2a96379b31f2013c6b467fe693e7f2987f596"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/72/94/1a15dd82efb362ac84269196e94cf00f187f7ed21c242792a923cdb1c61f/typing_extensions-4.15.0.tar.gz"
    sha256 "0cea48d173cc12fa28ecabc3b837ea3cf6f38c6d1136f85cbaaf598984861466"
  end

  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/55/e3/70399cb7dd41c10ac53367ae42139cf4b1ca5f36bb3dc6c9d33acdb43655/typing_inspection-0.4.2.tar.gz"
    sha256 "ba561c48a67c5958007083d386c3295464928b01faa735ab8547c5692e87f464"
  end

  def install
    virtualenv_install_with_resources

    bash_completion.install "completions/inspectah.bash" => "inspectah"
    zsh_completion.install "completions/inspectah.zsh" => "_inspectah"
    fish_completion.install "completions/inspectah.fish"
  end

  test do
    output = shell_output("#{bin}/inspectah --help")
    assert_match "inspect", output
  end
end
