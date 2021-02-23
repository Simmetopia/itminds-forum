class ForumPost::NewPage < MainLayout
  needs operation : SaveForumPost
  quick_def page_title, "New forum post"

  def content
    h1 "Modify this page at ./src/pages/forum_post"
    create_form(operation)
  end

  private def create_form(op)
    form_for ForumPost::Create do
      h1 "A great form"
      mount ForumPost::FormFields, op
    end
  end
end
