class AddSubjectRefToPages < ActiveRecord::Migration[5.0]
  def change
    add_reference :pages, :subject, foreign_key: true
  end
end
