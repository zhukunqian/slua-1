using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using LuaInterface;
using SLua;
using System;


public class cjson_test : MonoBehaviour
{
	LuaSvr l;


	void Start()
	{
		l = new LuaSvr("cjsonTest");
		// l.start("cjson_test");
	}

	void Update()
	{

	}
}
