class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string		:name
      t.string 		:title
      t.text 		:description
      t.integer 	:star_count

      t.timestamps
    end
  end
end
