local home = os.getenv('HOME')
local db = require('dashboard')

db.custom_header = {
   [[]],
   [[]],
   [[           ▀████▀▄▄              ▄█    ]],
   [[             █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█    ]],
   [[     ▄        █          ▀▀▀▀▄  ▄▀     ]],
   [[    ▄▀ ▀▄      ▀▄              ▀▄▀     ]],
   [[   ▄▀    █     █▀   ▄█▀▄      ▄█       ]],
   [[   ▀▄     ▀▄  █     ▀██▀     ██▄█      ]],
   [[    ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █     ]],
   [[     █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀     ]],
   [[    █   █  █      ▄▄           ▄▀      ]],
   [[]],
   [[]],
}

db.custom_center = {
    {
        icon = '  ',
        desc = 'Find  File     ',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
    },

    {
        icon = '  ',
        desc = 'Find  word    ',
        action = 'Telescope live_grep',
    },

    {
        icon = '  ',
        desc = 'Recent  Files ',
        action = 'Telescope live_grep',
    },

    {
        icon = '  ',
        desc = 'Open  config  ',
        action = 'edit ~/.config/nvim/init.lua',
    }
}
