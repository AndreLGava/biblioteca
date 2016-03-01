# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20151214192043) do

  create_table "emprestimos", :force => true do |t|
    t.date     "data_emprestimo"
    t.date     "data_limite"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "usuario_id"
    t.integer  "livro_id"
    t.date     "data_devolucao"
  end

  create_table "livros", :force => true do |t|
    t.string   "titulo"
    t.text     "descricao"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.boolean  "emprestado"
    t.string   "image_file_name"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "senha"
    t.string   "bio"
    t.boolean  "admin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
