using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public delegate void TimerCallBack(float time);
public delegate void TimerOverCall(float time);
public class TimerInfo
{
    public bool stop;                       //停止
    public bool delete;                     //删除


    public int timerID;                     //计时间ID
    public int m_Repeats;                   //重复次数
    public float m_TimeInterval;            //时间间隔
    public float m_TempTimeVal;             //临时计算时间   
    public TimerCallBack m_Callback;        //回调
    public TimerOverCall m_timeOverCall;    //倒计时结束回调


    public TimerInfo(int itemID, int Repeats, int TimeInterval, TimerCallBack callBack, TimerOverCall overCall = null)
    {
        this.timerID = itemID;
        this.m_Repeats = Repeats;
        this.m_TimeInterval = TimeInterval;
        this.m_Callback = callBack;
        this.m_timeOverCall = overCall;
        m_TempTimeVal = 0;
        stop = false;
        delete = false;
    }


}