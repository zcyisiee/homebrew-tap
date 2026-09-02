cask "tearoff" do
  version "3.0.0"

  on_arm do
    sha256 "6ef5403bc3c33b21432f813a8eabea0e6aa322b899e5b36ce7db629db33822a9"
    url "https://github.com/zcyisiee/Tearoff/releases/download/v#{version}/Tearoff-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "e3877c28ee89e4e81a2b2a19403b9a523c48fc2636d2e60c0e90f42dff4ce8f9"
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
