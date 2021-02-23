class ForumPost::Index < BrowserAction
  get "/forum_post" do
    html ForumPost::AllPage, forumPosts: ForumPostQuery.new
  end
end
