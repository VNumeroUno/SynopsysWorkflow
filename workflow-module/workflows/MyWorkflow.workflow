{
	"contents": {
		"a3e1d065-59f1-4602-8587-8847e3d6482b": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "cis.myworkflow",
			"subject": "MyWorkflow",
			"name": "MyWorkflow",
			"documentation": "",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start Workflow"
				},
				"2798f4e7-bc42-4fad-a248-159095a2f40a": {
					"name": "Email Notified"
				}
			},
			"activities": {
				"3a35bddb-cf3f-491d-b063-e53a26f98f84": {
					"name": "Ariba Supplier Registration"
				},
				"56b4591c-845a-460d-a0ff-ea697082d181": {
					"name": "prepareSupplierRegistration"
				}
			},
			"sequenceFlows": {
				"845b97f2-aee8-47fb-9f06-62cd2d0107a8": {
					"name": "SequenceFlow3"
				},
				"0aa5d02e-4def-4d13-9790-85d4487d9f4e": {
					"name": "SequenceFlow4"
				},
				"a5aaf087-df4b-4d3f-8a49-86bb91936599": {
					"name": "SequenceFlow5"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start Workflow",
			"sampleContextRefs": {
				"b0b36ae7-c2ba-4f55-a830-79350ba1499a": {}
			}
		},
		"2798f4e7-bc42-4fad-a248-159095a2f40a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "Email Notified",
			"eventDefinitions": {
				"1c594148-3a16-447b-a93d-e4514ac88371": {}
			}
		},
		"3a35bddb-cf3f-491d-b063-e53a26f98f84": {
			"classDefinition": "com.sap.bpm.wfs.MailTask",
			"destinationSource": "consumer",
			"id": "mailtask1",
			"name": "Ariba Supplier Registration",
			"mailDefinitionRef": "f324925f-621e-4d5f-944b-42a6d416fd55"
		},
		"56b4591c-845a-460d-a0ff-ea697082d181": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/MyWorkflow/prepareSupplierRegsitration.js",
			"id": "scripttask1",
			"name": "prepareSupplierRegistration"
		},
		"845b97f2-aee8-47fb-9f06-62cd2d0107a8": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "3a35bddb-cf3f-491d-b063-e53a26f98f84",
			"targetRef": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"0aa5d02e-4def-4d13-9790-85d4487d9f4e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "56b4591c-845a-460d-a0ff-ea697082d181"
		},
		"a5aaf087-df4b-4d3f-8a49-86bb91936599": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow5",
			"name": "SequenceFlow5",
			"sourceRef": "56b4591c-845a-460d-a0ff-ea697082d181",
			"targetRef": "3a35bddb-cf3f-491d-b063-e53a26f98f84"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"53e54950-7757-4161-82c9-afa7e86cff2c": {},
				"9ec0525d-aae3-412e-aec1-3fb6af725a32": {},
				"9015a5cc-3a3c-4958-80b2-49502b59b809": {},
				"f7d4870d-44ff-4b38-9106-d55dab6cefd9": {},
				"7a021ffd-536e-4dee-b80c-93842db62215": {},
				"849c919d-7ffc-4ef5-9afb-2084704f77aa": {}
			}
		},
		"b0b36ae7-c2ba-4f55-a830-79350ba1499a": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/AribaSupplierSample.json",
			"id": "default-start-context"
		},
		"1c594148-3a16-447b-a93d-e4514ac88371": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 100,
			"y": 100,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"53e54950-7757-4161-82c9-afa7e86cff2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 542,
			"y": 86,
			"width": 35,
			"height": 35,
			"object": "2798f4e7-bc42-4fad-a248-159095a2f40a"
		},
		"9ec0525d-aae3-412e-aec1-3fb6af725a32": {
			"classDefinition": "com.sap.bpm.wfs.ui.MailTaskSymbol",
			"x": 338,
			"y": 91,
			"width": 100,
			"height": 60,
			"object": "3a35bddb-cf3f-491d-b063-e53a26f98f84"
		},
		"9015a5cc-3a3c-4958-80b2-49502b59b809": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "387.75,121.75 490.25,121.75 490.25,102.75 559.75,102.75",
			"sourceSymbol": "9ec0525d-aae3-412e-aec1-3fb6af725a32",
			"targetSymbol": "53e54950-7757-4161-82c9-afa7e86cff2c",
			"object": "845b97f2-aee8-47fb-9f06-62cd2d0107a8"
		},
		"f7d4870d-44ff-4b38-9106-d55dab6cefd9": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 187,
			"y": 86,
			"width": 100,
			"height": 60,
			"object": "56b4591c-845a-460d-a0ff-ea697082d181"
		},
		"7a021ffd-536e-4dee-b80c-93842db62215": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "116,116 237,116",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "f7d4870d-44ff-4b38-9106-d55dab6cefd9",
			"object": "0aa5d02e-4def-4d13-9790-85d4487d9f4e"
		},
		"849c919d-7ffc-4ef5-9afb-2084704f77aa": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "237,118.5 388,118.5",
			"sourceSymbol": "f7d4870d-44ff-4b38-9106-d55dab6cefd9",
			"targetSymbol": "9ec0525d-aae3-412e-aec1-3fb6af725a32",
			"object": "a5aaf087-df4b-4d3f-8a49-86bb91936599"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"maildefinition": 1,
			"sequenceflow": 5,
			"startevent": 1,
			"endevent": 1,
			"scripttask": 1,
			"mailtask": 1
		},
		"f324925f-621e-4d5f-944b-42a6d416fd55": {
			"classDefinition": "com.sap.bpm.wfs.MailDefinition",
			"name": "maildefinition1",
			"to": "smishra@convergentis.com",
			"subject": "Invitation: Register to become a supplier with Synopsys, Inc.",
			"reference": "/webcontent/synopsysAribaSupplierOnboard.html",
			"id": "maildefinition1"
		}
	}
}