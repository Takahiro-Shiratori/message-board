class Message < ActiveRecord::Base
    # 名前は必須入力かつ20文字以内
    validates :name , length: {  maximum: 20 } , presence: true
<<<<<<< HEAD
    # 年齢は整数入力かつ0以上
    validates :age, numericality: {
            only_integer: true, greater_than_or_equal_to: 0
          }
=======
    # 年齢は整数で必須入力かつ0以上110以下
    validates :age , inclusion:{ in:0..110} , format:{with:/\A[0-9]+\z/i} ,numericality: true , presence: true
>>>>>>> master
    # 内容は必須入力かつ2文字以上30文字以下
    validates :body , length: {minimum: 2 , maximum: 30 } , presence: true
end