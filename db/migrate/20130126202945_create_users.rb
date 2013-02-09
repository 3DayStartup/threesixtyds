class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :profile_picture
      t.string :email
      t.string :field_of_study
      t.string :degree_program
      t.string :participant_role
      t.string :university
      t.string :participant_month
      t.string :participant_year
      t.string :linkedin
      t.string :twitter
      t.string :portfolio
      t.string :participant_team
      t.string :company

      t.timestamps
    end
  end
end
