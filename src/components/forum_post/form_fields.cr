class ForumPost::FormFields < BaseComponent
  needs op : SaveForumPost

  def render
    mount Shared::Field, op.title
    mount Shared::Field, op.content, &.textarea
    submit "Do it", data_disable_with: "Saving ..."
  end
end
