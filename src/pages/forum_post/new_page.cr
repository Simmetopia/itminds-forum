class ForumPost::NewPage < MainLayout
  needs operation : SaveForumPost
  quick_def page_title, "New forum post"

  def content
    h1 "Create a new forum post"
    create_form(operation)
  end

  private def create_form(op)
    form_for ForumPost::Create do
      mount ForumPost::FormFields, op
    end
  end
end
