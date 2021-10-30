class SimpleTBTreeDescriber < Innodb::RecordDescriber
  type :clustered
  key "i", :INT, :NOT_NULL
  row "s", "CHAR(10)", :NOT_NULL
end
