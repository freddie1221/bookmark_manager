require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/bookmarks' do
    name = "MyFirstBookmark"
    url = "www.google.co.uk"
    @b1 = Bookmark.new("MyFirstBookmark", "www.google.co.uk")
    @b2 = Bookmark.new("SecondBookmark", "www.bbc.co.uk/news")
    @b_all = Bookmark.all
    erb :bookmarks
  end

end
