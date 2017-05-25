@NopontoFavorites =
  toggle_favorite: (favorite_id, is_favorite) ->
    $.ajax "/favorites/toggle_favorite",
    type: 'POST'
    data: { favorite_id: favorite_id, is_favorite: is_favorite }
    dataType: 'json'
    success: (response) ->
      favorite_element = $("#toggle-favorite-line[data-favoriteId='#{response.favorite_id}']")

      if response.status == "success"
        favorite_element.attr("data-isfavorite", response.is_favorite)

      else
        favorite_element.attr("data-isfavorite", response.is_favorite)
