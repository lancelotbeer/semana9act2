
class Table
      attr_accessor :nombre, :dia1, :dia2, :dia3, :dia4
    def initialize(nombre, dia1, dia2, dia3, dia4)
      @nombre = nombre
      @dia1 = dia1.to_i
      @dia2 = dia2.to_i
      @dia3 = dia3.to_i
      @dia4 = dia4.to_i

    end
    def average
       (@dia1 + @dia2 + @dia3 + @dia4) / 4.0
      #@average.inject(&:+) / @average.size
    end
end
  m_ventas = []
  venta = []
  data =[]
  File.open('casino.txt', 'r'){ |file| data = file.readlines }
  data.each do |mesas|
    nombre, dia1, dia2, dia3, dia4 = mesas.split(', ')
    venta << Table.new(nombre, dia1, dia2, dia3, dia4)
  end

  data.each do |m|
    m_ventas << m.split(', ')
  end

  m_ventas.each do |fila|
    puts "#{fila[0]} el maximo valor es: #{fila[1..4].max}"
  end


  venta.each do |ven|
    puts "el promedio de ventas es #{ven.nombre} #{ven.average}"
      
  end
