class Cools::ShowPage < MainLayout
  needs cool : Cool
  quick_def page_title, "Cool with id: #{cool.id}"

  def content
    link "Back to all Cools", Cools::Index
    h1 "Cool with id: #{cool.id}"
    render_actions
    render_cool_fields
  end

  def render_actions
    section do
      link "Edit", Cools::Edit.with(cool.id)
      text " | "
      link "Delete",
        Cools::Delete.with(cool.id),
        data_confirm: "Are you sure?"
    end
  end

  def render_cool_fields
    ul do
      li do
        text "title: "
        strong cool.title.to_s
      end
      li do
        text "count: "
        strong cool.count.to_s
      end
    end
  end
end
