class Okteto < Formula
    desc "CLI for cloud native development"
    homepage "https://okteto.com"
    url "https://github.com/okteto/okteto/releases/download/1.8.15/okteto-Darwin-x86_64"
    sha256 "0233387a34a86cd3456baeca0c8e13105fffe67d8f5f756ef17fd6dd57efb6f3"
    version "1.8.15"
    
    head do
        url "https://downloads.okteto.com/cli/master/okteto-Darwin-x86_64"
    end
    
    def install
        bin.install "okteto-Darwin-x86_64"
        mv bin/"okteto-Darwin-x86_64", bin/"okteto"
    end

    # Homebrew requires tests.
    test do
        assert_match "okteto version 1.8.15", shell_output("#{bin}/okteto version 2>&1", 0)
    end
end
