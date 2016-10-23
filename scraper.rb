#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

names = WikiData::Category.new( 'Category:Members of the Legislature of Guam', 'en').member_titles
warn "#{names.to_a.count} members in Category"
EveryPolitician::Wikidata.scrape_wikidata(names: { en: names })

