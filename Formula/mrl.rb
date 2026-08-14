# typed: false
# frozen_string_literal: true

class Mrl < Formula
  desc "ModelRelay CLI for running and testing AI agents"
  homepage "https://modelrelay.ai"
  version "5.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-darwin-arm64.tar.gz"
      sha256 "45d327e7b916a7c57ef3522ec90c77735cbfa8a781447a2d1a990d73f89635cd"
    end
    on_intel do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-darwin-amd64.tar.gz"
      sha256 "3bf68451bdc711520ef8acfaef9400897aeb5c6437439f0086c205df07014e63"
    end
  end

  on_linux do
    on_arm do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-linux-arm64.tar.gz"
      sha256 "6505836c782745b2ba380ba15b22ce28b33d861e2d5c4c662d84c1019f09f5f4"
    end
    on_intel do
      url "https://releases.modelrelay.ai/mrl/#{version}/mrl-#{version}-linux-amd64.tar.gz"
      sha256 "ab996a5c49a9657a9b474aa8c82e92cf1c1fdf6e854efae9c805e83f859b4aca"
    end
  end

  def install
    bin.install "mrl"
  end

  test do
    assert_match "mrl #{version}", shell_output("#{bin}/mrl --version")
  end
end
