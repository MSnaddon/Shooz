require_relative ('../db/sqlrunner.rb')

class ShooOrder
  attr_reader :id, :full_name, :address, :quantity, :size, :shoe_type
  def initialize(options)
    @id = options['id'].to_i
    @full_name = options['full_name']
    @address = options['address']
    @quantity = options['quantity'].to_i
    @size = options['size'].to_i
    @shoe_type = options['shoe_type']
  end

  def self.all
    sql = "SELECT * FROM shoo_orders"
    return SqlRunner.run(sql).map{ |order| ShooOrder.new(order) }
  end

  def save
    sql = "INSERT INTO shoo_orders ( full_name, address, quantity, size, shoe_type ) VALUES ('#{full_name.sub("'","''")}', '#{address.sub("'","''")}', #{quantity}, #{size}, '#{shoe_type.sub("'","''")}') RETURNING*;"
    @id = SqlRunner.run(sql).first['id'].to_i
  end

end