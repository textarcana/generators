# write a link using sensible defaults that will apply to 99 out of
# 100 links

def link text, url, title=text

  title_as_token = title.gsub(/\s/, '_').gsub(/[^(\w\d)]+/, '_')

  s = %{<a href="#{url}" }
  s << %{id="#{title_as_token}_L" }
  s << %{title="#{title}"}
  s << %{>#{text}</a>}

end


def utube embed_text

  tweaked_embed = embed_text

  tweaked_embed = embed_text.gsub /"425"|"344"/, %{"620"}

  return tweaked_embed

end
