module MoviesHelper
  def render_movie_description
    simple_format(movie.description)
  end
end
