-- This file was automatically generated for the LuaDist project.

package = "lua-llthreads2"
version = "0.1.1-1"
-- LuaDist source
source = {
  tag = "0.1.1-1",
  url = "git://github.com/LuaDist-testing/lua-llthreads2.git"
}
-- Original source
-- source = {
--   url = "https://github.com/moteus/lua-llthreads2/archive/v0.1.1.zip",
--   dir = "lua-llthreads2-0.1.1",
-- }
description = {
  summary = "Low-Level threads for Lua",
  homepage = "http://github.com/moteus/lua-llthreads2",
  license = "MIT/X11",
  detailed = [[
    This is drop-in replacement for `lua-llthread` module but the module called `llthreads2`.
    In additional module supports: thread join  with zero timeout; logging thread errors with 
    custom logger; run detached joinable threads; pass cfunctions as argument to child thread.
  ]],
}
dependencies = {
  "lua >= 5.1, < 5.3",
}
build = {
  type = "builtin",
  platforms = {
    unix = {
      modules = {
        llthreads2 = {
          libraries = {"pthread"},
        }
      }
    },
    windows = {
      modules = {
        llthreads2 = {
          libraries = {"kernel32"},
        }
      }
    }
  },
  modules = {
    llthreads2 = {
      sources = { "src/l52util.c", "src/llthread.c" },
      defines = { "LLTHREAD_MODULE_NAME=llthreads2" },
    }
  }
}