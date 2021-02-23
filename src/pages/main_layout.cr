abstract class MainLayout
  include Lucky::HTMLPage
  needs current_user : User

  abstract def content
  abstract def page_title

  def page_title
    "Welcome"
  end

  def render
    html_doctype

    html lang: "en" do
      mount Shared::LayoutHead, page_title: page_title, context: context

      body do
        mount Layout::Header, current_user: current_user
        mount Shared::FlashMessages, context.flash
        div class: "flex w-full bg-gray-200 root-container justify-center" do
          div class: "xl:w-3/4 p-3 w-full" do
            content
          end
        end
      end
    end
  end
end
