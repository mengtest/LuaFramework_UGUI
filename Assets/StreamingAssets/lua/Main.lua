--主入口函数。从这里开始lua逻辑

require "Common/define"

function Main()					
	--AddEvent();
end

--场景切换通知
function OnLevelWasLoaded(level)
	Time.timeSinceLevelLoad = 0
end

function AddEvent()
	local btn=GameObject.Find("btn");
	EventTriggerListener.Get(btn).onPointerClick = EventTriggerListener.Get(btn).onPointerClick+Onclick;
end

function Onclick(obj)
	print('lua click trigger! from GameObject:'.. obj.name);
end