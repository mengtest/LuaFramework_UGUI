﻿//this source code was auto-generated by tolua#, do not modify it
using System;
using LuaInterface;

public class DG_Tweening_RotateModeWrap
{
	public static void Register(LuaState L)
	{
		L.BeginEnum(typeof(DG.Tweening.RotateMode));
		L.RegVar("Fast", get_Fast, null);
		L.RegVar("FastBeyond360", get_FastBeyond360, null);
		L.RegVar("WorldAxisAdd", get_WorldAxisAdd, null);
		L.RegVar("LocalAxisAdd", get_LocalAxisAdd, null);
		L.RegFunction("IntToEnum", IntToEnum);
		L.EndEnum();
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_Fast(IntPtr L)
	{
		ToLua.Push(L, DG.Tweening.RotateMode.Fast);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_FastBeyond360(IntPtr L)
	{
		ToLua.Push(L, DG.Tweening.RotateMode.FastBeyond360);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_WorldAxisAdd(IntPtr L)
	{
		ToLua.Push(L, DG.Tweening.RotateMode.WorldAxisAdd);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int get_LocalAxisAdd(IntPtr L)
	{
		ToLua.Push(L, DG.Tweening.RotateMode.LocalAxisAdd);
		return 1;
	}

	[MonoPInvokeCallbackAttribute(typeof(LuaCSFunction))]
	static int IntToEnum(IntPtr L)
	{
		int arg0 = (int)LuaDLL.lua_tonumber(L, 1);
		DG.Tweening.RotateMode o = (DG.Tweening.RotateMode)arg0;
		ToLua.Push(L, o);
		return 1;
	}
}

