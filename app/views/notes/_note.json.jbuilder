json.extract! note, :id, :title, :desc, :category_id, :category_name, :author_id, :author_name, :content, :content_html, :status, :is_deleted, :deleted_at, :created_at, :updated_at
json.url note_url(note, format: :json)
