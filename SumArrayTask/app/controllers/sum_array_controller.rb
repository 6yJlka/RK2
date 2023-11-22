# frozen_string_literal: true

# Контроллер для выполнения задания по нахождению суммы элементов массива.
class SumArrayController < ApplicationController
  def index
    @default_values = {
      arr_a: [2, 5, 10, 23, 30, 46, 50]
    }
    @default_values[:arr_a] = params[:arr_a].split(',').map(&:to_i) if params[:arr_a]

    sum_of_multiples_of_23 = @default_values[:arr_a].select { |num| (num % 23).zero? }.sum

    index_of_first_even = @default_values[:arr_a].index(&:even?)
    @default_values[:arr_a][index_of_first_even] = sum_of_multiples_of_23
  end
end
