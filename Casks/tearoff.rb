cask "tearoff" do
  version "4.3.0"

  on_arm do
    sha256 "7abe2d514512d78f333598af583f1f2e6d9684bee8ef2d32db9bf4b8b2edcd3f"
    url "https://github.com/zcyisiee/Tearoff/releases/download/v#{version}/Tearoff-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "280632a2b6a1070254512b01d94932e566c1db50f4ac513e94a6233b95e92d6c"
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
