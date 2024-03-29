class Movie
  attr_reader :link, :name, :year, :country, :release, :genre, :runtime, :rate, :director, :actors
  def initialize(movie_array)
    @link = movie_array[0]
    @name = movie_array[1]
    @year = movie_array[2].split(',')
    @country = movie_array[3].split(',')
    @release = movie_array[4]
    @genre = movie_array[5].split(',')
    @runtime = movie_array[6]
    @rate = movie_array[7]
    @director = movie_array[8].split(',')
    @actors = movie_array[9].split(',')
  end

  def to_s
    "Link: #{@link} // #{@name} - #{@year} - #{@country} -(#{@release}) -
    #{@genre} - (#{@runtime}) - #{@rate} - #{@director} - #{@actors}"
  end

  def matches?(key, value)
    Array(send(key)).any? { |v| value == v }
  end
end
