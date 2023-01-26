{
	"contents": {
		"38e84865-0e72-4da4-916c-a150c85a6d10": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "com.wfbatch3.prworkflow",
			"subject": "prworkflow",
			"name": "prworkflow",
			"documentation": "ep my first workflow ",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "StartEvent1"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "EndEvent1"
				}
			},
			"activities": {
				"51c797ee-2292-4d1a-b309-13187077b85d": {
					"name": "UserTask1"
				},
				"01ce53fb-962a-4d0e-901b-31635485e15e": {
					"name": "Accept"
				},
				"2c97bcca-9a17-42bd-b61e-71f6ea12fad2": {
					"name": "reject"
				},
				"7a2afe25-ae08-4139-b864-6df44657c791": {
					"name": "ExclusiveGateway1"
				},
				"fc7738cb-c5b8-456c-bf67-7a29b46f39cd": {
					"name": "ServiceTask1"
				}
			},
			"sequenceFlows": {
				"891adb2d-9b4c-449c-857b-db8368d5533b": {
					"name": "accept"
				},
				"92a388ca-00d4-4d1c-8008-4ae9378eda5a": {
					"name": "SequenceFlow4"
				},
				"70df04b1-8fb2-4980-a35b-24d8390768cb": {
					"name": "SequenceFlow5"
				},
				"349ed639-99fe-4f9b-8c19-9dac6ba3f0a0": {
					"name": "SequenceFlow6"
				},
				"5567354c-f8b1-4846-b7af-400d7a1dc874": {
					"name": "SequenceFlow7"
				},
				"9874aff9-4430-49ac-af99-d42f89be36d2": {
					"name": "SequenceFlow8"
				},
				"826c7d1b-e970-4285-9527-510766d211a3": {
					"name": "SequenceFlow9"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "StartEvent1"
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "EndEvent1"
		},
		"51c797ee-2292-4d1a-b309-13187077b85d": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "EP PR Workflow",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "anbalagan.sindhuja@gmail.com",
			"formReference": "/forms/prworkflow/myform.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "myform"
			}, {
				"key": "formRevision",
				"value": "v1"
			}],
			"id": "usertask1",
			"name": "UserTask1"
		},
		"01ce53fb-962a-4d0e-901b-31635485e15e": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/prworkflow/accept.js",
			"id": "scripttask1",
			"name": "Accept"
		},
		"2c97bcca-9a17-42bd-b61e-71f6ea12fad2": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/prworkflow/reject.js",
			"id": "scripttask2",
			"name": "reject"
		},
		"7a2afe25-ae08-4139-b864-6df44657c791": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "ExclusiveGateway1",
			"default": "349ed639-99fe-4f9b-8c19-9dac6ba3f0a0"
		},
		"891adb2d-9b4c-449c-857b-db8368d5533b": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision==\"accept\"}",
			"id": "sequenceflow2",
			"name": "accept",
			"sourceRef": "7a2afe25-ae08-4139-b864-6df44657c791",
			"targetRef": "01ce53fb-962a-4d0e-901b-31635485e15e"
		},
		"92a388ca-00d4-4d1c-8008-4ae9378eda5a": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "51c797ee-2292-4d1a-b309-13187077b85d",
			"targetRef": "7a2afe25-ae08-4139-b864-6df44657c791"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"c07446a6-0b4f-44a8-9bea-aef1f4b1f678": {},
				"0c58589c-41f3-4c05-8882-b93944ac95dd": {},
				"e9e4d1de-6269-4e61-b478-46a9197880e8": {},
				"a36eee14-ad3a-438b-bc21-b7e0ae42e798": {},
				"aa73f743-33a8-493e-9dbd-2f9fbf7972d5": {},
				"58c4d237-f763-40f2-8640-bca53ca85a47": {},
				"5429a544-6981-4825-82cf-194864de159a": {},
				"aab55167-1133-4d5f-9841-110f896b2c4e": {},
				"337684e6-e4d8-44e9-99e7-a70f30930ed2": {},
				"8871a919-114b-4e4e-b06f-1001a75c7ace": {},
				"7a0e5da3-27a8-4cb1-ae09-002564af0a3e": {},
				"cb932891-471a-4b6f-b95f-ac97057ffbd0": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 23,
			"y": 95,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 638,
			"y": 127,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"c07446a6-0b4f-44a8-9bea-aef1f4b1f678": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 84,
			"y": 85,
			"width": 100,
			"height": 60,
			"object": "51c797ee-2292-4d1a-b309-13187077b85d"
		},
		"0c58589c-41f3-4c05-8882-b93944ac95dd": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 398,
			"y": 35,
			"width": 100,
			"height": 60,
			"object": "01ce53fb-962a-4d0e-901b-31635485e15e"
		},
		"e9e4d1de-6269-4e61-b478-46a9197880e8": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 392,
			"y": 233,
			"width": 100,
			"height": 60,
			"object": "2c97bcca-9a17-42bd-b61e-71f6ea12fad2"
		},
		"a36eee14-ad3a-438b-bc21-b7e0ae42e798": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 242,
			"y": 94,
			"object": "7a2afe25-ae08-4139-b864-6df44657c791"
		},
		"aa73f743-33a8-493e-9dbd-2f9fbf7972d5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "263,115 341,115 341,55 415,55",
			"sourceSymbol": "a36eee14-ad3a-438b-bc21-b7e0ae42e798",
			"targetSymbol": "0c58589c-41f3-4c05-8882-b93944ac95dd",
			"object": "891adb2d-9b4c-449c-857b-db8368d5533b"
		},
		"58c4d237-f763-40f2-8640-bca53ca85a47": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "134,115 259,115",
			"sourceSymbol": "c07446a6-0b4f-44a8-9bea-aef1f4b1f678",
			"targetSymbol": "a36eee14-ad3a-438b-bc21-b7e0ae42e798",
			"object": "92a388ca-00d4-4d1c-8008-4ae9378eda5a"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 9,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1,
			"scripttask": 2,
			"exclusivegateway": 1
		},
		"70df04b1-8fb2-4980-a35b-24d8390768cb": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "51c797ee-2292-4d1a-b309-13187077b85d"
		},
		"5429a544-6981-4825-82cf-194864de159a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "39,111 69.75,111 69.75,119 122,119",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "c07446a6-0b4f-44a8-9bea-aef1f4b1f678",
			"object": "70df04b1-8fb2-4980-a35b-24d8390768cb"
		},
		"349ed639-99fe-4f9b-8c19-9dac6ba3f0a0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "7a2afe25-ae08-4139-b864-6df44657c791",
			"targetRef": "2c97bcca-9a17-42bd-b61e-71f6ea12fad2"
		},
		"aab55167-1133-4d5f-9841-110f896b2c4e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "263,115 263,263 392.5,263",
			"sourceSymbol": "a36eee14-ad3a-438b-bc21-b7e0ae42e798",
			"targetSymbol": "e9e4d1de-6269-4e61-b478-46a9197880e8",
			"object": "349ed639-99fe-4f9b-8c19-9dac6ba3f0a0"
		},
		"fc7738cb-c5b8-456c-bf67-7a29b46f39cd": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "wfdest12",
			"destinationSource": "consumer",
			"path": "/wfpost",
			"httpMethod": "POST",
			"requestVariable": "${context.data}",
			"id": "servicetask1",
			"name": "ServiceTask1"
		},
		"337684e6-e4d8-44e9-99e7-a70f30930ed2": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 492,
			"y": 127,
			"width": 100,
			"height": 60,
			"object": "fc7738cb-c5b8-456c-bf67-7a29b46f39cd"
		},
		"5567354c-f8b1-4846-b7af-400d7a1dc874": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "01ce53fb-962a-4d0e-901b-31635485e15e",
			"targetRef": "fc7738cb-c5b8-456c-bf67-7a29b46f39cd"
		},
		"8871a919-114b-4e4e-b06f-1001a75c7ace": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "448,65 548.5,65 548.5,111 441.5,111 441.5,149 539,149",
			"sourceSymbol": "0c58589c-41f3-4c05-8882-b93944ac95dd",
			"targetSymbol": "337684e6-e4d8-44e9-99e7-a70f30930ed2",
			"object": "5567354c-f8b1-4846-b7af-400d7a1dc874"
		},
		"9874aff9-4430-49ac-af99-d42f89be36d2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "2c97bcca-9a17-42bd-b61e-71f6ea12fad2",
			"targetRef": "fc7738cb-c5b8-456c-bf67-7a29b46f39cd"
		},
		"7a0e5da3-27a8-4cb1-ae09-002564af0a3e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "442,263 442,209.75 530,209.75 530,162",
			"sourceSymbol": "e9e4d1de-6269-4e61-b478-46a9197880e8",
			"targetSymbol": "337684e6-e4d8-44e9-99e7-a70f30930ed2",
			"object": "9874aff9-4430-49ac-af99-d42f89be36d2"
		},
		"826c7d1b-e970-4285-9527-510766d211a3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "SequenceFlow9",
			"sourceRef": "fc7738cb-c5b8-456c-bf67-7a29b46f39cd",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"cb932891-471a-4b6f-b95f-ac97057ffbd0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "542,157 615.25,157 615.25,144.5 655.5,144.5",
			"sourceSymbol": "337684e6-e4d8-44e9-99e7-a70f30930ed2",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "826c7d1b-e970-4285-9527-510766d211a3"
		}
	}
}