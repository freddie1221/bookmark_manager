require 'bookmark'

describe Bookmark do
  let(:name) { "MyFirstBookmark" }
  let(:url) { "www.google.co.uk" }
  let(:bookmark) { described_class.new(name, url) }

  describe '.all' do
    it 'returns an array with hardcoded bookmark info' do
      # b1 = Bookmark.new("MyFirstBookmark", "www.google.co.uk")
      Bookmark.new("SecondBookmark", "www.bbc.co.uk/news")
      expect(Bookmark.all).to eq ["www.google.co.uk", "www.bbc.co.uk/news"]
    end
  end

  describe '#name' do
    it 'returns the name of the bookmark' do
      expect(bookmark.name).to eq "MyFirstBookmark"
    end
    it 'returns the url of the bookmark' do
      expect(bookmark.url).to eq "www.google.co.uk"
    end
  end



end
