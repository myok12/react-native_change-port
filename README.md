# React-native_change-port

This script is useful if your system blocks or already uses port 8081, which is the default for react-native's packager.

## Usage

To change react-native to listen on port 8082, do:
1. go to your project folder.
2. run `git clone https://github.com/myok12/react-native_change-port.git ../react-native_change-port`
3. run `../react-native_change-port/react-native_change-port.sh 8082`
4. now run `react-native run-android` successfully. You'll see it successfully running: `React packager ready`.
5. In the Android device, in your app, go to the secret menu (Command+M), under `Dev Settings`, change `Debug server host & port for device` to reflect the new port.

## Symptom

Use this if you get the following error:
```
 ┌────────────────────────────────────────────────────────────────────────────┐
 │  Running packager on port 8081.                                            │
 │                                                                            │
 │  Keep this packager running while developing on any JS projects. Feel      │
 │  free to close this tab and run your own packager instance if you          │
 │  prefer.                                                                   │
 │                                                                            │
 │  https://github.com/facebook/react-native                                  │
 │                                                                            │
 └────────────────────────────────────────────────────────────────────────────┘
Looking for JS files in
   /Users/myok12/myReactApp

 ERROR  Packager can't listen on port 8081
Most likely another process is already using this port
Run the following command to find out which process:

   lsof -i :8081

Then, you can either shut down the other process:

   kill -9 <PID>

or run packager on different port.
```
