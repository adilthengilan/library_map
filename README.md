Library Map Navigation App

This is a Flutter-based project that provides an interactive map for a library. Users can zoom in and out, view the layout of the library, and navigate to specific racks by tapping on them. The navigation feature guides users to their desired rack with animated navigation lines.

Features

Interactive Map: Zoom in and out to explore the library layout.

Rack Navigation: Tap on a rack to see an animated route from the entrance to the selected rack.

Dynamic Routing: The navigation routes are controlled by pixel-based coordinates (e.g., 10, 20, 30) to adjust direction and positioning dynamically.

Smooth Animations: The app uses smooth transitions to enhance the user experience during navigation.

How Navigation Works

The navigation system in this app is controlled by pixel coordinates. Each navigation step is defined by a set of directions and pixel values that guide the route. The directions include straight lines and turns (left, right) at specified intervals. The app calculates the route based on these coordinates and animates the navigation icon along the path.

For example:

Start at (0, 0)

Move straight for 10 pixels

Turn right and move 20 pixels

Turn left and move 30 pixels

This method allows precise control over the navigation path, ensuring users are guided accurately to their destination rack.

Getting Started

Clone the repository:

git clone https://github.com/adilthengilan/library_map.git

Navigate to the project directory:

cd library-map-navigation

Install dependencies:

flutter pub get

Run the app:

flutter run

Requirements

Flutter SDK

Dart SDK

Project Structure

lib/: Contains the main codebase

assets/: Contains images and map layout assets

pubspec.yaml: Defines dependencies and assets

Customization

You can customize the map layout and navigation coordinates in the code to match your library's specific layout. The pixel-based navigation system is flexible and can be adjusted to fit various map designs.

Contribution

We welcome contributions to improve the project. Feel free to fork the repository and submit a pull request with your enhancements.

License

This project is licensed under the MIT License. See the LICENSE file for more details.

