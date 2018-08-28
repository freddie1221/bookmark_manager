

feature 'homepage' do
  it 'shows hello world' do
    visit('/')
    expect(page).to have_content 'Hello world'
  end
end