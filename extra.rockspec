-- luacheck: ignore 111
---@diagnostic disable: undefined-global, lowercase-global
build_dependencies = { "luatex", "latex-base" }

build = {
  type = 'l3build'
}
