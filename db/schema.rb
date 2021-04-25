# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_25_221954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adherents", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "documents_adherents", force: :cascade do |t|
    t.bigint "adherents_id", null: false
    t.boolean "cvec"
    t.boolean "certificat_scolarite"
    t.boolean "carte_vital"
    t.boolean "carte_identite"
    t.boolean "rib"
    t.boolean "ba"
    t.boolean "cotisation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adherents_id"], name: "index_documents_adherents_on_adherents_id"
  end

  create_table "fiscal_adherents", force: :cascade do |t|
    t.bigint "adherents_id", null: false
    t.string "nom_banque"
    t.string "iban"
    t.string "bic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adherents_id"], name: "index_fiscal_adherents_on_adherents_id"
  end

  create_table "info_adherents", force: :cascade do |t|
    t.bigint "adherents_id", null: false
    t.string "prenom"
    t.string "nom"
    t.string "mail"
    t.string "telephone"
    t.string "adresse"
    t.string "codepostal"
    t.string "ville"
    t.boolean "master"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adherents_id"], name: "index_info_adherents_on_adherents_id"
  end

  create_table "membre_adherents", force: :cascade do |t|
    t.bigint "adherents_id", null: false
    t.boolean "membre"
    t.boolean "alumni_ejc"
    t.string "annee_mandat"
    t.string "campus"
    t.string "pole"
    t.string "poste"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adherents_id"], name: "index_membre_adherents_on_adherents_id"
  end

  create_table "social_adherents", force: :cascade do |t|
    t.bigint "adherents_id", null: false
    t.date "date_de_naissance"
    t.string "numero_securite"
    t.string "commune_naissance"
    t.string "codepostal_naissance"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["adherents_id"], name: "index_social_adherents_on_adherents_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "documents_adherents", "adherents", column: "adherents_id"
  add_foreign_key "fiscal_adherents", "adherents", column: "adherents_id"
  add_foreign_key "info_adherents", "adherents", column: "adherents_id"
  add_foreign_key "membre_adherents", "adherents", column: "adherents_id"
  add_foreign_key "social_adherents", "adherents", column: "adherents_id"
end
