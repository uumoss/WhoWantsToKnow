WhoWantsToKnow
==============

A simple iOS app that notifies a singleton that a view appeared.

###Step 1: Add a new ViewController as your root view controller
- Create a new root view controller (you don't need an XIB file)
- Add the view controller in nav controller to the rootViewController of the window

###Step 2: Create an AppSettings singleton
- Create an object AppSettings as an NSObject subclass
- Remember the sharedInstance method can be found here: https://gist.github.com/jkhowland/89e24b5fb6e1b5048eb5

###Step 3: Register and Unregister your AppSettings for notificaitons
- Create a registerForNotifications method
- Create an unregisterForNotifications method
- In the sharedInstance method call registerForNotifications
- In the dealloc method call unregisterForNotifications
- Add a method respondToViewAppeared:(NSNotification *)notification
  - Log that the view appeared.
- Add a name (key) to the header of AppSettings for notificaitons
- In the registerForNotifications method register for notifications with the name and the respondToAppeared as the selector
- In the unregister, unregister for the notification with the name

###Step 4: Post a notification
- In the RootViewController init method call the method sharedInstance
  - Note: We have to call the shared instance method at least once in order for the object to be registered
- In the view did appear method post the notification
