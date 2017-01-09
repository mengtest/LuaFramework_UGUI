--UITranScript.lua

UITranScript = 
{
	gameObject = "0",
	data = 0,
};
UITranScript.__index = UITranScript

function UITranScript:new(gameObject, data)
	local o = {};
	setmetatable(o,self);
	o.gameObject = gameObject;
	o.data = data;
	return o;
end