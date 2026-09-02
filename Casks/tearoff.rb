cask "tearoff" do
  version "3.0.0"

  on_arm do
    sha256 "cbb94df3f900b68001d0499a78ad2005f33faf6650c75b67ac211430d5e44807"
    url "https://github.com/zcyisiee/Tearoff/releases/download/v#{version}/Tearoff-v#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "1355d2d1d4d14e949fe6362b105434a6074f24da550779da821dfb33e2925bcb"
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
