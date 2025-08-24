{
  xdg.configFile = {
    "rofi/config.rasi".text = ''
      configuration {
        modi: "drun";
        show-icons: true;
        display-drun: "Applications";
        drun-display-format: "{name}";
      }
      * {
        background: #1E1D2FFF;
        background-alt: #282839FF;
        foreground: #D9E0EEFF;
        selected: #7AA2F7FF;
        active: #ABE9B3FF;
        urgent: #F28FADFF;
        font: "JetBrains Mono Nerd Font 10";
      }
      window {
        transparency: "real";
        location: center;
        anchor: center;
        fullscreen: false;
        width: 700px;
        x-offset: 0px;
        y-offset: 0px;
        enabled: true;
        margin: 0px;
        padding: 0px;
        border: 0px solid;
        border-radius: 16px;
        border-color: @selected;
        background-color: @background;
        cursor: "default";
      }
      mainbox {
        enabled: true;
        spacing: 10px;
        margin: 0px;
        padding: 30px;
        border: 0px solid;
        border-radius: 0px 0px 0px 0px;
        border-color: @selected;
        background-color: transparent;
        children: [ "inputbar", "listview" ];
      }
      inputbar {
        enabled: true;
        spacing: 0px;
        margin: 0px;
        padding: 0px;
        border: 0px solid;
        border-radius: 16px;
        border-color: @selected;
        background-color: @background-alt;
        text-color: @foreground;
        children: [ "prompt", "entry" ];
      }
      prompt {
        enabled: true;
        padding: 12px;
        border-radius: 16px;
        background-color: @selected;
        text-color: @background;
      }
      textbox-prompt-colon {
        enabled: true;
        expand: false;
        str: "::";
        background-color: inherit;
        text-color: inherit;
      }
      entry {
        enabled: true;
        padding: 12px;
        background-color: inherit;
        text-color: inherit;
        cursor: text;
        placeholder: "Search...";
        placeholder-color: inherit;
      }
      listview {
        enabled: true;
        columns: 2;
        lines: 7;
        cycle: true;
        dynamic: true;
        scrollbar: false;
        layout: vertical;
        reverse: false;
        fixed-height: true;
        fixed-columns: true;    
        spacing: 10px;
        margin: 0px;
        padding: 0px;
        border: 0px solid;
        border-radius: 0px;
        border-color: @selected;
        background-color: transparent;
        text-color: @foreground;
        cursor: "default";
      }
      scrollbar {
        handle-width: 5px ;
        handle-color: @selected;
        border-radius: 0px;
        background-color: @background-alt;
      }
      element {
        enabled: true;
        spacing: 10px;
        margin: 0px;
        padding: 5px;
        border: 0px solid;
        border-radius: 16px;
        border-color: @selected;
        background-color: @background;
        text-color: @foreground;
        cursor: pointer;
      }
      element normal.normal {
        background-color: @background-alt;
        text-color: @foreground;
      }
      element alternate.normal {
        background-color: @background-alt;
        text-color: @foreground;
      }
      element selected.normal {
        border: 0px 5px 0px 5px;
        border-radius: 16px;
        border-color: @selected;
        background-color: @background-alt;
        text-color: @selected;
      }
      element-icon {
        padding: 0px 0px 0px 10px;
        background-color: transparent;
        text-color: inherit;
        size: 32px;
        cursor: inherit;
      }
      element-text {
        background-color: transparent;
        text-color: inherit;
        highlight: inherit;
        cursor: inherit;
        vertical-align: 0.5;
        horizontal-align: 0.0;
      }
      error-message {
        padding: 15px;
        border: 2px solid;
        border-radius: 16px;
        border-color: @selected;
        background-color: @background;
        text-color: @foreground;
      }
      textbox {
        background-color: @background;
        text-color: @foreground;
        vertical-align: 0.5;
        horizontal-align: 0.0;
        highlight: none;
      }
    '';
    "rofi/config-power.rasi".text = ''
      configuration {
        show-icons: false;
      }
      * {
        background: #1E2127FF;
        background-alt: #282B31FF;
        foreground: #FFFFFFFF;
        selected: #61AFEFFF;
        active: #98C379FF;
        urgent: #E06C75FF;
        font: "JetBrains Mono Nerd Font 10";
      }
      window {
        transparency: "real";
        location: center;
        anchor: center;
        fullscreen: false;
        width: 605px;
        x-offset: 0px;
        y-offset: 0px;
        enabled: true;
        margin: 0px;
        padding: 0px;
        border: 0px solid;
        border-radius: 4px;
        border-color: @selected;
        cursor: "default";
        background-color: @background;
      }
      mainbox {
        enabled: true;
        spacing: 10px;
        margin: 0px;
        padding: 20px;
        border: 0px solid;
        border-radius: 0px;
        border-color: @selected;
        background-color: transparent;
        children: [ "inputbar", "message", "listview" ];
      }
      inputbar {
        enabled: true;
        spacing: 10px;
        margin: 0px;
        padding: 0px;
        border: 0px;
        border-radius: 0px;
        border-color: @selected;
        background-color: transparent;
        text-color: @foreground;
        children: [ "textbox-prompt-colon", dummy, "prompt"];
      }
      dummy {
        background-color: transparent;
      }
      textbox-prompt-colon {
        enabled: true;
        expand: false;
        str: "";
        padding: 10px 14px;
        border-radius: 4px;
        background-color: @urgent;
        text-color: @background;
      }
      prompt {
        enabled: true;
        padding: 10px;
        border-radius: 4px;
        background-color: @active;
        text-color: @background;
      }
      message {
        enabled: true;
        margin: 0px;
        padding: 10px;
        border: 0px solid;
        border-radius: 4px;
        border-color: @selected;
        background-color: @background-alt;
        text-color: @foreground;
      }
      textbox {
        background-color: inherit;
        text-color: inherit;
        vertical-align: 0.5;
        horizontal-align: 0.5;
        placeholder-color: @foreground;
        blink: true;
        markup: true;
      }
      error-message {
        padding: 10px;
        border: 0px solid;
        border-radius: 0px;
        border-color: @selected;
        background-color: @background;
        text-color: @foreground;
      }
      listview {
        enabled: true;
        columns: 5;
        lines: 1;
        cycle: true;
        dynamic: true;
        scrollbar: false;
        layout: vertical;
        reverse: false;
        fixed-height: true;
        fixed-columns: true;
        spacing: 10px;
        margin: 0px;
        padding: 0px;
        border: 0px solid;
        border-radius: 0px;
        border-color: @selected;
        background-color: transparent;
        text-color: @foreground;
        cursor: "default";
      }
      element {
        enabled: true;
        spacing: 0px;
        margin: 0px;
        padding: 10px;
        border: 0px solid;
        border-radius: 4px;
        border-color: @selected;
        background-color: @background-alt;
        text-color: @foreground;
        cursor: pointer;
      }
      element-text {
        background-color: transparent;
        text-color: inherit;
        cursor: inherit;
        vertical-align: 0.5;
        horizontal-align: 0.5;
      }
      element selected.normal {
        border: 0px 2px 0px 2px;
        border-radius: 4px;
        background-color: var(selected);
        text-color: var(background);
      }
    '';
  }
}
