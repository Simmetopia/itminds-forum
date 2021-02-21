class Cools::IndexPage < MainLayout
  needs cools : CoolQuery
  quick_def page_title, "All Cools"

  def content
    h1 "All Cools"
    link "New Cool", to: Cools::New
    render_cools
  end

  def render_cools
    ul do
      cools.each do |cool|
        li do
          link cool.title, Cools::Show.with(cool)
        end
      end
    end
  end
end
