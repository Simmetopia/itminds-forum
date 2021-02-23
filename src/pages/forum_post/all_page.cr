class ForumPost::AllPage < MainLayout
  needs forumPosts : ForumPostQuery

  def content
    h1 "All forum posts made so far"
    div class: "flex flex-col gap-3" do
      forumPosts.each do |post|
        div class: "bg-white rounded flex flex-col gap- shadow p-3" do
          div do
            text "Title: "
            span post.title, class: "font-bold"
          end

          div post.content
        end
      end
    end
  end
end
