"
Class: OpenAISDKChat

I represent a chat message in the OpenAI SDK.

Responsibilities:
- I store the role of the sender (e.g., user or assistant).
- I store the content of the chat message.
- I can create a new instance of myself with a given role and content.

Collaborators:
- OpenAISDKChat instances: I interact with other instances of myself to represent a conversation.

Example:
- chatMessage := OpenAISDKChat createWithRole: 'user' content: 'Hello, how are you?'
  ""Create a new chat message with the role 'user' and content 'Hello, how are you?'""


[This comment was automatically created with https://github.com/brackendev/OpenAI-Pharo]
"
Class {
	#name : 'OpenAISDKCompletionMessageFunctionCall',
	#superclass : 'Object',
	#instVars : [
		'rawDict'
	],
	#category : 'OpenAI-Model',
	#package : 'OpenAI',
	#tag : 'Model'
}

{ #category : 'instance creation' }
OpenAISDKCompletionMessageFunctionCall class >> newForMessageDict: aDict [

	^ self new
		  rawDict: aDict;
		  yourself
]

{ #category : 'accessing' }
OpenAISDKCompletionMessageFunctionCall >> functionArguments [

	^STONJSON fromString:  (rawDict getPath: #( 'function_call' 'arguments' ))
]

{ #category : 'accessing' }
OpenAISDKCompletionMessageFunctionCall >> functionName [

	^ rawDict getPath: #('function_call' 'name')
]

{ #category : 'accessing' }
OpenAISDKCompletionMessageFunctionCall >> rawDict [

	^ rawDict
]

{ #category : 'accessing' }
OpenAISDKCompletionMessageFunctionCall >> rawDict: anObject [

	rawDict := anObject
]

{ #category : 'accessing' }
OpenAISDKCompletionMessageFunctionCall >> role [

	^ rawDict at: 'role'
]

{ #category : 'as yet unclassified' }
OpenAISDKCompletionMessageFunctionCall >> toDictionary [

	^ rawDict
]
