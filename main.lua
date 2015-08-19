#!/usr/bin/env lua
h = require('html')
h.import()
h.import('canvas') -- h.import { 'canvas', ... }

local data = html {
    head {
        title 'hello',
        script { src = '/path/to/script' }
    },
    body {
        div {
            a {
                href = '/link/to/something',
                img { src = '/path/to/img' }
            }
        },
        div {
            a { href = '/link2/to/something' },
            canvas { attr = 'value' }
        },
        form {
            method = 'post',
            input {
                type = 'text',
                name = 'text'
            }
        }
    }
}

print(data)
