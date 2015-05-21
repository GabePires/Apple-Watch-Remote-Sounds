# Apple-Watch-Remote-Sounds
This is a simple project demonstrating communication between the Apple Watch and the iPhone.
A string is relayed from the Apple Watch and a replied string will be received.
In addition, the Apple Watch will call a method in the iPhone which will play a *quack* sound (from the iPhone).

This project demonstrates use of the Watchkit extension and NSNotification.
The openParentApplication function was used to relay messages between the two, but another easy way to share data would be with Shared App Groups. In addition, Background Modes > Audio and AirPlay must be checked in the capabilities section of the app in order to play sounds while the either application or iPhone's screen is off.

The nice simple SoundManager was provided by [CharcoalDesign](https://github.com/nicklockwood/SoundManager)
