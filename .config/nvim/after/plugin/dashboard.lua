require('dashboard').setup {
    config = {
        header = {
            [[                                                          ]],
            [[                                                          ]],
            [[  ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗  ]],
            [[  ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║  ]],
            [[  ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║  ]],
            [[  ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║  ]],
            [[  ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║  ]],
            [[  ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝  ]],
            [[                                                          ]],
        },
        shortcut = {
            {
                desc = '󰊳 Update',
                group = '@property',
                action = 'Lazy update',
                key = 'u'
            },
            {
                icon = '🔍',
                icon_hl = '@variable',
                desc = 'Files',
                group = 'Label',
                action = 'Telescope find_files',
                key = 'f',
            },
            {
                desc = '🩺Check Health',
                group = 'Title',
                action = 'checkhealth nvim',
                key = 'c',
            },
            {
                desc = '⚙️ Config',
                group = 'DiagnosticHint',
                action = 'edit ~/.config/nvim/',
                key = 'e',
            },
      },
        footer = {
            [[                       ]],
            [[🚀  Do you even Vim bro?  🤯]]
        }
   }
}
