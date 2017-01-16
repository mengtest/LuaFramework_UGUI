--主入口函数。从这里开始lua逻辑
require "UnityEngine/Vector3"
require "Common/define"

function Main()					
	--AddEvent();
	--DoTween();
	TestTimer();
end

function TestTimer()
	print(MTimerManager.Instance);
	MTimerManager.Instance:StartTimer(0.1);
	
end

function DoTween()
	local go = GameObject.Find("Cube");
	local sequence =  DG.Tweening.DOTween.Sequence();
	sequence:Append(go.transform:DOMove(Vector3.New(10,0,0),3,false))
	:SetEase(DG.Tweening.Ease.Linear);
	sequence:OnComplete(Complete);
	--sequence:SetLoops(-1,DG.Tweening.LoopType.Yoyo);
end

function Complete()
	print("222");
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