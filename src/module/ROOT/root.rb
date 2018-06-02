def get_user_fullname
  'marcus chiu'
  # session['cas']['extra_attributes']['firstName'] + ' ' + session['cas']['extra_attributes']['lastName']
end

#top level runner
settings.nav_bar['Top Level'] = {
  'Home' => '/',
}

# splash page
get '/' do
  template_vars = {
    :header_vars => {
      :logged_in_user => get_user_fullname,
      :logout_service_url => URI.escape(request.url),
      :nav_bar => settings.nav_bar
    },
    :body_vars => {
      :title_of_page => 'Splash Page'
    },
    :footer_vars => {}
  }

  erb :root, :views => File.expand_path('..', __FILE__), :locals => template_vars
end

not_found do
  "Sorry, #{request.path_info} is not a thing, but <a href=\"/\">Home</a> should be"
end