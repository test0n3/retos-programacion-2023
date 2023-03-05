# frozen_string_literal: true

# class Survey for challenge Sorting Hat
class Questionnaire
  QUESTIONS = { '0' => '¿Qué color prefieres?',
                '1' => '¿Qué animal te agrada?',
                '2' => '¿Qué característica aprecias en tus compañeros?',
                '3' => '¿Qué elemento prefieres?',
                '4' => '¿Qué gema te agrada?' }.freeze
  ANSWERS = { '0' => { '1' => 'rojo', '2' => 'azul',
                       '3' => 'verde', '4' => 'amarillo' },
              '1' => { '1' => 'leon', '2' => 'águila',
                       '3' => 'serpiente', '4' => 'tejón' },
              '2' => { '1' => 'audacia', '2' => 'inteligencia',
                       '3' => 'astucia', '4' => 'imparcialidad' },
              '3' => { '1' => 'fuego', '2' => 'viento',
                       '3' => 'agua', '4' => 'tierra' },
              '4' => { '1' => 'rubí', '2' => 'safiro',
                       '3' => 'esmeralda', '4' => 'diamante' } }.freeze

  HOUSES = %w[gryffindor ravenclaw slytherin hufflepuff].freeze

  def start_questionnaire
    results = { 'gryffindor' => 0, 'slytherin' => 0, 'hufflepuff' => 0, 'ravenclaw' => 0 }
    puts 'El Sombrero Seleccionador'
    QUESTIONS.each_key do |id|
      display_question(id)
      display_options(id)
      results[catch_answer(id)] += 1
    end
    display_answer(results).capitalize
  end

  def display_question(id)
    puts "\n\n#{QUESTIONS[id]}"
  end

  def display_options(id)
    puts "\n"
    ANSWERS[id].each do |key, value|
      puts "#{key.to_i}. #{value.capitalize}"
    end
  end

  def catch_answer(id)
    answer = -1
    until ANSWERS[id].keys.include? answer
      print "\nIngrese su elección: "
      answer = gets.chomp
    end
    answer = answer.to_i - 1
    HOUSES[answer]
  end

  def display_answer(answer)
    # answer.max_by { |key, value| value }.first
    answer.key(answer.values.max)
  end
end

test = Questionnaire.new.start_questionnaire
puts test
