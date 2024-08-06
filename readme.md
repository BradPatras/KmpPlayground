Just poking around in kmp.

### First experiment, define an enum in kotlin and consume it in iOS via an XCFramework.
Kotlin enum definition:

<img width="699" alt="android screenshot" src="https://github.com/user-attachments/assets/f7da8843-c193-45f0-b75a-499fabb16163">

----

iOS usage of the enum and it's properties:

<img width="1434" alt="iOS screenshot" src="https://github.com/user-attachments/assets/0c4499ce-0459-4c92-9648-70791d42f8d6">



## Wizard-generated readme:
This is a Kotlin Multiplatform project targeting Android, iOS.

* `/composeApp` is for code that will be shared across your Compose Multiplatform applications.
  It contains several subfolders:
  - `commonMain` is for code that’s common for all targets.
  - Other folders are for Kotlin code that will be compiled for only the platform indicated in the folder name.
    For example, if you want to use Apple’s CoreCrypto for the iOS part of your Kotlin app,
    `iosMain` would be the right folder for such calls.

* `/iosApp` contains iOS applications. Even if you’re sharing your UI with Compose Multiplatform, 
  you need this entry point for your iOS app. This is also where you should add SwiftUI code for your project.

* `/shared` is for the code that will be shared between all targets in the project.
  The most important subfolder is `commonMain`. If preferred, you can add code to the platform-specific folders here too.


Learn more about [Kotlin Multiplatform](https://www.jetbrains.com/help/kotlin-multiplatform-dev/get-started.html)…
