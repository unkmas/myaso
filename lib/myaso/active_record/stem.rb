# encoding: utf-8

# @private
class Myaso::ActiveRecord::Stem < ActiveRecord::Base
  # @private
  def self.table_name
    'myaso_stems'
  end

  has_many :words, class_name: '::Myaso::ActiveRecord::Word',
    :inverse_of => :stem

  validates :stem, presence: true
  validates :rule_set_id, presence: true
end
