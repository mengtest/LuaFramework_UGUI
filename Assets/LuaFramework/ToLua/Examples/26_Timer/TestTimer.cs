using UnityEngine;
using System.Collections;
using LuaInterface;

public class TestTimer : MonoBehaviour
{

    private LuaState lua;

    void Start()
    {
        lua = new LuaState();
        lua.Start();
        LuaBinder.Bind(lua);

        lua.DoFile("Main.lua");
        LuaFunction fun = lua.GetFunction("Main");
        fun.Call();
        fun.Dispose();
        fun = null;
    }
}
