class Cools::NewPage < MainLayout
  needs operation : SaveCool
  quick_def page_title, "New Cool"

  def content
    h1 "New Cool"
    render_cool_form(operation)
  end

  def render_cool_form(op)
    form_for Cools::Create do
      # Edit fields in src/components/cools/form_fields.cr
      mount Cools::FormFields, op

      submit "Save", data_disable_with: "Saving..."
    end
  end
end
