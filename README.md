# NotificationKit
A Xojo set of classes to provide in-app distributed notifications

The NotificationKit permits to easily provide notifications to other objects in the same application when something happens, like an event is raised.
To send notification, there is no need to create subclasses, just give a name to a notification, optionally a tag, and tell the NotificationCenter to send it.

To receive notifications is also easy, just tell whatever object to subscribe to the NotificationCenter as an observer for a particular object and/or notification. It's also possible to receive all notifications for a particular object or for all.

There is currently no documentation, but the NotificationKit is simple enough to understand looking at the included demo project.
