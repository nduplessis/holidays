# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: definitions/ch.yaml
class ChDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_ch
{ Date.civil(2012,8,1) => 'Bundesfeiertag',
  Date.civil(2012,12,25) => 'Weihnachten',
  Date.civil(2012,05,17) => 'Auffahrt'
}.each do |date, name|
  assert_equal name, (Holidays.on(date, :ch)[0] || {})[:name]
end

{ Date.civil(2012,8,1) => 'Bundesfeiertag',
  Date.civil(2012,12,25) => 'Weihnachten',
  Date.civil(2012,05,17) => 'Auffahrt',
  Date.civil(2012,5,1) => 'Tag der Arbeit',
  Date.civil(2012,12,26) => 'Stefanstag'
}.each do |date, name|
  assert_equal name, (Holidays.on(date, :ch_zh)[0] || {})[:name]
end

[Date.civil(2012,9,17), Date.civil(2013,9,16), Date.civil(2014,9,22)].each do |date|
  assert_equal 'Lundi du Jeûne fédéral', (Holidays.on(date, :ch_vd)[0] || {})[:name]
end

[Date.civil(2012,9,6), Date.civil(2013,9,5), Date.civil(2014,9,11)].each do |date|
  assert_equal 'Jeûne genevois', (Holidays.on(date, :ch_ge)[0] || {})[:name]
end

[Date.civil(2012,4,12), Date.civil(2013,4,4), Date.civil(2014,4,3)].each do |date|
  assert_equal 'Näfelser Fahrt', (Holidays.on(date, :ch_gl)[0] || {})[:name]
end

  end
end
