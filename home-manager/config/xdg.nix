{
  xdg.configFile = {
    "Kvantum/kvantum.kvconfig".text = ''
      [General]
      theme=KvGnomeDark
    '';
    "fontconfig/fonts.conf".text = ''
      <?xml version='1.0'?>
      <!DOCTYPE fontconfig SYSTEM 'fonts.dtd'>
      <fontconfig>
        <alias>
          <family>sans-serif</family>
          <prefer>
            <family>Fira Sans</family>
            <family>Noto Sans</family>
            <family>Noto Sans Arabic UI</family>
            <family>Arial</family>
            <family>Helvetica</family>
            <family>Noto Sans CJK</family>
            <family>DejaVu Sans</family>
          </prefer>
        </alias>
        <alias>
          <family>serif</family>
            <prefer>
              <family>Noto Serif</family>
              <family>Noto Sans Arabic UI</family>
              <family>Times New Roman</family>
              <family>Georgia</family>
              <family>Noto Serif CJK</family>
              <family>DejaVu Serif</family>
            </prefer>
        </alias>
        <alias>
          <family>monospace</family>
            <prefer>
              <family>JetBrains Mono</family>
              <family>Noto Sans Mono</family>
              <family>Fira Code</family>
              <family>Courier New</family>
              <family>DejaVu Sans Mono</family>
            </prefer>
        </alias>
        <alias>
          <family>emoji</family>
            <prefer>
              <family>Noto Color Emoji</family>
              <family>Twemoji</family>
              <family>Segoe UI Emoji</family>
              <family>Apple Color Emoji</family>
            </prefer>
        </alias>
        <match>
          <test name="family"><string>Arial</string></test>
          <edit name="family" mode="assign" binding="strong">
            <string>Fira Sans</string>
          </edit>
        </match>
        <match>
          <test name="family"><string>Helvetica</string></test>
          <edit name="family" mode="assign" binding="strong">
            <string>Fira Sans</string>
          </edit>
        </match>
        <match>
          <test name="family"><string>Times New Roman</string></test>
          <edit name="family" mode="assign" binding="strong">
            <string>Noto Serif</string>
          </edit>
        </match>
        <match>
          <test name="family"><string>Courier New</string></test>
          <edit name="family" mode="assign" binding="strong">
            <string>JetBrains Mono</string>
          </edit>
        </match>
      </fontconfig>
    '';
  };
}
