{ config, lib, pkgs, ... }:

{
  programs.nixvim.plugins = {
    # Status line
    lualine = {
      enable = true;
      settings = {
        options = {
          icons_enabled = true;
          theme = "auto";
          component_separators = { left = ""; right = ""; };
          section_separators = { left = ""; right = ""; };
          disabled_filetypes = [];
          always_divide_middle = true;
        };
        sections = {
          lualine_a = [ "mode" ];
          lualine_b = [ "branch" "diff" "diagnostics" ];
          lualine_c = [ { __unkeyed-1 = "filename"; path = 1; } ];
          lualine_x = [ "encoding" "fileformat" "filetype" ];
          lualine_y = [ "progress" ];
          lualine_z = [ "location" ];
        };
        inactive_sections = {
          lualine_a = [];
          lualine_b = [];
          lualine_c = [ "filename" ];
          lualine_x = [ "location" ];
          lualine_y = [];
          lualine_z = [];
        };
        tabline = {};
        extensions = [];
      };
    };

    # Notifications
    notify = {
      enable = true;
    };

    # Indent blankline
    indent-blankline = {
      enable = true;
    };

    # Which-key
    which-key = {
      enable = true;
    };

    # Web devicons
    web-devicons = {
      enable = true;
    };
  };
}