local _M = {}

function _M.config()
    require('avante').setup {
        provider = "openai",
        auto_suggestions_provider = "openai",
        openai = {
            endpoint = "https://api.openai.com/v1",
            model = "gpt-4o-mini",
            timeout = 30000,
            temperature = 0,
            max_tokens = 4096,
        },
        vendors = {
            deepseek = {
                __inherited_from = "openai",
                api_key_name = "DEEPSEEK_API_KEY",
                endpoint = "https://api.deepseek.com",
                model = "deepseek-coder",
            }
        }
    }
end

return _M