require 'date'
class Course
attr_accessor :curso, :fecha
#Constructor
  def initialize(curso, *fecha)
    @curso = curso
    @fecha = fecha
  end

  def com_antes(filter_dates)
    @fecha.select { |date| Date.parse(date) < filter_dates}
  end

  def com_despues(filter_date)
    @fecha.select { |date| Date.parse(date) > filter_date}
  end
end

file = File.open('cursos.txt', 'r')
data = file.readlines
file.close

cursos = []
data.each do |linea|
  ls = linea.split(', ')
  cursos << Course.new(*ls)
end

cursos.each do |r|
  puts "#{r.curso} antes: #{r.com_antes(Date.today)}, despues: #{r.com_despues(Date.today).any? ? r.com_despues(Date.today) : 'No hay fechas despues' }"
end
