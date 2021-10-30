#!/usr/bin/env ruby

require "mysql2"

m = Mysql2::Client.new(host: "localhost", username: "root")

# Create database
m.query("DROP DATABASE IF EXISTS innodb_ruby")
m.query("CREATE DATABASE innodb_ruby")
m.query("USE innodb_ruby")

# Create table
m.query("DROP TABLE IF EXISTS t")
m.query("CREATE TABLE t (i INT UNSIGNED NOT NULL, PRIMARY KEY(i)) ENGINE=InnoDB")

# Create records
(1..1_000_000).to_a.shuffle.each_with_index do |i, index|
  m.query("INSERT INTO t (i) VALUES (#{i})")
  puts "Inserted #{index} rows..." if index % 10_000 == 0
end
