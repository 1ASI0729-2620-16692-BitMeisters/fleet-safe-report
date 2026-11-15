local function html_blocks(text)
  return pandoc.read(text, 'html').blocks
end

function RawBlock(el)
  if el.format == 'html' then
    return html_blocks(el.text)
  end
end

function RawInline(el)
  if el.format ~= 'html' then return nil end
  local tag = el.text:lower()
  if tag:match('^<img') then
    local blocks = html_blocks(el.text)
    if blocks[1] and blocks[1].content then return blocks[1].content end
  elseif tag:match('^<br') then
    return pandoc.LineBreak()
  elseif tag:match('^<span') or tag:match('^</span') or tag:match('^<a ') or tag:match('^</a>') then
    return {}
  end
end

function Link(el)
  local anchor = el.target:match('%.md(#.+)$')
  if anchor then
    el.target = anchor
    return el
  end
  if el.target:match('%.md$') then
    return el.content
  end
end

function Para(el)
  local text = pandoc.utils.stringify(el)
  if text:match('^←') or text:match('→%s*$') then
    local links = 0
    for _, inline in ipairs(el.content) do
      if inline.t == 'Link' then links = links + 1 end
    end
    if links >= 2 then return {} end
  end
end