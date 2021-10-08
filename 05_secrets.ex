use Bitwise
defmodule Secrets do
	def secret_add(num) do
		func_var = fn add_num -> num + add_num end
	end

	def secret_subtract(sub_num) do
		func_var = fn num -> num - sub_num end		
	end

	def secret_multiply(num) do
		func_var = fn mul_num -> num*mul_num end			
	end

	def secret_divide(div) do
		func_var = fn num -> trunc(num/div) end						
	end

	def secret_and(num) do
		func_var = fn badd_num -> band(num, badd_num) end
	end

	def secret_xor(num) do
		func_var = fn xor_num -> bxor(num, xor_num) end
	end

	def secret_combine(fn_1, fn_2) do
		func_var = fn num -> num |> fn_1.() |> fn_2.() end
	end 
end


# usage
# f = Secrets.secret_add(2)
# f.(2)