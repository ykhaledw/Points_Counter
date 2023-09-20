 ## Points Counter 

### Getting Started

#### Step 1: Create a new Flutter project

Open your terminal or command prompt and create a new Flutter project using the following command:

```sh
flutter create points_counter
```

This will create a new directory called `points_counter`. Navigate to this directory by running the following command:

```sh
cd points_counter
```

#### Step 2: Add dependencies

Add the following dependencies to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter

  # The following adds the Cupertino Icons font to your application.
  # Use with the CupertinoIcons class for iOS style icons.
  cupertino_icons: ^1.0.2
```

#### Step 3: Create the UI

Create a new file called `main.dart` in the `lib` directory. This file will contain the main UI for your app. Add the following code to `main.dart`:

```dart
import 'package:flutter/material.dart';
import 'package:points_counter/constants/buttons.dart';

void main() {
  runApp(PointsCounter());
}

class PointsCounter extends StatefulWidget {
  const PointsCounter({super.key});

  @override
  State<PointsCounter> createState() => _PointsCounterState();
}

class _PointsCounterState extends State<PointsCounter> {
  int scoreA = 0;

  int scoreB = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Points Counter'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const Text(
                        'Team A',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          height: 150,
                          width: 200,
                          child: Center(
                              child: Text('$scoreA',),