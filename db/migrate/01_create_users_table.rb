class CreateUsersTable < ActiveRecord::Migration[4.2]

  def change
    create_table :users do |t|
      t.string :username
<<<<<<< HEAD
      t.text :email
      t.string :password_digest
=======
      t.string :email
      t.string :password
>>>>>>> c4d3a9933c491a3a79a90f158bdd067fe674edf9
    end
  end

end
