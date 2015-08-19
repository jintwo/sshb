Simple stupid HTML builder in LUA
=================================

```lua
local h = require('html')
h.import() -- import default tags
h.import 'canvas' -- or h.import { 'canvas', ... } import custom tags

local data = html {
    head {
        title 'title'
    },
    body {
        div {
            'content',
            a { href = '/link/to' },
            canvas { attr = 'value' }
        }
    }
}
```
