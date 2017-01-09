local transform;
local gameObject;

SelectAreaPanel = {};
local this = SelectAreaPanel;

--启动事件--
function SelectAreaPanel.Awake(obj)
	gameObject = obj;
	transform = obj.transform;

	this.InitPanel();
	print("Awake lua--->>"..gameObject.name);
end

--初始化面板--
function SelectAreaPanel.InitPanel()
	this.btn = transform:FindChild("Button").gameObject;
	this.btn2 = transform:FindChild("Button2").gameObject;
	this.img = transform:FindChild("Image").gameObject;
end


function SelectAreaPanel.OnDestroy()
	print("OnDestroy---->>>");
end