using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using LuaInterface;
using SLua;
using System;


[CustomLuaClassAttribute]
public class ProtoTest : MonoBehaviour
{
	LuaSvr l;


	void Start()
	{
		l = new LuaSvr("protoTest");
		// l.start("protoTest");
	}

	void Update()
	{

	}

	public static ProtoBuff GetProtoBytes()
	{
		TextAsset at = Resources.Load("protoTest/addressbookBytes") as TextAsset;
		ProtoBuff pb = new ProtoBuff(at.bytes);
		return pb;
	}

	public static void SetProtoBytes( ProtoBuff pb )
	{
		Debug.Log( "proto bytes " + System.Text.Encoding.ASCII.GetString(pb.data) );
	}

	public static string GetProtoTxt()
	{
		TextAsset at = Resources.Load("protoTest/addressbookBytes") as TextAsset;
		return at.text;
	}
}
