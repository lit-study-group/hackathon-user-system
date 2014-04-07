module UsersHelper
  def twitter_link(username)
    url = "https://twitter.com/#{username}"
    link_to url, class: 'block' do
      ('<span class="icon twitter"></span>' + username).html_safe
    end
  end
end
