class ForumPost::New < BrowserAction
  get "/forum_post/new" do
    html ForumPost::NewPage, operation: SaveForumPost.new
  end
end
