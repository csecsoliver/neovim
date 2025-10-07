
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end


local packer_bootstrap = ensure_packer()


return require('packer').startup(function(use)


    use 'wbthomason/packer.nvim'
    use 'wakatime/vim-wakatime'
    use 'nvim-telescope/telescope.nvim'
    use 'NMAC427/guess-indent.nvim'
    use {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    }
    use 'williamboman/mason-lspconfig.nvim'
    use {
        "zbirenbaum/copilot.lua",
        requires = {
            "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
        },
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
                require("copilot").setup({})
        end,
    }
    
    

    if packer_bootstrap then
        require('packer').sync()
    end

    

end)
