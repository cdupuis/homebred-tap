class ScoutCli < Formula
  desc "Docker Scout CLI"
  homepage "https://github.com/docker/scout-cli"
  version "0.20.0"
  version_scheme 1

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/docker/scout-cli/releases/download/v0.20.0/docker-scout_0.20.0_darwin_arm64.tar.gz"
    sha256 "45cf9324c5dc39ff242b4fef0cacdf9c1fd5f3db74cb2aa7079f6482e6d47049"
  elsif OS.mac?
    url "https://github.com/docker/scout-cli/releases/download/v0.20.0/docker-scout_0.20.0_darwin_amd64.tar.gz"
    sha256 "8e5ea749c2b22586ea6489dcedc89be6ba9bfcab4ee0024c34b7111a34bb7744"
  elsif OS.linux? && Hardware::CPU.arm?
    url "https://github.com/docker/scout-cli/releases/download/v0.20.0/docker-scout_0.20.0_linux_arm64.tar.gz"
    sha256 "c77a2ce7152e6ff95061ac15b704ad29cf88ebf5e499528af77e883007e4b9a4"
  elsif OS.linux?
    url "https://github.com/docker/scout-cli/releases/download/v0.20.0/docker-scout_0.20.0_linux_amd64.tar.gz"
    sha256 "6892c1a32d499902c3daf02ad4c60a70543174ce9d3ebb1f5a34dec5ec76fc58"
  end

  def install
    bin.install "docker-scout"
    system "ln", "-sf", "/opt/homebrew/bin/docker-scout", "$HOME/.docker/cli-plugins/docker-scout"
  end
  
end
