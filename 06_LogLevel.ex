defmodule LogLevel do
	#arg1 Log Code, #arg2 legacy support 
	def to_label(ulogcode, blegacysupport) do
		if (ulogcode > 5) or (ulogcode < 0) do 
			:unknown 
		else
			case {ulogcode, blegacysupport} do
				{0, false} -> :trace
				{1, _}     -> :debug
				{2, _}     -> :info
				{3, _}     -> :warning
				{4, _}     -> :error
				{5, false} -> :fatal
				_          -> :unknown
			end
		end
	end

	def alert_recipient(ulogcode, blegacysupport) do
		case to_label(ulogcode, blegacysupport) do
			:error -> :ops
			:fatal -> :ops
			:unknown -> 
				if blegacysupport == true, do: :dev1, else: :dev2
            _ -> false
		end
	end
end

# usage
# iex(3)> LogLevel.to_label(1, true)
# iex(4)> LogLevel.to_label(11, true)
