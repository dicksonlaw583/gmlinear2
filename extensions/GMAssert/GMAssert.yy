{
    "id": "9f5bb886-3df3-4d22-bc11-1454ef7d0d97",
    "modelName": "GMExtension",
    "mvc": "1.2",
    "name": "GMAssert",
    "IncludedResources": [
        "Scripts\\GMAssert\\__GMA_BREAKPOINT__.gml"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": true,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": 105554163798254,
    "date": "2019-26-20 03:04:20",
    "description": "",
    "exportToGame": true,
    "extensionName": "",
    "files": [
        {
            "id": "0301a0af-0e85-4dea-9899-ef7412e89198",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "GMAssert.gml",
            "final": "",
            "functions": [
                {
                    "id": "9b2e99aa-9e1d-4a6e-bb8f-bfd62061fa52",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "__gma_assert_error__",
                    "help": "__gma_assert_error__(message, expected, got)",
                    "hidden": false,
                    "kind": 11,
                    "name": "__gma_assert_error__",
                    "returnType": 2
                },
                {
                    "id": "4fd81a10-7d85-41d1-ae9a-42fb53ebbfc3",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 2,
                    "args": [
                        1,
                        2
                    ],
                    "externalName": "__gma_assert_error_simple__",
                    "help": "__gma_assert_error_simple__(message, got)",
                    "hidden": false,
                    "kind": 11,
                    "name": "__gma_assert_error_simple__",
                    "returnType": 2
                },
                {
                    "id": "9dce4bc6-25ca-4c08-b774-42ceb39b43ca",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 3,
                    "args": [
                        1,
                        2,
                        2
                    ],
                    "externalName": "__gma_assert_error_raw__",
                    "help": "__gma_assert_error_raw__(message, expected, got)",
                    "hidden": false,
                    "kind": 11,
                    "name": "__gma_assert_error_raw__",
                    "returnType": 2
                },
                {
                    "id": "b50afd4d-088f-4058-808b-8a4fdf6eed9b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "__gma_equal__",
                    "help": "__gma_equal__(got, expected)",
                    "hidden": false,
                    "kind": 11,
                    "name": "__gma_equal__",
                    "returnType": 2
                },
                {
                    "id": "664ff48f-df62-4e78-85b0-6ffed7e9acbf",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "__gma_equalish__",
                    "help": "__gma_equalish__(got, expected)",
                    "hidden": false,
                    "kind": 11,
                    "name": "__gma_equalish__",
                    "returnType": 2
                },
                {
                    "id": "38529596-e753-44bd-9fe0-f4a2f1934f9e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "__gma_greater_than__",
                    "help": "__gma_greater_than__(got, expected)",
                    "hidden": false,
                    "kind": 11,
                    "name": "__gma_greater_than__",
                    "returnType": 2
                },
                {
                    "id": "4829fae7-8568-491d-8d63-5a75386dc910",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "__gma_less_than__",
                    "help": "__gma_less_than__(got, expected)",
                    "hidden": false,
                    "kind": 11,
                    "name": "__gma_less_than__",
                    "returnType": 2
                },
                {
                    "id": "fa1c13c8-0217-4741-8bcb-069fccf79c73",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "__gma_greater_than_or_equal__",
                    "help": "__gma_greater_than_or_equal__(got, expected)",
                    "hidden": false,
                    "kind": 11,
                    "name": "__gma_greater_than_or_equal__",
                    "returnType": 2
                },
                {
                    "id": "8ddeb51c-6c17-4775-855d-ebcf33c434a0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "__gma_less_than_or_equal__",
                    "help": "__gma_less_than_or_equal__(got, expected)",
                    "hidden": false,
                    "kind": 11,
                    "name": "__gma_less_than_or_equal__",
                    "returnType": 2
                },
                {
                    "id": "8f1e20fd-da8e-4304-97e8-8f88252c39fc",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "__gma_debug_value__",
                    "help": "__gma_debug_value__(val, [noprefix])",
                    "hidden": false,
                    "kind": 11,
                    "name": "__gma_debug_value__",
                    "returnType": 2
                },
                {
                    "id": "a7074681-145c-4387-988f-30e9c46b105a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        2
                    ],
                    "externalName": "__gma_debug_list_value__",
                    "help": "__gma_debug_list_value__(val)",
                    "hidden": false,
                    "kind": 11,
                    "name": "__gma_debug_list_value__",
                    "returnType": 2
                },
                {
                    "id": "c5229f8e-3a9a-436b-bac6-7f6b85a9d346",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert",
                    "help": "assert(got, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert",
                    "returnType": 2
                },
                {
                    "id": "6fe9bcc3-21e4-4a81-9ad9-78aa6f163862",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_fail",
                    "help": "assert_fail(got, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_fail",
                    "returnType": 2
                },
                {
                    "id": "7d18d848-3951-4de2-9e02-c25afb8fef80",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_operation",
                    "help": "assert_operation(got, expected, op, invert, [msg], [debug_got], [debug_expected])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_operation",
                    "returnType": 2
                },
                {
                    "id": "80e1e315-e92e-4b85-8871-cc8b6bab2542",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_equal",
                    "help": "assert_equal(got, expected, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_equal",
                    "returnType": 2
                },
                {
                    "id": "2df8458c-3c7f-4787-88fc-c5eda82d414c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_equalish",
                    "help": "assert_equalish(got, expected, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_equalish",
                    "returnType": 2
                },
                {
                    "id": "7f0871c0-13ab-4405-8685-9accff5e36fb",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_is",
                    "help": "assert_is(got, expected, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_is",
                    "returnType": 2
                },
                {
                    "id": "84d4c3ed-170b-4885-9d15-a27968686a07",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_not_equal",
                    "help": "assert_not_equal(got, expected, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_not_equal",
                    "returnType": 2
                },
                {
                    "id": "3fb1f789-d157-43aa-84fe-830463a37266",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_not_equalish",
                    "help": "assert_not_equalish(got, expected, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_not_equalish",
                    "returnType": 2
                },
                {
                    "id": "2e79db88-9373-4a31-aba9-f73bfc8a9f88",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_isnt",
                    "help": "assert_isnt(got, expected, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_isnt",
                    "returnType": 2
                },
                {
                    "id": "7129b9bc-3bca-4a95-a178-91b7db5fb89e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_greater_than",
                    "help": "assert_greater_than(got, expected, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_greater_than",
                    "returnType": 2
                },
                {
                    "id": "06a10b4f-0a10-413b-8d0e-4262500f78ac",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_less_than",
                    "help": "assert_less_than(got, expected, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_less_than",
                    "returnType": 2
                },
                {
                    "id": "094dba99-cba4-4c2d-8cf8-c52d2c85e6aa",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_greater_than_or_equal",
                    "help": "assert_greater_than_or_equal(got, expected, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_greater_than_or_equal",
                    "returnType": 2
                },
                {
                    "id": "1baca053-e534-42ab-8dad-2c5a04182eb7",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_less_than_or_equal",
                    "help": "assert_less_than_or_equal(got, expected, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_less_than_or_equal",
                    "returnType": 2
                },
                {
                    "id": "05315ad4-1720-4df6-a77f-b871080c743c",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_is_string",
                    "help": "assert_is_string(got, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_is_string",
                    "returnType": 2
                },
                {
                    "id": "96078b16-0920-4a52-8d9c-de7863a28b6b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_is_real",
                    "help": "assert_is_real(got, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_is_real",
                    "returnType": 2
                },
                {
                    "id": "be5a75e4-4f5d-4754-9eb9-5605b6327b9d",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_is_array",
                    "help": "assert_is_array(got, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_is_array",
                    "returnType": 2
                },
                {
                    "id": "ed53a1e7-6822-498a-b20a-f30a4a17946f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_is_defined",
                    "help": "assert_is_defined(got, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_is_defined",
                    "returnType": 2
                },
                {
                    "id": "e9866caf-83f3-4645-b079-0279b7950bf0",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_isnt_string",
                    "help": "assert_isnt_string(got, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_isnt_string",
                    "returnType": 2
                },
                {
                    "id": "d27477cf-bdc9-42d0-8836-c3fc56cb08c2",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_isnt_real",
                    "help": "assert_isnt_real(got, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_isnt_real",
                    "returnType": 2
                },
                {
                    "id": "efa822d5-428e-4ba2-b77d-10ba629db4fd",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_isnt_array",
                    "help": "assert_isnt_array(got, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_isnt_array",
                    "returnType": 2
                },
                {
                    "id": "362336ac-30b8-429f-a60d-04e329cbad19",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_isnt_defined",
                    "help": "assert_isnt_defined(got, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_isnt_defined",
                    "returnType": 2
                },
                {
                    "id": "d9de3618-6d98-4696-b1f2-4664c67d575b",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_in_range",
                    "help": "assert_in_range(got, lower, upper, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_in_range",
                    "returnType": 2
                },
                {
                    "id": "3340dc4c-0996-4fcf-aba0-a8a469094b55",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_not_in_range",
                    "help": "assert_not_in_range(got, lower, upper, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_not_in_range",
                    "returnType": 2
                },
                {
                    "id": "bd3cef0c-2006-4305-b7e0-dee3a923f8ea",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_contains",
                    "help": "assert_contains(got, content, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_contains",
                    "returnType": 2
                },
                {
                    "id": "4d48d44a-e502-4644-aa0d-80eab88a0b87",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_contains_exact",
                    "help": "assert_contains_exact(got, content, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_contains_exact",
                    "returnType": 2
                },
                {
                    "id": "1aff532d-9a13-4d40-a955-53cd1b242706",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_doesnt_contain",
                    "help": "assert_doesnt_contain(got, content, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_doesnt_contain",
                    "returnType": 2
                },
                {
                    "id": "fa925ec8-c214-458c-ae40-a26983320b68",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "assert_doesnt_contain_exact",
                    "help": "assert_doesnt_contain_exact(got, content, [msg])",
                    "hidden": false,
                    "kind": 11,
                    "name": "assert_doesnt_contain_exact",
                    "returnType": 2
                }
            ],
            "init": "",
            "kind": 2,
            "order": [
                
            ],
            "origname": "extensions\\GMAssert.gml",
            "uncompress": false
        },
        {
            "id": "179978ee-7b25-4d5a-9ee8-3da6557ccbf7",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                {
                    "id": "0187cab4-ea8c-4cc4-b51f-2b38e04113ed",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GMASSERT_ENABLED",
                    "hidden": true,
                    "value": "true"
                },
                {
                    "id": "352dbab5-2974-4317-bedc-c36d1cfa2336",
                    "modelName": "GMExtensionConstant",
                    "mvc": "1.0",
                    "constantName": "GMASSERT_TOLERANCE",
                    "hidden": true,
                    "value": "0.000001"
                }
            ],
            "copyToTargets": 9223372036854775807,
            "filename": "GMAssert.ext",
            "final": "",
            "functions": [
                
            ],
            "init": "",
            "kind": 4,
            "order": [
                
            ],
            "origname": "extensions\\GMAssert.ext",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": true,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "options": null,
    "optionsFile": "options.json",
    "packageID": "",
    "productID": "",
    "sourcedir": "",
    "supportedTargets": 105554163798254,
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "2.0.0"
}