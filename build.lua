---l3build config.
-- luacheck: ignore 111
-- LuaFormatter off

-- LuaFormatter on
---@diagnostic disable: lowercase-global
module = "cnlogo" -- luacheck: ignore 121
cleanfiles = {"*.curlopt"}
demofiles = {"latexmkrc", "Makefile"}
docfiles = {"*.md", "*.cfg"}
tagfiles = {"*.dtx", "build.lua", "README.md"}
sourcefiles = {"*.dtx", "*.ins", "cnlogo"}
typesetexe = "lualatex"
typesetopts =
    "-shell-escape -file-line-error -8bit -halt-on-error -interaction=nonstopmode"

local repository = "https://github.com/yuxtech/" .. module
uploadconfig = {
    announcement = "Release the package.",
    author = "Yu Xiang",
    ctanPath = "/macros/latex/contrib/" .. module,
    email = "739049687@qq.com",
    license = "agpl3+",
    pkg = module,
    summary = [[Producing logos of Chinese Colleges.]],
    uploader = "Wu Zhenyu",
    version = "2023/03/02 v0.0.1",

    bugtracker = repository .. "/issues",
    description = [[安徽大学 (ahu), 北京航空航天大学 (bhu), 北京交通大学 (bjtu), 北京邮电大学 (bjydu), 北京师范大学 (bnu), 长安大学 (chu), 中国矿业大学 (ckyu), 中南大学 (csu), 中国地质大学 (cug), 中国政法大学 (cupsl), 东北财经大学 (dbcju), 大连理工大学 (dllgu), 复旦大学 (fdu), 贵阳师范大学 (gnu), 广东外语外贸大学 (gufs), 湖北大学 (hbu), 华东师范大学 (hdsfu), 华东政法大学 (hdzfu), 合肥工业大学 (hgyu), 河海大学 (hhu), 哈尔滨工业大学 (hit), 华南理工大学 (hnlgu), 湖南师范大学 (hnnu), 湖南大学 (hnu), 华中科技大学 (hustc), 华中师范大学 (hznu), 吉林大学 (jlu), 暨南大学 (jnu), 江南大学 (ju), 兰州大学 (lzu), 中央民族大学 (muc), 南昌大学 (ncu), 东北大学 (neu), 南京大学 (nju), 南京理工大学 (njust), 南开大学 (nku), 北京大学 (pku), 中国人民大学 (ruc), 四川大学 (scu), 山东财经大学 (sdcju), 山东大学 (sdu), 上海大学 (shu), 上海交通大学 (stju), 南方科技大学 (sustc), 西南农业大学 (swau), 西南师范大学 (swcnu), 中山大学 (sysu), 深圳大学 (szu), 清华大学 (thu), 同济大学 (tju), 天津大学 (tjuu), 北京科技大学 (ustb), 中国科学技术大学 (ustc), 武汉理工大学 (whlgu), 武汉大学 (whu), 温州大学 (wzu), 西北农林科技大学 (xbnlkju), 西安电子科技大学 (xdu), 西安交通大学 (xjtu), 厦门大学 (xmu), 扬州大学 (yzu), 中国传媒大学 (zcmu), 中国海洋大学 (zhyu), 浙江大学 (zju), 中国科学院大学 (zky), 中国农业大学 (znyu), 郑州大学 (zzu)]], -- luacheck: ignore 631
    development = repository,
    home = "https://ctan.org/pkg/" .. module,
    note = [[Uploaded automatically by l3build.]],
    repository = repository,
    support = repository .. "/issues",
    topic = "std-conform;doc-templ;class;chinese;dissertation"
}

---data = {
--     ...,
--     {
--         name = "ustc",
--         chinese_name = "中国科学技术大学",
--         commands = {"\\ustclogo", "\\ustctext"},
--         colors = {"\\definecolor{ustc}{RGB}{37,74,165}"}
--     },
--     ...
-- }
---@return table
local function get_data()
    local data = {}
    -- luacheck: globals lfs
    ---@diagnostic disable-next-line: undefined-global
    for fname in lfs.dir("cnlogo") do
        if string.match(fname, "%.tex") then
            local f = io.open("cnlogo/" .. fname)
            fname = string.gsub(fname, "%.tex", "")
            local chinese_name = ''
            local commands = {}
            local colors = {}
            if f then
                local line = f:read()
                chinese_name = string.gsub(line, "^%%%s+", "")
                while line do
                    if line then
                        if string.match(line, "\\definecolor") then
                            local color = line
                            color = string.gsub(color, "%%", "")
                            table.insert(colors, color)
                        elseif string.match(line, "\\" .. fname) then
                            local command = line
                            command = string.gsub(command,
                                                  "\\NewDocumentCommand", "")
                            command = string.gsub(command, "\\newcommand", "")
                            command = string.gsub(command, "O{([^}]+)}", "[%1]")
                            command = string.gsub(command, "[{}%%]", "")
                            table.insert(commands, command)
                        end
                        line = f:read()
                    else
                        break
                    end
                end
                f:close()
            end
            local datum = {
                name = fname,
                chinese_name = chinese_name,
                commands = commands,
                colors = colors
            }
            table.insert(data, datum)
        end
    end
    table.sort(data, function(a, b) return a.name < b.name end)
    return data
end

---Get regular expression.
---@param data table
---@param template string
---@param sep string
---@return string
local function get_re(data, template, sep)
    local results = {}
    local color_template = [[
\begin{verbatim}
  COLOR
\end{verbatim}]]
    local cmd_template = [[
\begin{verbatim}
  COMMAND
\end{verbatim}

COMMAND]]
    for _, datum in ipairs(data) do
        local result = template
        result = string.gsub(result, "CHINESE_NAME", datum["chinese_name"])
        result = string.gsub(result, "NAME", datum["name"])
        if datum["colors"][1] then
            local colors = table.concat(datum["colors"], "\n  ")
            colors = string.gsub(color_template, "COLOR", colors)
            result = string.gsub(result, "COLORS", colors)
        else
            result = string.gsub(result, "\nCOLORS\n", "")
        end
        local cmds = {}
        for _, command in ipairs(datum["commands"]) do
            local cmd = string.gsub(cmd_template, "COMMAND", command)
            table.insert(cmds, cmd)
        end
        local commands = table.concat(cmds, "\n\n")
        result = string.gsub(result, "COMMANDS", commands)
        table.insert(results, result)
    end
    return "%1" .. table.concat(results, sep) .. "%2"
end

---Update code.
---@param file string
---@param content string
---@return string
local function update_code(file, content)
    local data = get_data()
    local template = [[CHINESE_NAME (NAME)]]
    local code = get_re(data, template, ", ")
    if string.match(file, "^README%.md$") then
        content = string.gsub(content, "^(目前支持：).-(。)", code, 1)
    elseif string.match(file, "^build%.lua$") then
        content = string.gsub(content, "(%s+目前支持：).-(。)", code, 1)
        content = string.gsub(content, "(%s+description = %[%[).-(%]%])", code,
                              1)
    elseif string.match(file, "^.*%.dtx$") then
        template = [[NAME]]
        code = get_re(data, template, ",")
        content =
            string.gsub(content, "(\\usepackage%[).-(%]{cnlogo})", code, 1)

        template = [[
\DeclareOption{NAME}{%%
  \input{cnlogo/NAME}
}]]
        code = get_re(data, template, "\n")
        content = string.gsub(content,
                              "(\\NeedsTeXFormat{LaTeX2e}\n).-(\n\\ProcessOptions)",
                              code, 1)

        template = [[
\subsection{CHINESE_NAME}%%
\label{ssec:NAME}

COLORS

COMMANDS
]]
        code = get_re(data, template, "\n")
        -- insert % in the begin of line
        code = string.gsub(code, "\n", "\n%%%% ")
        content = string.gsub(content,
                              "(\\label{sec:display}\n%%\n%% ).-(\n%% \\IndexPrologue{\\section{\\indexname}})",
                              code, 1)
        -- remove trailing white spaces
        content = string.gsub(content, "%s+\n", "\n")
    end
    return content
end

---l3build tag tagname.
-- replace YYYY/MM/DD vX.Y.Z
---@param file string
---@param content string
---@param tagname string
---@param tagdate string
---@return string
function update_tag(file, content, tagname, tagdate)
    tagdate = string.gsub(tagdate, "-", "/")
    content = string.gsub(content, "%d%d%d%d/%d%d/%d%d v[0-9.]+",
                          tagdate .. " v" .. tagname)
    content = update_code(file, content)
    return content
end

-- ex: nowrap
