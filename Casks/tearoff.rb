cask "tearoff" do
  version "4.1.0"

  on_arm do
    sha256 "fe92d6e53bc4fd372d6adc29867ec3a9a4b22d26ddbda2646407cc2a36a64e20"
    url "https://github.com/zcyisiee/Tearoff/releases/download/v#{version}/Tearoff-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "05314af9ddf6e71595893f18797b8208eea4c890ee233bd175dec684b2949f7b"
    url "https://github.com/zcyisiee/Tearoff/releases/download/v#{version}/Tearoff-v#{version}-x86_64.dmg"
  end

  name "Tearoff"
  desc "Native macOS side-panel Markdown notes app"
  homepage "https://github.com/zcyisiee/Tearoff"

  depends_on macos: :sequoia

  app "Tearoff.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/Tearoff.app"]
  end
end
