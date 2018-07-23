class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :title                 ,comment: "标题"
      t.string :desc                  ,comment: "描述"
      t.integer :category_id          ,comment: "类别"
      t.string :category_name         ,comment: ""
      t.integer :author_id            ,comment: "作者"
      t.string :author_name           ,comment: ""
      t.text :content             ,comment: "内容markdown"
      t.text :content_html        ,comment: "内容html"
      t.integer :status               ,comment: "状态  暂存 发布 禁止评论"
      t.boolean :is_deleted           ,comment: "是否删除"
      t.datetime :deleted_at          ,comment: ""

      t.timestamps
    end
    add_index :notes, :is_deleted
    add_index :notes, :status
  end
end