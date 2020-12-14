module GifsHelper
  def linked_tag_list(gif)
    list = gif.tags.map do |tag|
      link_to tag.name, root_path(tag: tag.name)
    end

    safe_join(list, ", ")
  end
end
