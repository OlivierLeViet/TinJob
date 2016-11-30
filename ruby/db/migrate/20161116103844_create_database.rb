class CreateDatabase < ActiveRecord::Migration[5.0]
  def change

    #table users
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :encrypted_password,null:false, default: ""
      t.string :reset_password_token
      t.string :reset_password_sent_at
      t.integer :grade
      t.datetime :birthday
      t.string :picture
      t.string :skill
      t.string :number
      t.string :adress
      t.boolean :car
      t.boolean :smoke
      t.boolean :pet
      t.integer :note
      t.string :remember_created_at
      t.string :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet :current_sign_in_ip
      t.inet :last_sign_in_ip
      t.timestamps
    end

    add_index :users, :email, unique: true
    #add_index :users, :reset_password_token, unique: true

    #table annonces
    create_table :listings do |t|
      t.string :title
      t.string :description
      t.string :postal
      t.string :adress
      t.decimal :price
      t.boolean :car
      t.boolean :smoke
      t.boolean :pet
      t.integer :review_id
      t.integer :category_id
      t.integer :user_id
      t.timestamps
    end

    #table categories
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.string :picture
    end

    #table avis
    create_table :reviews do |t|
      t.integer :note
      t.integer :comment_id
      t.timestamps
    end

    #table commentaire
    create_table :comment do |t|
      t.string :description
      t.timestamps
    end

  end
end
