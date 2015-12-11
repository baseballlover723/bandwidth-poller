class CreateDataPoints < ActiveRecord::Migration
  def change
    create_table :data_points do |t|
      t.decimal :mbs_downloaded
      t.decimal :mbs_uploaded
      t.decimal :real_mbs_downloaded
      t.decimal :real_mbs_uploaded
      t.string :restriction
      t.belongs_to :user, index: true

      t.timestamps null: false
    end
  end
end
