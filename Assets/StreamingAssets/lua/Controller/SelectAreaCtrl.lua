﻿require "Controller/SelectTranScriptCtrl"
require "View/SelectAreaPanel"
--require "Common/define"
require "View/SelectTranScriptPanel"

require "3rd/pblua/login_pb"
require "3rd/pbc/protobuf"

local sproto = require "3rd/sproto/sproto"
local core = require "sproto.core"
local print_r = require "3rd/sproto/print_r"

SelectAreaCtrl = {};
local this = SelectAreaCtrl;

local panel;
local prompt;
local transform;
local gameObject;

--构建函数--
function SelectAreaCtrl.New()
	return this;
end

function SelectAreaCtrl.Awake()
	print("SelectAreaCtrl.Awake--->>");
	--panelMgr:CreatePanel('_selectAreaPanel', this.OnCreate);
	resMgr:LoadPrefab("selectarea",{"_selectAreaPanel"},this.OnCreate);
end

--启动事件--
function SelectAreaCtrl.OnCreate(objs)

		
	gameObject = objs[0];
	transform = objs[0].transform;
	
    local go=GameObject.Instantiate(objs[0]);	
	local parent=GameObject.Find("Canvas");
	go.transform:SetParent(parent.transform);
	go.transform:GetComponent("RectTransform").anchoredPosition = Vector2.New(0,0);
	go.transform:GetComponent("RectTransform").sizeDelta = Vector2.New(0,0);
	go.transform:GetComponent("RectTransform").localScale = Vector3.New(1,1,1);
	
	--SelectAreaPanel.Awake(objs[0]);
	--prompt = transform:GetComponent('LuaBehaviour');
	--prompt:AddClick(SelectAreaPanel.btn, this.OnClick);
	--prompt:AddClick(SelectAreaPanel.btn2, this.OnClick);
	--resMgr:LoadPrefab('prompt', { 'PromptItem' }, this.InitPanel);

    btn=gameObject.Find("Button")
	Listener=EventTriggerListener.Get(btn);
	Listener.onPointerClick=Listener.onPointerClick+SelectAreaCtrl.OnClick;
	 
    --btn2=gameObject.Find("Button2")
	--Listener=EventTriggerListener.Get(btn2);
	--Listener.onPointerClick=Listener.onPointerClick+SelectAreaCtrl.OnClick;
	
    img=gameObject.Find("Image")
	Listener = EventTriggerListener.Get(img);
	Listener.onPointerClick = Listener.onPointerClick + SelectAreaCtrl.A;
	Listener.onDrag = Listener.onDrag + SelectAreaCtrl.B;

end

function SelectAreaCtrl.A(g)
	print("aaaaaaaaaa");
end

function SelectAreaCtrl.B(g)
	print("bbbbbbbbbbb");
end

--初始化面板--
function SelectAreaCtrl.InitPanel(objs)
	local count = 100; 
	local parent = PromptPanel.gridParent;
	for i = 1, count do
		local go = newObject(objs[0]);
		go.name = 'Item'..tostring(i);
		go.transform:SetParent(parent);
		go.transform.localScale = Vector3.one;
		go.transform.localPosition = Vector3.zero;
        prompt:AddClick(go, this.OnItemClick);

	    local label = go.transform:FindChild('Text');
	    label:GetComponent('Text').text = tostring(i);
	end
end

--滚动项单击--
function SelectAreaCtrl.OnItemClick(go)
    log(go.name);
end

--单击事件--
function SelectAreaCtrl.OnClick(go)	
	if go == btn then 
		SelectTranScriptCtrl.Open("1",SelectTranScriptPanel);
	elseif go == btn2 then 
		SelectTranScriptCtrl.Open("2",SelectTranScriptPanel);
	end
end