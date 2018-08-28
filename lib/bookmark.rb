class Bookmark

  @b_all = []

attr_reader :name, :url

  def self.all
    ["www.google.co.uk", "www.bbc.co.uk/news"]
  end

  def initialize(name, url)
    @name = name
    @url = url
  end

end
