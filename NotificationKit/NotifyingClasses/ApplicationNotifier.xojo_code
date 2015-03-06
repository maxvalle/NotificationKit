#tag Class
Protected Class ApplicationNotifier
Inherits Application
	#tag Event
		Sub Activate()
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationWillActivate, self )
		  
		  raiseEvent Activate
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationDidActivate, self )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Close()
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationWillClose, self )
		  
		  raiseEvent Close
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationDidClose, self )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Deactivate()
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationWillDeactivate, self )
		  
		  raiseEvent Deactivate
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationDidDeactivate, self )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub NewDocument()
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationWillNewDocument, self )
		  
		  raiseEvent NewDocument
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationDidNewDocument, self )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationWillOpen, self )
		  
		  raiseEvent Open
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationDidOpen, self )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub OpenDocument(item As FolderItem)
		  
		  NotificationCenter.DefaultCenter.PostNotification( _
		  NotificationWillOpenDocument, _
		  self, _
		  new Dictionary("item":item) )
		  
		  raiseEvent OpenDocument( item )
		  
		  NotificationCenter.DefaultCenter.PostNotification( _
		  NotificationDidOpenDocument, _
		  self, _
		  new Dictionary("item":item) )
		  
		  
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Activate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Deactivate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event NewDocument()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event OpenDocument(item As  FolderItem)
	#tag EndHook


	#tag Constant, Name = NotificationAll, Type = String, Dynamic = False, Default = \"", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidActivate, Type = String, Dynamic = False, Default = \"DidActivate", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidClose, Type = String, Dynamic = False, Default = \"DidClose", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidDeactivate, Type = String, Dynamic = False, Default = \"DidDeactivate", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidNewDocument, Type = String, Dynamic = False, Default = \"DidNewDocument", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidOpen, Type = String, Dynamic = False, Default = \"DidOpen", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidOpenDocument, Type = String, Dynamic = False, Default = \"DidOpenDocument", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillActivate, Type = String, Dynamic = False, Default = \"WillActivate", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillClose, Type = String, Dynamic = False, Default = \"WillClose", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillDeactivate, Type = String, Dynamic = False, Default = \"WillDeactivate", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillNewDocument, Type = String, Dynamic = False, Default = \"WillNewDocument", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillOpen, Type = String, Dynamic = False, Default = \"WillOpen", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillOpenDocument, Type = String, Dynamic = False, Default = \"WillOpenDocument", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
