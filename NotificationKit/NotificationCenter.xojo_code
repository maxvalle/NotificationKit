#tag Class
Protected Class NotificationCenter
	#tag Method, Flags = &h0
		Sub AddObserver(notificationMethod as NotificationDelegate, notificationObject as Object = nil, notificationName as String = "")
		  
		  #pragma disableBackgroundTasks
		  
		  // register a new observer
		  dim newObserver as new NotificationObserver(notificationMethod, notificationObject, notificationName)
		  
		  // check if a such observer already exists
		  dim i as integer = 0
		  dim n as integer = mObservers.ubound
		  while i <= n and mObservers(i) <> newObserver
		    i = i + 1
		  wend
		  
		  // if not found, add it to the observer list
		  if i > n then
		    mObservers.append newObserver
		  end if
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		 Shared Function DefaultCenter() As NotificationCenter
		  
		  // there could be only one center in an application
		  // this is a singleton pattern, so always provide the same instance
		  if mCenter = nil then
		    mCenter = new NotificationCenter
		  end if
		  
		  return mCenter
		  
		End Function
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub NotificationDelegate(aNotification as Notification, aTag as Dictionary)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h21
		Private Sub NotifyObservers(aNotification as Notification, Tag as Dictionary)
		  
		  #pragma disableBackgroundTasks
		  
		  // broadcast the notification to all observers
		  
		  // keep tracks of notified observers using a dictionary for fast retrieving
		  dim alreadyNotifiedObservers as new Dictionary
		  
		  // if the delegate method disappeared trying to invoke it
		  // will raise a NIL object exception
		  // just ignore it
		  #pragma breakOnExceptions false
		  
		  // cycle all observers and verify if they registered for this notification
		  dim n as integer = mObservers.ubound
		  for i as integer = n downTo 0
		    
		    // store the current observer
		    dim observer as NotificationObserver = mObservers(i)
		    
		    // create a Ptr from observer delegate to store it and compare
		    dim observerPtr as Ptr = observer.notificationMethod
		    
		    // check if we have not already sent this notification to the target observer
		    if not alreadyNotifiedObservers.hasKey(observerPtr) then
		      
		      // check if the observer requested for this notification
		      if observer.notificationSender = nil or observer.notificationSender = aNotification.Sender then
		        if observer.notificationName = "" or observer.notificationName = aNotification.Name then
		          
		          // try sending the notification
		          try
		            observer.notificationMethod.Invoke( aNotification, Tag )
		            
		            // store the observer in the temporary dictionary
		            dim p as Ptr = observer.notificationMethod
		            alreadyNotifiedObservers.value(p) = ""
		            
		          catch
		            // if the delegate is no longer valid, remove the observer from the array
		            mObservers.remove(i)
		          end try
		          
		        end if
		      end if
		    end if
		    
		  next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostNotification(aNotification as Notification, Tag as Dictionary = nil)
		  
		  // send a notification
		  self.NotifyObservers( aNotification, Tag )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostNotification(Name as string, sender as Object, Tag as Dictionary = nil)
		  
		  // build a new notification from name and sender
		  // and send it
		  self.postNotification( new Notification( Name, sender ), Tag )
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveObserver(notificationMethod as NotificationDelegate, notificationObject as Object = nil, notificationName as String = "")
		  
		  #pragma disableBackgroundTasks
		  
		  // make a temporary NotificationObserver for comparing it
		  dim newObserver as new NotificationObserver(notificationMethod, notificationObject, notificationName)
		  
		  // check if a such observer exists
		  dim n as integer = mObservers.ubound
		  for i as integer = 0 to n
		    if mObservers(i) = newObserver then
		      // remove it and exit
		      mObservers.remove(i)
		      exit
		    end if
		  next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Shared mCenter As NotificationCenter
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mObservers() As NotificationObserver
	#tag EndProperty


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
