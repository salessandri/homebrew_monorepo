class YarnBinary < Formula
    desc "JavaScript package manager, binary install (without any dependencies)."
    homepage "https://github.com/yarnpkg/yarn"
    url "https://github.com/yarnpkg/yarn/releases/download/v1.1.0/yarn-v1.1.0.tar.gz"
    sha256 "171c1f9ee93c488c0d774ac6e9c72649047c3f896277d88d0f805266519430f3"

    bottle :unneeded

    conflicts_with "yarn"

    def install
        libexec.install Dir["*"]
        bin.install_symlink "#{libexec}/bin/yarn.js" => "yarn"
        bin.install_symlink "#{libexec}/bin/yarn.js" => "yarnpkg"
        inreplace "#{libexec}/package.json", '"installationMethod": "tar"', '"installationMethod": "homebrew"'
    end

    def caveats; <<-EOS.undent
        This formula differs from the original one,
        as it doesn't have any dependencies,
        and is downloading tarball from github instead of official site.
        EOS
    end
end
