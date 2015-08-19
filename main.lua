#!/usr/bin/env lua
h = require('html')
h.import()

local data = html {
    head {
        title { 'hello' },
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
