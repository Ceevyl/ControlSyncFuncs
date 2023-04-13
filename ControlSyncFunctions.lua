local function ControlSyncFunctions(...) 

	if table.getn(arg) == 0 then

		return false;

	end

	local Threads = {};
	local FuncParam = {};

	for i = 1, table.getn(arg) do

		Threads[i] = coroutine.create( arg[i] )

	end

	for i = 1, table.getn(Threads) do

		if coroutine.status(Threads[i]) ~= 'dead' then
		
			coroutine.resume( Threads[i], Threads )

		end

	end

	return;
end

