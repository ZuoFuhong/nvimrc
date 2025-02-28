local _M = {}

function _M.config()
    require 'avante'.setup {
        provider = "openai",
        auto_suggestions_provider = "openai",
        openai = {
            endpoint = "https://api.openai.com/v1",
            model = "gpt-4o-mini",
            timeout = 30000,
            temperature = 0,
            max_tokens = 4096,
        },
    }
end

return _M