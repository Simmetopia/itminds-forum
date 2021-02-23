class Me::ShowPage < MainLayout
  def content
    h1 "This is your profile"
    render_signed_in_user
    helpful_tips
  end

  private def helpful_tips
    div class: "p-3 bg-gray-300 rounded shadow" do
    link to: ForumPost::New do
      button "New post", class: "p-1 rounded shadow bg-blue-300 hover:bg-blue-500 text-white"
    end
      ul do
        li { link_to_authentication_guides }
        li "Modify this page: src/pages/me/show_page.cr"
        li "Change where you go after sign in: src/actions/home/index.cr"
      end
    end
  end

  private def link_to_authentication_guides
    a "Check out the authentication guides",
      href: "https://luckyframework.org/guides/authentication"
  end

  private def render_signed_in_user
    text current_user.email
    text " - "
    link "Sign out", to: SignIns::Delete, flow_id: "sign-out-button"
  end
end
