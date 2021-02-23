class ForumPost < BaseModel
  table do
    column title : String
    column content : String
    belongs_to author : User
  end
end
