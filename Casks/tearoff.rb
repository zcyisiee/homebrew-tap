cask "tearoff" do
  version "3.1.1"

  on_arm do
    sha256 "a8d7d63ee20e576db08b555724dc01221e8eab84bb98fc73f02ae37e74288318"
    url "https://github.com/zcyisiee/Tearoff/releases/download/v#{version}/Tearoff-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "3243ddd13cf4dd4aefc4b479adcac8b7d8199a82ed979368beb25d64d1d046b9"
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
