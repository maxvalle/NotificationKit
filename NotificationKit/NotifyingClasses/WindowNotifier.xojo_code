#tag Class
Protected Class WindowNotifier
Inherits Window
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
		Sub ContentsChanged()
		  
		  raiseEvent ContentsChanged
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationContentsChanged, self )
		  
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
		Sub Maximize()
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationWillMaximize, self )
		  
		  raiseEvent Maximize
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationDidMaximize, self )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Minimize()
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationWillMinimize, self )
		  
		  raiseEvent Minimize
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationDidMinimize, self )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Moved()
		  
		  raiseEvent Moved
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationMoved, self )
		  
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
		Sub Resized()
		  
		  raiseEvent Resized
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationResized, self )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Resizing()
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationWillResize, self )
		  
		  raiseEvent Resizing
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationDidResize, self )
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Restore()
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationWillRestore, self )
		  
		  raiseEvent Restore
		  
		  NotificationCenter.DefaultCenter.PostNotification( NotificationDidRestore, self )
		  
		End Sub
	#tag EndEvent


	#tag Hook, Flags = &h0
		Event Activate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Close()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event ContentsChanged()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Deactivate()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Maximize()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Minimize()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Moved()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Open()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Resized()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Resizing()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Restore()
	#tag EndHook


	#tag Constant, Name = NotificationAll, Type = String, Dynamic = False, Default = \"", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationContentsChanged, Type = String, Dynamic = False, Default = \"ContentsChanged", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidActivate, Type = String, Dynamic = False, Default = \"DidActivate", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidClose, Type = String, Dynamic = False, Default = \"DidClose", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidDeactivate, Type = String, Dynamic = False, Default = \"DidDeactivate", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidMaximize, Type = String, Dynamic = False, Default = \"DidMaximize", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidMinimize, Type = String, Dynamic = False, Default = \"DidMinimize", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidOpen, Type = String, Dynamic = False, Default = \"DidOpen", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidResize, Type = String, Dynamic = False, Default = \"DidResize", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationDidRestore, Type = String, Dynamic = False, Default = \"DidRestore", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationMoved, Type = String, Dynamic = False, Default = \"Moved", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationResized, Type = String, Dynamic = False, Default = \"Resized", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillActivate, Type = String, Dynamic = False, Default = \"WillActivate", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillClose, Type = String, Dynamic = False, Default = \"WillClose", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillDeactivate, Type = String, Dynamic = False, Default = \"WillDeactivate", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillMaximize, Type = String, Dynamic = False, Default = \"WillMaximize", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillMinimize, Type = String, Dynamic = False, Default = \"WillMinimize", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillOpen, Type = String, Dynamic = False, Default = \"WillOpen", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillResize, Type = String, Dynamic = False, Default = \"WillResize", Scope = Public
	#tag EndConstant

	#tag Constant, Name = NotificationWillRestore, Type = String, Dynamic = False, Default = \"WillRestore", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="BackColor"
			Visible=true
			Group="Appearance"
			InitialValue="&hFFFFFF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CloseButton"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Composite"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Frame"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Document"
				"1 - Movable Modal"
				"2 - Modal Dialog"
				"3 - Floating Window"
				"4 - Plain Box"
				"5 - Shadowed Box"
				"6 - Rounded Window"
				"7 - Global Floating Window"
				"8 - Sheet Window"
				"9 - Metal Window"
				"10 - Drawer Window"
				"11 - Modeless Dialog"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreen"
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FullScreenButton"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HasBackColor"
			Visible=true
			Group="Appearance"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="400"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ImplicitInstance"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Interfaces"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LiveResize"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MacProcID"
			Visible=true
			Group="Appearance"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxHeight"
			Visible=true
			Group="Position"
			InitialValue="32000"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaximizeButton"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MaxWidth"
			Visible=true
			Group="Position"
			InitialValue="32000"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MenuBar"
			Visible=true
			Group="Appearance"
			Type="MenuBar"
			EditorType="MenuBar"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MenuBarVisible"
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinHeight"
			Visible=true
			Group="Position"
			InitialValue="64"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinimizeButton"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinWidth"
			Visible=true
			Group="Position"
			InitialValue="64"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Placement"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Default"
				"1 - Parent Window"
				"2 - Main Screen"
				"3 - Parent Window Screen"
				"4 - Stagger"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Resizeable"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
			EditorType="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Title"
			Visible=true
			Group="Appearance"
			InitialValue="Untitled"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="600"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
