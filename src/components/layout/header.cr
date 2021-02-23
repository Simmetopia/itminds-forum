class Layout::Header < BaseComponent
  needs current_user : User

  def render
    div class: "bg-blue-400 w-screen shadow-md justify-between h-16 text-white flex flex-row items-center px-4" do
      text "IT-minds forum"
      link to: Me::Show do
        div splice_string(current_user.email), class: "py-3 px-2 rounded-full bg-gray-300"
      end
    end
  end

  def splice_string(val)
    val.split("").delete_at(..2).join("").to_s
  end
end
