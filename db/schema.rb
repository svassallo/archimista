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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160321000001) do

  create_table "activities", force: :cascade do |t|
    t.string   "identifier",        limit: 255
    t.string   "identifier_source", limit: 255
    t.string   "activity_en",       limit: 255
    t.string   "activity_it",       limit: 255
    t.integer  "parent_id"
    t.string   "native",            limit: 1
    t.string   "grouping",          limit: 1
    t.string   "db_source",         limit: 255
    t.string   "legacy_id",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["db_source", "legacy_id"], name: "index_activities_on_source_and_legacy_id"

  create_table "creator_activities", force: :cascade do |t|
    t.integer  "creator_id"
    t.string   "activity",   limit: 255
    t.string   "note",       limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "creator_activities", ["creator_id"], name: "index_creator_activities_on_creator_id"
  add_index "creator_activities", ["db_source", "legacy_id"], name: "index_creator_activities_on_source_and_legacy_id"

  create_table "creator_association_types", force: :cascade do |t|
    t.integer  "inverse_type_id"
    t.string   "association_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creator_corporate_types", force: :cascade do |t|
    t.string   "corporate_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "creator_editors", force: :cascade do |t|
    t.integer  "creator_id"
    t.string   "name",         limit: 255
    t.string   "qualifier",    limit: 255
    t.string   "editing_type", limit: 255
    t.date     "edited_at"
    t.string   "db_source",    limit: 255
    t.string   "legacy_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "creator_editors", ["creator_id"], name: "index_creator_editors_on_creator_id"
  add_index "creator_editors", ["db_source", "legacy_id"], name: "index_creator_editors_on_source_and_legacy_id"

  create_table "creator_events", force: :cascade do |t|
    t.integer  "creator_id",                                      null: false
    t.boolean  "preferred",                       default: false
    t.boolean  "is_valid",                        default: true,  null: false
    t.string   "start_date_place",    limit: 255
    t.string   "start_date_spec",     limit: 255
    t.date     "start_date_from"
    t.date     "start_date_to"
    t.string   "start_date_valid",    limit: 255
    t.string   "start_date_format",   limit: 255
    t.string   "start_date_display",  limit: 255
    t.string   "end_date_place",      limit: 255
    t.string   "end_date_spec",       limit: 255
    t.date     "end_date_from"
    t.date     "end_date_to"
    t.string   "end_date_valid",      limit: 255
    t.string   "end_date_format",     limit: 255
    t.string   "end_date_display",    limit: 255
    t.string   "legacy_display_date", limit: 255
    t.string   "order_date",          limit: 255
    t.text     "note"
    t.string   "db_source",           limit: 255
    t.string   "legacy_id",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "creator_events", ["creator_id"], name: "index_creator_events_on_creator_id"
  add_index "creator_events", ["db_source", "legacy_id"], name: "index_creator_events_on_source_and_legacy_id"

  create_table "creator_identifiers", force: :cascade do |t|
    t.integer  "creator_id"
    t.string   "identifier",        limit: 255
    t.string   "identifier_source", limit: 255
    t.text     "note"
    t.string   "db_source",         limit: 255
    t.string   "legacy_id",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "creator_identifiers", ["creator_id"], name: "index_creator_identifiers_on_creator_id"
  add_index "creator_identifiers", ["db_source", "legacy_id"], name: "index_creator_identifiers_on_source_and_legacy_id"

  create_table "creator_legal_statuses", force: :cascade do |t|
    t.integer  "creator_id"
    t.string   "legal_status", limit: 255
    t.text     "note"
    t.string   "db_source",    limit: 255
    t.string   "legacy_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "creator_legal_statuses", ["creator_id"], name: "index_creator_legal_statuses_on_creator_id"
  add_index "creator_legal_statuses", ["db_source", "legacy_id"], name: "index_creator_legal_statuses_on_source_and_legacy_id"

  create_table "creator_names", force: :cascade do |t|
    t.integer  "creator_id"
    t.boolean  "preferred",              default: false
    t.string   "name",       limit: 255
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.text     "note"
    t.string   "qualifier",  limit: 255
    t.string   "patronymic", limit: 255
    t.string   "nickname",   limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "creator_names", ["creator_id"], name: "index_creator_names_on_creator_id"
  add_index "creator_names", ["db_source", "legacy_id"], name: "index_creator_names_on_source_and_legacy_id"

  create_table "creator_urls", force: :cascade do |t|
    t.integer  "creator_id"
    t.string   "url",        limit: 255
    t.text     "note"
    t.integer  "position"
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "creator_urls", ["creator_id"], name: "index_creator_urls_on_creator_id"
  add_index "creator_urls", ["db_source", "legacy_id"], name: "index_creator_urls_on_source_and_legacy_id"

  create_table "creators", force: :cascade do |t|
    t.string   "creator_type",              limit: 1
    t.integer  "creator_corporate_type_id"
    t.string   "residence",                 limit: 255
    t.text     "abstract"
    t.text     "history"
    t.string   "legal_status",              limit: 255
    t.text     "note"
    t.integer  "created_by",                            default: 1
    t.integer  "updated_by",                            default: 1
    t.integer  "group_id",                              default: 1
    t.string   "db_source",                 limit: 255
    t.string   "legacy_id",                 limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "creators", ["creator_corporate_type_id"], name: "index_creators_on_creator_corporate_type_id"
  add_index "creators", ["creator_type"], name: "index_creators_on_creator_type"
  add_index "creators", ["db_source", "legacy_id"], name: "index_creators_on_source_and_legacy_id"
  add_index "creators", ["group_id"], name: "index_creators_on_group_id"

  create_table "custodian_buildings", force: :cascade do |t|
    t.integer  "custodian_id"
    t.string   "custodian_building_type", limit: 255
    t.string   "name",                    limit: 255
    t.text     "description"
    t.string   "address",                 limit: 255
    t.string   "postcode",                limit: 255
    t.string   "city",                    limit: 255
    t.string   "state",                   limit: 255
    t.string   "country",                 limit: 255
    t.string   "db_source",               limit: 255
    t.string   "legacy_id",               limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "custodian_buildings", ["custodian_id"], name: "index_custodian_buildings_on_custodian_id"
  add_index "custodian_buildings", ["db_source", "legacy_id"], name: "index_custodian_buildings_on_source_and_legacy_id"

  create_table "custodian_contacts", force: :cascade do |t|
    t.integer  "custodian_id"
    t.string   "contact",      limit: 255
    t.string   "contact_type", limit: 255
    t.string   "contact_note", limit: 255
    t.string   "db_source",    limit: 255
    t.string   "legacy_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "custodian_contacts", ["custodian_id"], name: "index_custodian_contacts_on_custodian_id"
  add_index "custodian_contacts", ["db_source", "legacy_id"], name: "index_custodian_contacts_on_source_and_legacy_id"

  create_table "custodian_editors", force: :cascade do |t|
    t.integer  "custodian_id"
    t.string   "name",         limit: 255
    t.string   "qualifier",    limit: 255
    t.string   "editing_type", limit: 255
    t.date     "edited_at"
    t.string   "db_source",    limit: 255
    t.string   "legacy_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "custodian_editors", ["custodian_id"], name: "index_custodian_editors_on_custodian_id"
  add_index "custodian_editors", ["db_source", "legacy_id"], name: "index_custodian_editors_on_source_and_legacy_id"

  create_table "custodian_identifiers", force: :cascade do |t|
    t.integer  "custodian_id"
    t.string   "identifier",        limit: 255
    t.string   "identifier_source", limit: 255
    t.text     "note"
    t.string   "db_source",         limit: 255
    t.string   "legacy_id",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "custodian_identifiers", ["custodian_id"], name: "index_custodian_identifiers_on_custodian_id"
  add_index "custodian_identifiers", ["db_source", "legacy_id"], name: "index_custodian_identifiers_on_source_and_legacy_id"

  create_table "custodian_names", force: :cascade do |t|
    t.integer  "custodian_id"
    t.boolean  "preferred",                default: false
    t.string   "name",         limit: 255
    t.string   "qualifier",    limit: 255
    t.text     "note"
    t.string   "db_source",    limit: 255
    t.string   "legacy_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "custodian_names", ["custodian_id"], name: "index_custodian_names_on_custodian_id"
  add_index "custodian_names", ["db_source", "legacy_id"], name: "index_custodian_names_on_source_and_legacy_id"

  create_table "custodian_owners", force: :cascade do |t|
    t.integer  "custodian_id"
    t.string   "owner",        limit: 255
    t.string   "db_source",    limit: 255
    t.string   "legacy_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "custodian_owners", ["custodian_id"], name: "index_custodian_owners_on_custodian_id"
  add_index "custodian_owners", ["db_source", "legacy_id"], name: "index_custodian_owners_on_source_and_legacy_id"

  create_table "custodian_types", force: :cascade do |t|
    t.string   "custodian_type", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "custodian_urls", force: :cascade do |t|
    t.integer  "custodian_id"
    t.string   "url",          limit: 255
    t.text     "note"
    t.integer  "position"
    t.string   "db_source",    limit: 255
    t.string   "legacy_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "custodian_urls", ["custodian_id"], name: "index_custodian_urls_on_custodian_id"
  add_index "custodian_urls", ["db_source", "legacy_id"], name: "index_custodian_urls_on_source_and_legacy_id"

  create_table "custodians", force: :cascade do |t|
    t.integer  "custodian_type_id"
    t.string   "legal_status",             limit: 2
    t.string   "owner",                    limit: 255
    t.string   "contact_person",           limit: 255
    t.text     "history"
    t.text     "administrative_structure"
    t.text     "collecting_policies"
    t.text     "holdings"
    t.text     "accessibility"
    t.text     "services"
    t.integer  "created_by",                           default: 1
    t.integer  "updated_by",                           default: 1
    t.integer  "group_id",                             default: 1
    t.string   "db_source",                limit: 255
    t.string   "legacy_id",                limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "custodians", ["custodian_type_id"], name: "index_custodians_on_custodian_type_id"
  add_index "custodians", ["db_source", "legacy_id"], name: "index_custodians_on_source_and_legacy_id"
  add_index "custodians", ["group_id"], name: "index_custodians_on_group_id"

  create_table "digital_objects", force: :cascade do |t|
    t.string   "attachable_type",    limit: 255
    t.integer  "attachable_id"
    t.integer  "position"
    t.string   "title",              limit: 255
    t.text     "description"
    t.string   "access_token",       limit: 255
    t.string   "asset_file_name",    limit: 255
    t.string   "asset_content_type", limit: 255
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "group_id"
    t.string   "db_source",          limit: 255
    t.string   "legacy_id",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "digital_objects", ["attachable_type", "attachable_id"], name: "index_digital_objects_on_attachable_type_and_attachable_id"
  add_index "digital_objects", ["db_source", "legacy_id"], name: "index_digital_objects_on_source_and_legacy_id"

  create_table "document_form_editors", force: :cascade do |t|
    t.integer  "document_form_id"
    t.string   "name",             limit: 255
    t.string   "qualifier",        limit: 255
    t.string   "editing_type",     limit: 255
    t.date     "edited_at"
    t.string   "db_source",        limit: 255
    t.string   "legacy_id",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "document_form_editors", ["db_source", "legacy_id"], name: "index_document_form_editors_on_source_and_legacy_id"
  add_index "document_form_editors", ["document_form_id"], name: "index_document_form_editors_on_document_form_id"

  create_table "document_forms", force: :cascade do |t|
    t.string   "identifier_source", limit: 255
    t.string   "identifier",        limit: 255
    t.string   "name",              limit: 255
    t.text     "description"
    t.integer  "status"
    t.text     "note"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "group_id"
    t.string   "db_source",         limit: 255
    t.string   "legacy_id",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "document_forms", ["db_source", "legacy_id"], name: "index_document_forms_on_source_and_legacy_id"

  create_table "editors", force: :cascade do |t|
    t.string   "first_name", limit: 255
    t.string   "last_name",  limit: 255
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "group_id"
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "editors", ["db_source", "legacy_id"], name: "index_editors_on_source_and_legacy_id"
  add_index "editors", ["group_id"], name: "index_editors_on_group_id"

  create_table "fond_editors", force: :cascade do |t|
    t.integer  "fond_id"
    t.string   "name",         limit: 255
    t.string   "qualifier",    limit: 255
    t.string   "editing_type", limit: 255
    t.date     "edited_at"
    t.string   "db_source",    limit: 255
    t.string   "legacy_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fond_editors", ["db_source", "legacy_id"], name: "index_fond_editors_on_source_and_legacy_id"
  add_index "fond_editors", ["fond_id"], name: "index_fond_editors_on_fond_id"

  create_table "fond_events", force: :cascade do |t|
    t.integer  "fond_id",                                         null: false
    t.boolean  "preferred",                       default: false
    t.boolean  "is_valid",                        default: true,  null: false
    t.string   "start_date_place",    limit: 255
    t.string   "start_date_spec",     limit: 255
    t.date     "start_date_from"
    t.date     "start_date_to"
    t.string   "start_date_valid",    limit: 255
    t.string   "start_date_format",   limit: 255
    t.string   "start_date_display",  limit: 255
    t.string   "end_date_place",      limit: 255
    t.string   "end_date_spec",       limit: 255
    t.date     "end_date_from"
    t.date     "end_date_to"
    t.string   "end_date_valid",      limit: 255
    t.string   "end_date_format",     limit: 255
    t.string   "end_date_display",    limit: 255
    t.string   "legacy_display_date", limit: 255
    t.string   "order_date",          limit: 255
    t.text     "note"
    t.string   "db_source",           limit: 255
    t.string   "legacy_id",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fond_events", ["db_source", "legacy_id"], name: "index_fond_events_on_source_and_legacy_id"
  add_index "fond_events", ["fond_id"], name: "index_fond_events_on_fond_id"

  create_table "fond_identifiers", force: :cascade do |t|
    t.integer  "fond_id"
    t.string   "identifier",        limit: 255
    t.string   "identifier_source", limit: 255
    t.text     "note"
    t.string   "db_source",         limit: 255
    t.string   "legacy_id",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fond_identifiers", ["db_source", "legacy_id"], name: "index_fond_identifiers_on_source_and_legacy_id"
  add_index "fond_identifiers", ["fond_id"], name: "index_fond_identifiers_on_fond_id"

  create_table "fond_langs", force: :cascade do |t|
    t.integer  "fond_id"
    t.string   "code",       limit: 3
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fond_langs", ["db_source", "legacy_id"], name: "index_fond_langs_on_source_and_legacy_id"
  add_index "fond_langs", ["fond_id"], name: "index_fond_langs_on_fond_id"

  create_table "fond_names", force: :cascade do |t|
    t.integer  "fond_id"
    t.string   "name",       limit: 255
    t.string   "qualifier",  limit: 255
    t.text     "note"
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fond_names", ["db_source", "legacy_id"], name: "index_fond_names_on_source_and_legacy_id"
  add_index "fond_names", ["fond_id"], name: "index_fond_names_on_fond_id"

  create_table "fond_owners", force: :cascade do |t|
    t.integer  "fond_id"
    t.string   "owner",      limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fond_owners", ["db_source", "legacy_id"], name: "index_fond_owners_on_source_and_legacy_id"
  add_index "fond_owners", ["fond_id"], name: "index_fond_owners_on_fond_id"

  create_table "fond_urls", force: :cascade do |t|
    t.integer  "fond_id"
    t.string   "url",        limit: 255
    t.text     "note"
    t.integer  "position"
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fond_urls", ["db_source", "legacy_id"], name: "index_fond_urls_on_source_and_legacy_id"
  add_index "fond_urls", ["fond_id"], name: "index_fond_urls_on_fond_id"

  create_table "fonds", force: :cascade do |t|
    t.string   "ancestry",              limit: 255
    t.integer  "ancestry_depth"
    t.integer  "position",                          default: 0
    t.integer  "sequence_number"
    t.boolean  "trashed",                           default: false, null: false
    t.integer  "trashed_ancestor_id"
    t.integer  "units_count",                       default: 0,     null: false
    t.string   "name",                  limit: 255
    t.string   "fond_type",             limit: 255
    t.float    "length"
    t.text     "extent"
    t.text     "abstract"
    t.text     "description"
    t.text     "history"
    t.text     "arrangement_note"
    t.text     "related_materials"
    t.string   "access_condition",      limit: 255
    t.text     "access_condition_note"
    t.string   "use_condition",         limit: 255
    t.text     "use_condition_note"
    t.string   "type_materials",        limit: 255
    t.string   "preservation",          limit: 255
    t.text     "preservation_note"
    t.string   "description_type",      limit: 255
    t.text     "note"
    t.integer  "created_by",                        default: 1
    t.integer  "updated_by",                        default: 1
    t.integer  "group_id",                          default: 1
    t.string   "db_source",             limit: 255
    t.string   "legacy_id",             limit: 255
    t.string   "legacy_parent_id",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "fonds", ["ancestry"], name: "index_fonds_on_ancestry"
  add_index "fonds", ["db_source", "legacy_id"], name: "index_fonds_on_source_and_legacy_id"
  add_index "fonds", ["db_source", "legacy_parent_id"], name: "index_fonds_on_source_and_legacy_parent_id"
  add_index "fonds", ["group_id"], name: "index_fonds_on_group_id"

  create_table "group_images", force: :cascade do |t|
    t.integer  "related_group_id"
    t.string   "type",               limit: 255
    t.integer  "position"
    t.string   "title",              limit: 255
    t.text     "description"
    t.string   "access_token",       limit: 255
    t.string   "asset_file_name",    limit: 255
    t.string   "asset_content_type", limit: 255
    t.integer  "asset_file_size"
    t.datetime "asset_updated_at"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "group_id"
    t.string   "db_source",          limit: 255
    t.string   "legacy_id",          limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "group_images", ["db_source", "legacy_id"], name: "index_group_images_on_source_and_legacy_id"
  add_index "group_images", ["related_group_id"], name: "index_group_images_on_related_group_id_id"

  create_table "groups", force: :cascade do |t|
    t.string   "name",                 limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_name",           limit: 30
    t.string   "site_caption",         limit: 255
    t.text     "description"
    t.string   "credits_link_caption", limit: 255
    t.text     "credits"
  end

  create_table "headings", force: :cascade do |t|
    t.string   "heading_type", limit: 255
    t.string   "name",         limit: 255
    t.string   "dates",        limit: 255
    t.string   "qualifier",    limit: 255
    t.integer  "group_id"
    t.string   "db_source",    limit: 255
    t.string   "legacy_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "headings", ["db_source", "legacy_id"], name: "index_headings_on_source_and_legacy_id"

  create_table "iccd_authors", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "autn",       limit: 255
    t.string   "autm",       limit: 255
    t.string   "autk",       limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "iccd_authors", ["unit_id"], name: "index_iccd_authors_on_unit_id"

  create_table "iccd_damages", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "stcs",       limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iccd_descriptions", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "ogtd",       limit: 255
    t.string   "ogts",       limit: 255
    t.text     "sgtd"
    t.string   "utf",        limit: 255
    t.string   "uto",        limit: 255
    t.string   "esc",        limit: 255
    t.string   "pvc",        limit: 255
    t.string   "ldcn",       limit: 255
    t.string   "ldcu",       limit: 255
    t.string   "ldcm",       limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "iccd_descriptions", ["db_source", "legacy_id"], name: "index_iccd_descriptions_on_db_source_and_legacy_id"
  add_index "iccd_descriptions", ["unit_id"], name: "index_iccd_descriptions_on_unit_id"

  create_table "iccd_subjects", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "sgti",       limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "iccd_subjects", ["db_source", "legacy_id"], name: "index_iccd_subjects_on_db_source_and_legacy_id"
  add_index "iccd_subjects", ["unit_id"], name: "index_iccd_subjects_on_unit_id"

  create_table "iccd_tech_specs", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "mtx",        limit: 255
    t.string   "mtc",        limit: 255
    t.string   "misu",       limit: 255
    t.float    "misa"
    t.float    "misl"
    t.string   "miss",       limit: 255
    t.string   "mtct",       limit: 255
    t.string   "mtcm",       limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "iccd_tech_specs", ["db_source", "legacy_id"], name: "index_iccd_tech_specs_on_db_source_and_legacy_id"
  add_index "iccd_tech_specs", ["unit_id"], name: "index_iccd_tech_specs_on_unit_id"

  create_table "iccd_terms", force: :cascade do |t|
    t.integer  "iccd_vocabulary_id"
    t.integer  "position"
    t.string   "term_key",           limit: 255
    t.string   "term_value",         limit: 255
    t.string   "term_scope",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iccd_terms_bdm_mtcms", force: :cascade do |t|
    t.string   "mtcm",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iccd_terms_bdm_mtcts", force: :cascade do |t|
    t.string   "mtct",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iccd_terms_bdm_ogtds", force: :cascade do |t|
    t.string   "ogtd",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iccd_terms_oa_mtcs", force: :cascade do |t|
    t.string   "mtc",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iccd_terms_oa_ogtds", force: :cascade do |t|
    t.string   "ogtd",       limit: 255
    t.string   "ogtt",       limit: 255
    t.string   "descr_ogtd", limit: 255
    t.string   "descr_ogtt", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iccd_vocabularies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "iccd_vocabularies", ["name"], name: "index_iccd_vocabularies_on_name"

  create_table "imports", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "identifier",      limit: 255
    t.string   "data_file_name",  limit: 255
    t.integer  "group_id"
    t.boolean  "deletable",                   default: true
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "importable_type", limit: 255
    t.integer  "importable_id"
  end

  create_table "institution_editors", force: :cascade do |t|
    t.integer  "institution_id"
    t.string   "name",           limit: 255
    t.string   "qualifier",      limit: 255
    t.string   "editing_type",   limit: 255
    t.date     "edited_at"
    t.string   "db_source",      limit: 255
    t.string   "legacy_id",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institution_editors", ["db_source", "legacy_id"], name: "index_institution_editors_on_source_and_legacy_id"
  add_index "institution_editors", ["institution_id"], name: "index_institution_editors_on_institution_id"

  create_table "institutions", force: :cascade do |t|
    t.string   "identifier",        limit: 255
    t.string   "identifier_source", limit: 255
    t.string   "name",              limit: 255
    t.text     "description"
    t.integer  "status"
    t.text     "note"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "group_id"
    t.string   "db_source",         limit: 255
    t.string   "legacy_id",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "institutions", ["db_source", "legacy_id"], name: "index_institutions_on_source_and_legacy_id"

  create_table "langs", force: :cascade do |t|
    t.string   "code",       limit: 3
    t.string   "code3t",     limit: 3
    t.string   "code2",      limit: 2
    t.string   "en_name",    limit: 255
    t.string   "fr_name",    limit: 255
    t.string   "it_name",    limit: 255
    t.boolean  "active"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "places", force: :cascade do |t|
    t.string  "record_type",     limit: 2
    t.string  "name",            limit: 200
    t.string  "qualifier",       limit: 100
    t.text    "ancestry_string"
    t.string  "ancestry",        limit: 255
    t.integer "ancestry_depth"
    t.string  "display_name",    limit: 255
  end

  create_table "project_managers", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "qualifier",  limit: 255
    t.string   "name",       limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_managers", ["db_source", "legacy_id"], name: "index_project_managers_on_source_and_legacy_id"
  add_index "project_managers", ["project_id"], name: "index_project_managers_on_project_id"

  create_table "project_stakeholders", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "qualifier",  limit: 255
    t.string   "name",       limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_stakeholders", ["db_source", "legacy_id"], name: "index_project_stakeholders_on_source_and_legacy_id"
  add_index "project_stakeholders", ["project_id"], name: "index_project_stakeholders_on_project_id"

  create_table "project_urls", force: :cascade do |t|
    t.integer  "project_id"
    t.string   "url",        limit: 255
    t.text     "note"
    t.integer  "position"
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "project_urls", ["db_source", "legacy_id"], name: "index_project_urls_on_source_and_legacy_id"
  add_index "project_urls", ["project_id"], name: "index_project_urls_on_project_id"

  create_table "projects", force: :cascade do |t|
    t.string   "project_type", limit: 255
    t.string   "name",         limit: 255
    t.integer  "start_year"
    t.integer  "end_year"
    t.string   "status",       limit: 255
    t.text     "description"
    t.text     "note"
    t.integer  "created_by",               default: 1
    t.integer  "updated_by",               default: 1
    t.integer  "group_id",                 default: 1
    t.string   "db_source",    limit: 255
    t.string   "legacy_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "projects", ["db_source", "legacy_id"], name: "index_projects_on_source_and_legacy_id"
  add_index "projects", ["group_id"], name: "index_projects_on_group_id"

  create_table "rel_creator_creators", force: :cascade do |t|
    t.integer  "creator_id"
    t.integer  "related_creator_id"
    t.integer  "creator_association_type_id",             default: 1
    t.string   "legacy_qualifier",            limit: 255
    t.string   "db_source",                   limit: 255
    t.string   "legacy_creator_id",           limit: 255
    t.string   "legacy_related_creator_id",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_creator_creators", ["creator_id"], name: "index_rel_creator_creators_on_creator_id"
  add_index "rel_creator_creators", ["db_source", "legacy_creator_id"], name: "index_rel_creator_creators_on_source_and_legacy_creator_id"
  add_index "rel_creator_creators", ["related_creator_id"], name: "index_rel_creator_creators_on_related_creator_id"

  create_table "rel_creator_fonds", force: :cascade do |t|
    t.integer  "creator_id"
    t.integer  "fond_id"
    t.string   "db_source",         limit: 255
    t.string   "legacy_creator_id", limit: 255
    t.string   "legacy_fond_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_creator_fonds", ["creator_id"], name: "index_rel_creator_fonds_on_creator_id"
  add_index "rel_creator_fonds", ["db_source", "legacy_creator_id"], name: "index_rel_creator_fonds_on_source_and_legacy_creator_id"
  add_index "rel_creator_fonds", ["db_source", "legacy_fond_id"], name: "index_rel_creator_fonds_on_source_and_legacy_fond_id"
  add_index "rel_creator_fonds", ["fond_id"], name: "index_rel_creator_fonds_on_fond_id"

  create_table "rel_creator_institutions", force: :cascade do |t|
    t.integer  "creator_id"
    t.integer  "institution_id"
    t.string   "db_source",             limit: 255
    t.string   "legacy_creator_id",     limit: 255
    t.string   "legacy_institution_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_creator_institutions", ["creator_id"], name: "index_rel_creator_institutions_on_creator_id"
  add_index "rel_creator_institutions", ["db_source", "legacy_creator_id"], name: "index_rel_creator_institutions_on_source_and_legacy_creator_id"
  add_index "rel_creator_institutions", ["institution_id"], name: "index_rel_creator_institutions_on_institution_id"

  create_table "rel_creator_sources", force: :cascade do |t|
    t.integer  "creator_id"
    t.integer  "source_id"
    t.string   "pages",             limit: 255
    t.string   "db_source",         limit: 255
    t.string   "legacy_creator_id", limit: 255
    t.string   "legacy_source_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_creator_sources", ["creator_id"], name: "index_rel_creator_sources_on_creator_id"
  add_index "rel_creator_sources", ["db_source", "legacy_creator_id"], name: "index_rel_creator_sources_on_source_and_legacy_creator_id"
  add_index "rel_creator_sources", ["db_source", "legacy_source_id"], name: "index_rel_creator_sources_on_source_and_legacy_source_id"
  add_index "rel_creator_sources", ["source_id"], name: "index_rel_creator_sources_on_source_id"

  create_table "rel_custodian_fonds", force: :cascade do |t|
    t.integer  "custodian_id"
    t.integer  "fond_id"
    t.string   "db_source",           limit: 255
    t.string   "legacy_custodian_id", limit: 255
    t.string   "legacy_fond_id",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_custodian_fonds", ["custodian_id"], name: "index_rel_custodian_fonds_on_custodian_id"
  add_index "rel_custodian_fonds", ["db_source", "legacy_custodian_id"], name: "index_rel_custodian_fonds_on_source_and_legacy_custodian_id"
  add_index "rel_custodian_fonds", ["db_source", "legacy_fond_id"], name: "index_rel_custodian_fonds_on_source_and_legacy_fond_id"
  add_index "rel_custodian_fonds", ["fond_id"], name: "index_rel_custodian_fonds_on_fond_id"

  create_table "rel_custodian_sources", force: :cascade do |t|
    t.integer  "custodian_id"
    t.integer  "source_id"
    t.string   "pages",               limit: 255
    t.string   "db_source",           limit: 255
    t.string   "legacy_custodian_id", limit: 255
    t.string   "legacy_source_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_custodian_sources", ["custodian_id"], name: "index_rel_custodian_sources_on_custodian_id"
  add_index "rel_custodian_sources", ["db_source", "legacy_custodian_id"], name: "index_rel_custodian_sources_on_source_and_legacy_custodian_id"
  add_index "rel_custodian_sources", ["db_source", "legacy_source_id"], name: "index_rel_custodian_sources_on_source_and_legacy_source_id"
  add_index "rel_custodian_sources", ["source_id"], name: "index_rel_custodian_sources_on_source_id"

  create_table "rel_fond_document_forms", force: :cascade do |t|
    t.integer  "fond_id"
    t.integer  "document_form_id"
    t.string   "db_source",               limit: 255
    t.string   "legacy_fond_id",          limit: 255
    t.string   "legacy_document_form_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_fond_document_forms", ["db_source", "legacy_fond_id"], name: "index_rel_fond_document_forms_on_source_and_legacy_fond_id"
  add_index "rel_fond_document_forms", ["document_form_id"], name: "index_rel_fond_document_forms_on_document_form_id"
  add_index "rel_fond_document_forms", ["fond_id"], name: "index_rel_fond_document_forms_on_fond_id"

  create_table "rel_fond_headings", force: :cascade do |t|
    t.integer  "fond_id"
    t.integer  "heading_id"
    t.string   "db_source",         limit: 255
    t.string   "legacy_fond_id",    limit: 255
    t.string   "legacy_heading_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_fond_headings", ["db_source", "legacy_fond_id"], name: "index_rel_fond_headings_on_source_and_legacy_fond_id"
  add_index "rel_fond_headings", ["db_source", "legacy_heading_id"], name: "index_rel_fond_headings_on_source_and_legacy_heading_id"
  add_index "rel_fond_headings", ["fond_id"], name: "index_rel_fond_headings_on_fond_id"
  add_index "rel_fond_headings", ["heading_id"], name: "index_rel_fond_headings_on_heading_id"

  create_table "rel_fond_sources", force: :cascade do |t|
    t.integer  "fond_id"
    t.integer  "source_id"
    t.string   "pages",            limit: 255
    t.string   "db_source",        limit: 255
    t.string   "legacy_fond_id",   limit: 255
    t.string   "legacy_source_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_fond_sources", ["db_source", "legacy_fond_id"], name: "index_rel_fond_sources_on_source_and_legacy_fond_id"
  add_index "rel_fond_sources", ["db_source", "legacy_source_id"], name: "index_rel_fond_sources_on_source_and_legacy_source_id"
  add_index "rel_fond_sources", ["fond_id"], name: "index_rel_fond_sources_on_fond_id"
  add_index "rel_fond_sources", ["source_id"], name: "index_rel_fond_sources_on_source_id"

  create_table "rel_project_fonds", force: :cascade do |t|
    t.integer  "project_id"
    t.integer  "fond_id"
    t.string   "db_source",         limit: 255
    t.string   "legacy_project_id", limit: 255
    t.string   "legacy_fond_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_project_fonds", ["db_source", "legacy_fond_id"], name: "index_rel_project_fonds_on_source_and_legacy_fond_id"
  add_index "rel_project_fonds", ["db_source", "legacy_project_id"], name: "index_rel_project_fonds_on_source_and_legacy_project_id"
  add_index "rel_project_fonds", ["fond_id"], name: "index_rel_project_fonds_on_fond_id"
  add_index "rel_project_fonds", ["project_id"], name: "index_rel_project_fonds_on_project_id"

  create_table "rel_unit_headings", force: :cascade do |t|
    t.integer  "unit_id"
    t.integer  "heading_id"
    t.string   "db_source",         limit: 255
    t.string   "legacy_unit_id",    limit: 255
    t.string   "legacy_heading_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_unit_headings", ["db_source", "legacy_heading_id"], name: "index_rel_unit_headings_on_source_and_legacy_heading_id"
  add_index "rel_unit_headings", ["db_source", "legacy_unit_id"], name: "index_rel_unit_headings_on_source_and_legacy_unit_id"
  add_index "rel_unit_headings", ["heading_id"], name: "index_rel_unit_headings_on_heading_id"
  add_index "rel_unit_headings", ["unit_id"], name: "index_rel_unit_headings_on_unit_id"

  create_table "rel_unit_sources", force: :cascade do |t|
    t.integer  "unit_id"
    t.integer  "source_id"
    t.string   "pages",            limit: 255
    t.string   "db_source",        limit: 255
    t.string   "legacy_unit_id",   limit: 255
    t.string   "legacy_source_id", limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rel_unit_sources", ["db_source", "legacy_source_id"], name: "index_rel_unit_sources_on_source_and_legacy_source_id"
  add_index "rel_unit_sources", ["db_source", "legacy_unit_id"], name: "index_rel_unit_sources_on_source_and_legacy_unit_id"
  add_index "rel_unit_sources", ["source_id"], name: "index_rel_unit_sources_on_source_id"
  add_index "rel_unit_sources", ["unit_id"], name: "index_rel_unit_sources_on_unit_id"

  create_table "sc2_attribution_reasons", force: :cascade do |t|
    t.integer  "sc2_author_id"
    t.string   "autm",          limit: 250
    t.string   "db_source",     limit: 255
    t.string   "legacy_id",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sc2_attribution_reasons", ["db_source", "legacy_id"], name: "index_sc2_attribution_reasons_on_db_source_and_legacy_id"
  add_index "sc2_attribution_reasons", ["sc2_author_id"], name: "index_sc2_attribution_reasons_on_sc2_author_id"

  create_table "sc2_authors", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "autr",       limit: 50
    t.string   "autn",       limit: 150
    t.string   "auta",       limit: 100
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sc2_authors", ["db_source", "legacy_id"], name: "index_sc2_authors_on_db_source_and_legacy_id"
  add_index "sc2_authors", ["unit_id"], name: "index_sc2_authors_on_unit_id"

  create_table "sc2_commission_names", force: :cascade do |t|
    t.integer  "sc2_commission_id"
    t.string   "cmmn",              limit: 70
    t.string   "db_source",         limit: 255
    t.string   "legacy_id",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sc2_commission_names", ["db_source", "legacy_id"], name: "index_sc2_commission_names_on_db_source_and_legacy_id"
  add_index "sc2_commission_names", ["sc2_commission_id"], name: "index_sc2_commission_names_on_sc2_commission_id"

  create_table "sc2_commissions", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "cmmc",       limit: 100
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sc2_commissions", ["db_source", "legacy_id"], name: "index_sc2_commissions_on_db_source_and_legacy_id"
  add_index "sc2_commissions", ["unit_id"], name: "index_sc2_commissions_on_unit_id"

  create_table "sc2_scales", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "sca",        limit: 100
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sc2_scales", ["db_source", "legacy_id"], name: "index_sc2_scales_on_db_source_and_legacy_id"
  add_index "sc2_scales", ["unit_id"], name: "index_sc2_scales_on_unit_id"

  create_table "sc2_techniques", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "mtct",       limit: 250
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sc2_techniques", ["db_source", "legacy_id"], name: "index_sc2_techniques_on_db_source_and_legacy_id"
  add_index "sc2_techniques", ["unit_id"], name: "index_sc2_techniques_on_unit_id"

  create_table "sc2_terms", force: :cascade do |t|
    t.integer  "sc2_vocabulary_id"
    t.integer  "position"
    t.string   "term_key",          limit: 255
    t.string   "term_value",        limit: 255
    t.string   "term_scope",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sc2_terms", ["sc2_vocabulary_id"], name: "index_sc2_terms_on_sc2_vocabulary_id"

  create_table "sc2_textual_elements", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "isri",       limit: 2200
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sc2_textual_elements", ["db_source", "legacy_id"], name: "index_sc2_textual_elements_on_db_source_and_legacy_id"
  add_index "sc2_textual_elements", ["unit_id"], name: "index_sc2_textual_elements_on_unit_id"

  create_table "sc2_visual_elements", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "stmd",       limit: 500
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sc2_visual_elements", ["db_source", "legacy_id"], name: "index_sc2_visual_elements_on_db_source_and_legacy_id"
  add_index "sc2_visual_elements", ["unit_id"], name: "index_sc2_visual_elements_on_unit_id"

  create_table "sc2_vocabularies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sc2_vocabularies", ["name"], name: "index_sc2_vocabularies_on_name"

  create_table "sc2s", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "sgti",       limit: 250
    t.string   "cmmr",       limit: 25
    t.string   "lrc",        limit: 250
    t.string   "lrd",        limit: 50
    t.string   "mtce",       limit: 250
    t.string   "sdtt",       limit: 50
    t.string   "sdts",       limit: 50
    t.string   "dpgf",       limit: 100
    t.float    "misa",       limit: 6
    t.float    "misl",       limit: 6
    t.string   "ort",        limit: 50
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sc2s", ["db_source", "legacy_id"], name: "index_sc2s_on_db_source_and_legacy_id"
  add_index "sc2s", ["unit_id"], name: "index_sc2s_on_unit_id"

  create_table "source_types", force: :cascade do |t|
    t.integer  "code"
    t.string   "source_type", limit: 255
    t.integer  "parent_code"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "source_urls", force: :cascade do |t|
    t.integer  "source_id"
    t.string   "url",        limit: 255
    t.text     "note"
    t.integer  "position"
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "source_urls", ["db_source", "legacy_id"], name: "index_source_urls_on_source_and_legacy_id"
  add_index "source_urls", ["source_id"], name: "index_source_urls_on_source_id"

  create_table "sources", force: :cascade do |t|
    t.boolean  "use_legacy",                        default: false
    t.integer  "source_type_code"
    t.integer  "source_subtype_code"
    t.string   "short_title",           limit: 255
    t.string   "author",                limit: 255
    t.text     "title"
    t.string   "editor",                limit: 255
    t.string   "publisher",             limit: 255
    t.string   "place",                 limit: 255
    t.integer  "year",                              default: 0
    t.string   "date_string",           limit: 255
    t.string   "related_item",          limit: 255
    t.string   "related_item_specs",    limit: 255
    t.text     "abstract"
    t.string   "identifier",            limit: 255
    t.boolean  "finding_aid_published"
    t.boolean  "finding_aid_valid"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.integer  "group_id"
    t.string   "db_source",             limit: 255
    t.string   "legacy_id",             limit: 255
    t.string   "legacy_table",          limit: 255
    t.text     "legacy_description"
    t.text     "legacy_authors"
    t.string   "x_periodical",          limit: 255
    t.string   "x_issue",               limit: 255
    t.string   "x_volume",              limit: 255
    t.string   "x_pages",               limit: 255
    t.string   "x_book_title",          limit: 255
    t.string   "x_institution",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sources", ["db_source", "legacy_id"], name: "index_sources_on_source_and_legacy_id"
  add_index "sources", ["source_subtype_code"], name: "index_sources_on_source_subtype_code"
  add_index "sources", ["source_type_code"], name: "index_sources_on_source_type_code"

  create_table "terms", force: :cascade do |t|
    t.integer  "vocabulary_id"
    t.integer  "position"
    t.string   "term_key",      limit: 255
    t.string   "term_value",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "terms", ["vocabulary_id"], name: "index_terms_on_vocabulary_id"

  create_table "tmp_ordered_nodes", id: false, force: :cascade do |t|
    t.integer "node_id"
    t.integer "rank"
  end

  add_index "tmp_ordered_nodes", ["node_id"], name: "index_tmp_ordered_nodes_on_node_id"

  create_table "unit_damages", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "code",       limit: 255
    t.string   "note",       limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_damages", ["db_source", "legacy_id"], name: "index_unit_damages_on_source_and_legacy_id"
  add_index "unit_damages", ["unit_id"], name: "index_unit_damages_on_unit_id"

  create_table "unit_editors", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "name",         limit: 255
    t.string   "qualifier",    limit: 255
    t.string   "editing_type", limit: 255
    t.date     "edited_at"
    t.string   "db_source",    limit: 255
    t.string   "legacy_id",    limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_editors", ["db_source", "legacy_id"], name: "index_unit_editors_on_source_and_legacy_id"
  add_index "unit_editors", ["unit_id"], name: "index_unit_editors_on_unit_id"

  create_table "unit_events", force: :cascade do |t|
    t.integer  "unit_id",                                         null: false
    t.boolean  "preferred",                       default: false
    t.boolean  "is_valid",                        default: true,  null: false
    t.string   "start_date_place",    limit: 255
    t.string   "start_date_spec",     limit: 255
    t.date     "start_date_from"
    t.date     "start_date_to"
    t.string   "start_date_valid",    limit: 255
    t.string   "start_date_format",   limit: 255
    t.string   "start_date_display",  limit: 255
    t.string   "end_date_place",      limit: 255
    t.string   "end_date_spec",       limit: 255
    t.date     "end_date_from"
    t.date     "end_date_to"
    t.string   "end_date_valid",      limit: 255
    t.string   "end_date_format",     limit: 255
    t.string   "end_date_display",    limit: 255
    t.string   "legacy_display_date", limit: 255
    t.string   "order_date",          limit: 255
    t.text     "note"
    t.string   "db_source",           limit: 255
    t.string   "legacy_id",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_events", ["db_source", "legacy_id"], name: "index_unit_events_on_source_and_legacy_id"
  add_index "unit_events", ["unit_id"], name: "index_unit_events_on_unit_id"

  create_table "unit_identifiers", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "identifier",        limit: 255
    t.string   "identifier_source", limit: 255
    t.text     "note"
    t.string   "db_source",         limit: 255
    t.string   "legacy_id",         limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_identifiers", ["db_source", "legacy_id"], name: "index_unit_identifiers_on_source_and_legacy_id"
  add_index "unit_identifiers", ["unit_id"], name: "index_unit_identifiers_on_unit_id"

  create_table "unit_langs", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "code",       limit: 255
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_langs", ["db_source", "legacy_id"], name: "index_unit_langs_on_source_and_legacy_id"
  add_index "unit_langs", ["unit_id"], name: "index_unit_langs_on_unit_id"

  create_table "unit_other_reference_numbers", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "other_reference_number", limit: 255
    t.string   "qualifier",              limit: 255
    t.text     "note"
    t.string   "db_source",              limit: 255
    t.string   "legacy_id",              limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_other_reference_numbers", ["db_source", "legacy_id"], name: "index_unit_other_reference_numbers_on_source_and_legacy_id"
  add_index "unit_other_reference_numbers", ["unit_id"], name: "index_unit_other_reference_numbers_on_unit_id"

  create_table "unit_urls", force: :cascade do |t|
    t.integer  "unit_id"
    t.string   "url",        limit: 255
    t.text     "note"
    t.integer  "position"
    t.string   "db_source",  limit: 255
    t.string   "legacy_id",  limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_urls", ["db_source", "legacy_id"], name: "index_unit_urls_on_source_and_legacy_id"
  add_index "unit_urls", ["unit_id"], name: "index_unit_urls_on_unit_id"

  create_table "units", force: :cascade do |t|
    t.integer  "fond_id"
    t.integer  "root_fond_id"
    t.integer  "position",                              default: 0
    t.integer  "sequence_number"
    t.string   "ancestry",                  limit: 255
    t.integer  "ancestry_depth"
    t.string   "tsk",                       limit: 5
    t.string   "reference_number",          limit: 255
    t.integer  "tmp_reference_number"
    t.string   "tmp_reference_string",      limit: 255
    t.text     "title"
    t.boolean  "given_title"
    t.integer  "folder_number"
    t.integer  "file_number"
    t.string   "sort_letter",               limit: 255
    t.integer  "sort_number"
    t.string   "unit_type",                 limit: 255
    t.string   "medium",                    limit: 255
    t.text     "content"
    t.text     "arrangement_note"
    t.text     "related_materials"
    t.string   "physical_type",             limit: 255
    t.text     "physical_description"
    t.string   "physical_container_type",   limit: 255
    t.string   "physical_container_title",  limit: 255
    t.string   "physical_container_number", limit: 255
    t.string   "preservation",              limit: 255
    t.text     "preservation_note"
    t.text     "restoration"
    t.string   "access_condition",          limit: 255
    t.text     "access_condition_note"
    t.string   "use_condition",             limit: 255
    t.text     "use_condition_note"
    t.text     "note"
    t.integer  "created_by"
    t.integer  "updated_by"
    t.string   "db_source",                 limit: 255
    t.string   "legacy_id",                 limit: 255
    t.integer  "legacy_position"
    t.string   "legacy_sequence_number",    limit: 255
    t.string   "legacy_parent_unit_id",     limit: 255
    t.string   "legacy_parent_fond_id",     limit: 255
    t.string   "legacy_root_fond_id",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sc2_tsk",                   limit: 10
  end

  add_index "units", ["ancestry"], name: "index_units_on_ancestry"
  add_index "units", ["db_source", "legacy_id"], name: "index_units_on_source_and_legacy_id"
  add_index "units", ["db_source", "legacy_parent_fond_id"], name: "index_units_on_source_and_legacy_parent_fond_id"
  add_index "units", ["db_source", "legacy_parent_unit_id"], name: "index_units_on_source_and_legacy_parent_unit_id"
  add_index "units", ["db_source", "legacy_root_fond_id"], name: "index_units_on_source_and_legacy_root_fond_id"
  add_index "units", ["fond_id"], name: "index_units_on_fond_id"
  add_index "units", ["root_fond_id"], name: "index_units_on_root_fond_id"

  create_table "users", force: :cascade do |t|
    t.boolean  "active",                          default: true, null: false
    t.string   "email",               limit: 255, default: "",   null: false
    t.string   "username",            limit: 255
    t.string   "first_name",          limit: 255
    t.string   "last_name",           limit: 255
    t.string   "qualifier",           limit: 255
    t.string   "role",                limit: 255
    t.string   "encrypted_password",  limit: 128, default: "",   null: false
    t.string   "password_salt",       limit: 255, default: "",   null: false
    t.string   "remember_token",      limit: 255
    t.datetime "remember_created_at"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["group_id"], name: "index_users_on_group_id"

  create_table "vocabularies", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vocabularies", ["name"], name: "index_vocabularies_on_name"

end
