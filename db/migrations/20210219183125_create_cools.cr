class CreateCools::V20210219183125 < Avram::Migrator::Migration::V1
  def migrate
    # Learn about migrations at: https://luckyframework.org/guides/database/migrations
    create table_for(Cool) do
      primary_key id : Int64
      add_timestamps
      add title : String
      add count : Int32
    end
  end

  def rollback
    drop table_for(Cool)
  end
end
