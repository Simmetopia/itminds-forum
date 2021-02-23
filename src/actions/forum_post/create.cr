class ForumPost::Create < BrowserAction
  post "/forum_post" do
    user = current_user
    SaveForumPost.create(params, author_id: user.id) do |op, post|
      if post
        flash.success = "You did it, you created a forum post"
        redirect Me::Show
      else
        flash.failure = "Sometin wong"
        html NewPage, operation: op
      end
    end
  end
end
