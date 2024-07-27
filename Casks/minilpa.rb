cask "minilpa" do
    version "1.1.0"
    sha256 :no_check

    arch arm: "aarch64", intel: "x86_64"
    url "https://github.com/EsimMoe/MiniLPA/releases/download/v#{version}/MiniLPA-macOS-#{arch}.dmg"
    name "MiniLPA"
    desc "Professional LPA UI"
    homepage "https://github.com/EsimMoe/MiniLPA"

    depends_on macos: ">= Catalina"

    app "MiniLPA.app"

    uninstall quit:      "moe.sekiu.MiniLPA",
              launchctl: "moe.sekiu.MiniLPA"

    zap trash: [
        "~/.minilpa"
    ]
end