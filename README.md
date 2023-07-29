# Quiz Mobile App using Flutter

## Introduction

Welcome to the Quiz Mobile App built using Flutter! This app is designed to provide an interactive and enjoyable quiz experience for users on their mobile devices. With a wide range of features and a user-friendly interface, this app aims to challenge and entertain quiz enthusiasts.

## Setup

To run this Quiz Mobile App on your local machine, follow these steps:

1. Make sure you have Flutter installed on your computer. If you don't have it installed, refer to the official [Flutter installation guide](https://flutter.dev/docs/get-started/install) for instructions.

2. Clone this repository to your local machine using the following command:

   ```
   git clone https://github.com/your-username/quiz-mobile-app.git
   ```

3. Change your working directory to the cloned project:

   ```
   cd quiz-mobile-app
   ```

4. Fetch the dependencies by running:

   ```
   flutter pub get
   ```

5. Connect your mobile device or start an emulator.

6. Finally, launch the app by running:

   ```
   flutter run
   ```

Now you should have the Quiz Mobile App up and running on your device!

## Widgets Used

Here are the widgets used in the Quiz Mobile App, along with brief descriptions of their functionality:

1. `MaterialApp`: This is the root widget of the Flutter app. It sets up the material design style for the entire app and provides access to the Navigator for navigating between different screens.

2. `Scaffold`: Scaffold is a basic framework for implementing the Material Design visual layout structure. It provides an app bar, a body for the main content, and optional floating action buttons, among other features.

3. `SingleChildScrollView`: This widget enables scrolling content that overflows the screen. It is useful when the content exceeds the available screen space, allowing users to scroll and access all the information.

4. `Container`: A Container is a box-like widget that can contain other widgets. It is commonly used to apply decoration, padding, margin, and constraints to its child widgets.

5. `SizedBox`: This widget creates a box of a specified size, which can be useful for adding spacing between elements or setting fixed dimensions for widgets.

6. `Column`: The Column widget arranges its children vertically in a single column. It is used to create vertical layouts, stacking widgets on top of each other.

7. `Row`: The Row widget arranges its children horizontally in a single row. It is used to create horizontal layouts, placing widgets side by side.

8. `ElevatedButton`: An ElevatedButton is a material design-style button with a raised appearance when pressed. It is commonly used for primary actions in the app.

9. `OutlinedButton`: This button has a transparent background and displays an outline when pressed. It is suitable for secondary actions or to reduce visual weight on the screen.

10. `TextButton`: A TextButton is a flat button with no background color or elevation. It is typically used for non-primary actions or for text-heavy areas.

11. `TextButton.icon`: This widget combines a TextButton with an Icon, providing a button with both text and an icon. It is helpful for actions that need both textual and visual representation.

12. `Expanded`: Expanded is a flexible widget that expands to fill the available space within a Column or Row. It is often used to distribute available space proportionally among children.

13. `Text`: The Text widget displays a single style text string. It is used for presenting quiz questions, answer choices, and other text-based information in the app.

14. `Center`: This widget centers its child within itself both vertically and horizontally. It is beneficial when you want to center a single child widget within the available space.

15. `Image`: The Image widget is used to display images in the app. It can load images from various sources, such as the network, local assets, or the device's file system.

16. `Image.asset`: Image.asset is a specific form of the Image widget used to load and display images from the app's local assets. It requires specifying the image's asset path.

These widgets, when combined and used appropriately, allow for the creation of a dynamic and visually appealing quiz app using Flutter.