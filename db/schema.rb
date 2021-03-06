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

ActiveRecord::Schema.define(version: 2021_04_25_221125) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adherents", force: :cascade do |t|
    t.string "prenom"
    t.string "nom"
    t.string "mail"
    t.string "telephone"
    t.string "adresse"
    t.string "codepostal"
    t.string "ville"
    t.boolean "master"
    t.date "date_de_naissance"
    t.string "numero_securite"
    t.string "commune_naissance"
    t.string "codepostal_naissance"
    t.string "nom_banque"
    t.string "iban"
    t.string "bic"
    t.boolean "cvec"
    t.boolean "certificat_scolarite"
    t.boolean "carte_vital"
    t.boolean "carte_identite"
    t.boolean "rib"
    t.boolean "ba"
    t.boolean "cotisation"
    t.boolean "membre"
    t.boolean "alumni_ejc"
    t.string "annee_mandat"
    t.string "campus"
    t.string "pole"
    t.string "poste"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

end
