local saga = require 'lspsaga'
saga.init_lsp_saga({
  code_action_lightbulb = {
    enable = true,
    virtual_text=false
  }
})
