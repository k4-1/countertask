# Socket IO Challenge Apps Accepted

This apps available in linux specifically for Ubuntu 20.04 and Ubuntu Core. The apps also available with Android. The Apps is about to connect with the server made with socket io. Server will generate the counting, then client will acknowledge and receive. Then, will display upon the Apps. There's also a logic behind the colour changeable.

## APK and Snap

Under ubuntu-android-apps folder

- app-release.apk [Android]
- socket-challenge_0.1.0_amd64.snap [Ubuntu Core]
- socket-challenge-top_0.1.0_amd64.snap [Ubuntu 20.04]

## Run Server

1. Clone the repository
2. Then, run code below in terminal:
```
yarn
```

3. run the server:
```
yarn server
```

## Run Apps in Ubuntu 20.04

This apps was successfully been tested with Ubuntu 20.04. How to access:

1. Clone the repository in any folder inside your Ubuntu environment
2. Open terminal and enter the folder where the file of the apps located which the file is socket-challenge-top_0.1.0_amd64.snap
3. run follwing command:
```
sudo snap install socket-challenge-top_0.1.0_amd64.snap --dangerous
```

4. After done the installation insert the following command:
```
socket-challenge-top
```

5. Congratulation, you successful open the apps

## Run Apps in Ubuntu Core

This apps was successfully been tested with Ubuntu Core 18. How to access:

1. SSH or open your Ubuntu Core environment
2. Transfer the repositotry into the Ubuntu Core via SCP
3. Install ubuntu frame as the following command:
```
snap install ubuntu-frame
```

4. Open terminal and enter the folder where the file of the apps located which the file is socket-challenge_0.1.0_amd64.snap
5. run follwing command:
```
sudo snap install socket-challenge_0.1.0_amd64.snap --dangerous
```

6. After done the installation insert the following command:
```
socket-challenge
```
OR

7. After done installing ubuntu frame, you can directly download the apps using snap as the following command:
```
snap install socket-challenge
```

8. Congratulation, you successful open the apps under your Ubuntu Core



