class AppDelegate < PM::Delegate
  status_bar true, animation: :none

  def on_load(app, options)
	  open_tab_bar HomeScreen.new(nav_bar: true), HelpScreen.new(nav_bar: true), StatesScreen.new(nav_bar: true)
  end

end
