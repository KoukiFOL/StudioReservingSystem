class User < ApplicationRecord
    validates :name, {length: {minimum:2, maximum:10}}
    validates :number, {length: {minimum:6, maximum:6}}
    validates :info, {length: {maximum: 400}}
    validates :password, {length: {minimum:4, maximum:16}}
end