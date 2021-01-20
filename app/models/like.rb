class Like < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'MMORPG' },
    { id: 3, name: 'FPS' }
    { id: 4, name: '格闘ゲーム' },
    { id: 5, name: 'パズル・テーブルゲーム' }
    { id: 6, name: 'TPPG' },
    { id: 7, name: 'MOBA' }
    { id: 8, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :user
end
