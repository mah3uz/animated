module GifsHelper
  def linked_tag_list(gif)
    list = gif.tags.map do |tag|
      link_to tag.name, gif_by_tag_path(tag: tag.name),
              :class => "py-1 px-3 shadow-md no-underline rounded-full bg-green-500 text-gray-700 text-xs shadow border-green btn-primary hover:text-white hover:bg-green-400 focus:outline-none active:shadow-none mr-2"
    end

    safe_join(list)
  end
end
