class HomeScreen < PM::Screen
  include HomeStyles

  title "Home"

  def on_load
    set_nav_bar_button :left, title: "Increment", action: :increment_tapped
    set_nav_bar_button :right, title: "Clear", action: :clear_tapped

    set_tab_bar_item({ system_icon: UITabBarSystemItemContacts })

    set_up_view
  end

  def set_up_view
    set_attributes self.view, {
      background_color: UIColor.grayColor
    }

    add UILabel.new, label_view # found in HomeStyles module

    true
  end

  def clear_tapped
    set_tab_bar_badge(nil)
  end

  def increment_tapped
    set_tab_bar_badge((self.tab_bar_item[:badge_number] || 0) + 1)
  end
end
