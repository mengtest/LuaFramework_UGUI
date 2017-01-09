--TranScriptInfo.lua

TranScriptInfo = 
{
	id = "0",
	areaName = "0",
	scriptName = "0",
	scriptIcon = "0",
	scriptTable = "0",
	scriptScene = "0"
};
TranScriptInfo.__index = TranScriptInfo

function TranScriptInfo:new(id,areaName,scriptName,scriptIcon,scriptTable,scriptScene)
	local o = {};
	setmetatable(o,self);
	o.id = id;
	o.areaName = areaName;
	o.scriptName = scriptName;
	o.scriptIcon = scriptIcon;
	o.scriptTable = scriptTable;
	o.scriptScene = scriptScene;
	return o;
end