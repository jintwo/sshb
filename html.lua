local default_tags = {
    'html', 'head', 'title', 'body',
    'form', 'input', 'img', 'a', 'div',
    'script'
}

local h = {
    default_tags = default_tags,
    import = function(tags)
        if not tags then
            tags = default_tags
        end
        for _, tag in ipairs(tags) do
            if _G[tag] then
                error(string.format("function '%s' already exists", tag))
            else
                _G[tag] = h[tag]
            end
        end
    end
}

setmetatable(h, {
    __index = function(self, tag_name)
        return function (params)
            local content = ''
            local attrs = ''

            for key, node in pairs(params) do
                if type(key) == 'string' then
                    attrs = attrs .. ' ' .. tostring(key) .. "='" .. tostring(node) .. "'"
                else
                    content = content ..  node
                end
            end

            return string.format(
                '<%s%s>%s</%s>',
                tag_name, attrs, content, tag_name)
        end
    end
})

return h
