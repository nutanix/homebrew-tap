# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubectlKarbon < Formula
  desc "Kubectl extension to quickly connect to an existing karbon cluster!"
  homepage "https://github.com/nutanix/kubectl-karbon"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nutanix/kubectl-karbon/releases/download/v0.10.0/kubectl-karbon_v0.10.0_darwin_arm64.tar.gz"
      sha256 "6934e338ac35f13ad5d3e0e9a2e5020dd67b01cc29d1a958ee94f85abb381ccc"

      def install
        bin.install "kubectl-karbon"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/nutanix/kubectl-karbon/releases/download/v0.10.0/kubectl-karbon_v0.10.0_darwin_amd64.tar.gz"
      sha256 "1a06aa417b54e7531fd9a42358c60477ea24dd11b426ac0bc57e1d8cd66bb527"

      def install
        bin.install "kubectl-karbon"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/nutanix/kubectl-karbon/releases/download/v0.10.0/kubectl-karbon_v0.10.0_linux_amd64.tar.gz"
      sha256 "13c8dffd5d4b9ebf8b5f4f1cdec4ac0aceb09bb98dd31739d1b4059d66cddece"

      def install
        bin.install "kubectl-karbon"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/nutanix/kubectl-karbon/releases/download/v0.10.0/kubectl-karbon_v0.10.0_linux_arm64.tar.gz"
      sha256 "fe647f85a9bd0a2449c35e81d9d544af0fb74a3da983f6fb9d93ea3bec05de85"

      def install
        bin.install "kubectl-karbon"
      end
    end
  end

  test do
    system "kubectl-karbon version"
  end
end
