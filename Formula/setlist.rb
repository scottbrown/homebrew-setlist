# frozen_string_literal: true

VERSION = '1.2.1'
PACKAGE = 'setlist'
REPO = "https://github.com/scottbrown/#{PACKAGE}"

# Homebrew formula
class SetList < Formula
  desc 'Command line tool to automatically generate a .aws/config file based on AWS SSO rules in your org.'
  homepage REPO
  license 'MIT'
  version VERSION

  def self.prefix
    "#{REPO}/releases/download/v#{VERSION}/#{PACKAGE}_v#{VERSION}"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "#{prefix}_darwin_arm64.tar.gz"
      sha256 '45fa14e559f798caf5b9da7b2da0100c42f04baed49303957a228e4a330b41fe'
    else
      url "#{prefix}_darwin_amd64.tar.gz"
      sha256 '80b95fc848fab691951bed6232201b49c5c08f2aaae876972bbcd8eb0b816561'
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "#{prefix}_linux_arm64.tar.gz"
      sha256 '2ce64b67eb433a24376e9cd0e8214713bf32e26a50603132768e78e55fce9650'
    else
      url "#{prefix}_linux_amd64.tar.gz"
      sha256 '224febba42434890c2f320cca9f4f8ebc4fa56a2291a174dced94cdbe5436850'
    end
  end

  def install
    bin.install PACKAGE
  end

  test do
    system "#{bin}/#{PACKAGE}", '--help'
  end
end
