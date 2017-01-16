using UnityEngine;
using System.Collections;
using DG.Tweening;
using LuaInterface;

public class DoTweenTest : MonoBehaviour {
    private LuaState lua;
    
    void Start ()
    {
        lua = new LuaState();
        lua.Start();
        LuaBinder.Bind(lua);

        lua.DoFile("Main.lua");

        LuaFunction main = lua.GetFunction("Main");
        main.Call();
        main.Dispose();
        main = null;

        //var sequeen = DOTween.Sequence();
        //sequeen.Append(transform.DOLocalMove(new Vector3(1, 1, 1), 3, false))
        //    .SetEase(Ease.Linear)
        //    .SetLoops(-1, LoopType.Yoyo)
        //    .OnComplete(
        //        delegate ()
        //        {
        //            print("111");
        //        });
        //Debug.Log("22222");
        //sequeen.OnComplete(delegate () { Debug.LogError("22"); });
    }

}
