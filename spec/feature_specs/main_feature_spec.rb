feature 'homepage' do
  it 'shows hello world' do
    visit('/')
    expect(page).to have_content 'Hello world'
  end
end

feature 'bookmarks' do
  it 'shows me my bookmarks' do
    visit '/bookmarks'
    expect(page).to have_content 'My Bookmarks'
  end
end
