#tag Class
Protected Class NotificationObserver
	#tag Method, Flags = &h0
		Sub Constructor(notificationMethod as NotificationCenter.NotificationDelegate, senderObject as Object, notificationName as String)
		  
		  // store method, a weak ref to the sender and name
		  mNotificationMethod = notificationMethod
		  mNotificationSenderRef = new WeakRef(senderObject)
		  mNotificationName = notificationName
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Operator_Compare(o as NotificationObserver) As Integer
		  
		  // compare against another NotificationObserver instance
		  // return 1 if they are different
		  // return 0 if they are equal
		  
		  dim cmp as Integer = 0
		  
		  // if the compared object is nil, then it's different
		  if o is nil then
		    
		    cmp = 1
		    
		  else
		    
		    // start comparing the NotificationMethod
		    // this need first to be converted to a Ptr for comparing
		    dim p1 as Ptr = self.mNotificationMethod
		    dim p2 as Ptr = o.notificationMethod
		    if p1 <> p2 then
		      cmp = 1
		    else
		      
		      // if the NotificationMethod is equal then compare the sender
		      if self.notificationSender <> o.notificationSender then
		        cmp = 1
		      else
		        
		        // if even the sender is the same, compare the notification name
		        if self.notificationName <> o.notificationName then
		          cmp = 1
		        end if
		        
		      end if
		      
		    end if
		    
		  end if
		  
		  return cmp
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private mNotificationMethod As NotificationCenter.NotificationDelegate
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mNotificationName As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mNotificationSenderRef As WeakRef
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  return mNotificationMethod
			  
			End Get
		#tag EndGetter
		notificationMethod As NotificationCenter.NotificationDelegate
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  return mNotificationName
			  
			End Get
		#tag EndGetter
		notificationName As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  
			  return mNotificationSenderRef.Value
			  
			End Get
		#tag EndGetter
		notificationSender As Object
	#tag EndComputedProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="notificationName"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
