{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ -8.0, 51.0, 1920.0, 1037.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 15,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "test",
		"subpatcher_template" : "myTrackTemplate",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-24",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 26.0, 445.0, 150.0, 48.0 ],
					"text" : "Based on Andy Franell,\nAdapted & Modified by Patrik Lechner 2023"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 202.0, 494.5, 54.0, 22.0 ],
					"text" : "mc.dac~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 436.5, 227.5, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 436.5, 258.5, 94.0, 22.0 ],
					"text" : "deviate 0.01 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 436.5, 285.0, 108.0, 22.0 ],
					"text" : "mc.sig~ @chans 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"lastchannelcount" : 4,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"orientation" : 1,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 202.0, 227.5, 186.0, 59.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "mc.live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"lastchannelcount" : 2,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 202.0, 350.5, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "mc.live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 202.0, 302.0, 164.0, 22.0 ],
					"text" : "mc.mixdown~ 2 @autogain 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patching_rect" : [ 202.0, 189.5, 70.0, 22.0 ],
					"text" : "mc.pack~ 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 425.0, 98.0, 88.0, 22.0 ],
					"text" : "onepole~ 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 365.0, 69.0, 48.0, 22.0 ],
					"text" : "fireGen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 365.0, 113.0, 29.5, 22.0 ],
					"text" : "-~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 254.0, 113.0, 106.0, 22.0 ],
					"text" : "reson~ 1 2600 1.4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 137.5, 113.0, 106.0, 22.0 ],
					"text" : "reson~ 1 1200 1.6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 24.0, 113.0, 99.0, 22.0 ],
					"text" : "reson~ 1 600 1.2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 254.0, 69.0, 48.0, 22.0 ],
					"text" : "fireGen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 137.5, 69.0, 48.0, 22.0 ],
					"text" : "fireGen"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 24.0, 69.0, 48.0, 22.0 ],
					"text" : "fireGen"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 2 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 3 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 1 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-13" : [ "mc.live.gain~", "mc.live.gain~", 0 ],
			"obj-14" : [ "mc.live.gain~[1]", "mc.live.gain~", 0 ],
			"obj-1::obj-24" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-1::obj-4" : [ "live.gain~", "live.gain~", 0 ],
			"obj-1::obj-45" : [ "live.gain~[2]", "live.gain~", 0 ],
			"obj-2::obj-24" : [ "live.gain~[8]", "live.gain~", 0 ],
			"obj-2::obj-4" : [ "live.gain~[6]", "live.gain~", 0 ],
			"obj-2::obj-45" : [ "live.gain~[7]", "live.gain~", 0 ],
			"obj-3::obj-24" : [ "live.gain~[10]", "live.gain~", 0 ],
			"obj-3::obj-4" : [ "live.gain~[11]", "live.gain~", 0 ],
			"obj-3::obj-45" : [ "live.gain~[9]", "live.gain~", 0 ],
			"obj-8::obj-24" : [ "live.gain~[12]", "live.gain~", 0 ],
			"obj-8::obj-4" : [ "live.gain~[13]", "live.gain~", 0 ],
			"obj-8::obj-45" : [ "live.gain~[14]", "live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-2::obj-24" : 				{
					"parameter_longname" : "live.gain~[8]"
				}
,
				"obj-2::obj-4" : 				{
					"parameter_longname" : "live.gain~[6]"
				}
,
				"obj-2::obj-45" : 				{
					"parameter_longname" : "live.gain~[7]"
				}
,
				"obj-3::obj-24" : 				{
					"parameter_longname" : "live.gain~[10]"
				}
,
				"obj-3::obj-4" : 				{
					"parameter_longname" : "live.gain~[11]"
				}
,
				"obj-3::obj-45" : 				{
					"parameter_longname" : "live.gain~[9]"
				}
,
				"obj-8::obj-24" : 				{
					"parameter_longname" : "live.gain~[12]"
				}
,
				"obj-8::obj-4" : 				{
					"parameter_longname" : "live.gain~[13]"
				}
,
				"obj-8::obj-45" : 				{
					"parameter_longname" : "live.gain~[14]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "fireGen.maxpat",
				"bootpath" : "~/Documents/PROJECTS/ELAK/designingSound/fire",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "test",
				"default" : 				{
					"accentcolor" : [ 0.309803921568627, 0.309803921568627, 0.309803921568627, 1.0 ],
					"bgcolor" : [ 0.156863, 0.156863, 0.196078, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 269.577713564497685,
						"autogradient" : 0.0,
						"color" : [ 0.192156862745098, 0.215686274509804, 0.23921568627451, 1.0 ],
						"color1" : [ 0.192156862745098, 0.215686274509804, 0.23921568627451, 1.0 ],
						"color2" : [ 0.117536, 0.116592, 0.144338, 1.0 ],
						"proportion" : 0.39,
						"pt1" : [ 0.504951, 0.278261 ],
						"pt2" : [ 0.5, 0.95 ],
						"type" : "gradient"
					}
,
					"color" : [ 0.792156862745098, 0.415686274509804, 0.0, 1.0 ],
					"editing_bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"elementcolor" : [ 0.304814, 0.254902, 0.278431, 1.0 ],
					"fontname" : [ "Arial" ],
					"locked_bgcolor" : [ 0.2, 0.2, 0.2, 1.0 ],
					"textcolor" : [ 0.643137254901961, 0.643137254901961, 0.643137254901961, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
