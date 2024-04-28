# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[7.1]
  def change
    create_table(:tasks) do |t|
      t.string(:title)
      t.text(:description)
      t.integer(:status)
      t.integer(:priority)
      t.references(:category, null: false, foreign_key: true)
      t.datetime(:start_date_time)
      t.date(:deadline)
      t.references(:created_by, null: false, foreign_key: { to_table: :teams_users })
      t.references(:assigned_to, null: false, foreign_key: { to_table: :teams_users })

      t.timestamps
    end
  end
end
