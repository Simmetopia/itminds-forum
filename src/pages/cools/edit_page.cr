class Cools::EditPage < MainLayout
  needs operation : SaveCool
  needs cool : Cool
  quick_def page_title, "Edit Cool with id: #{cool.id}"

  def content
    link "Back to all Cools", Cools::Index
    h1 "Edit Cool with id: #{cool.id}"
    render_cool_form(operation)
  end

  def render_cool_form(op)
    form_for Cools::Update.with(cool.id) do
      # Edit fields in src/components/cools/form_fields.cr
      mount Cools::FormFields, op

      submit "Update", data_disable_with: "Updating..."
    end
  end
end
