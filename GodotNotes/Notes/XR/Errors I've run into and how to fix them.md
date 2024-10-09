# godot meta quest package signatures do not match previously installed version
- Got this while switching from a project being installed on a meta quest 3 to a meta quest 2
- Ran 

```
adb uninstall com.example.my3dskygodot
```

- Had to add C:\Users\<YourProfile>\AppData\Local\Android\Sdk\platform-tools; to PATH in order to run this
- Ran command in cmd (did not work in powershell)

# Debug message not appearing in Meta Quest 3 Headset
Solution from https://www.reddit.com/r/QuestPiracy/comments/179r9qa/quest_3_allow_usb_debugging_notification_not/
- On your computer, go to C:\Users\<YourProfile>\.android and delete both adbkey files, if there are none, skip this step;  
- Download adb [here](https://dl.google.com/android/repository/platform-tools-latest-windows.zip) and extract it somewhere;  
- Open command prompt and navigate to the folder you've just extracted, for example `cd C:\path\to\platform-tools`;  
- With the headset connected and logged in an administrator account, run `adb kill-server` and then `adb devices`.
