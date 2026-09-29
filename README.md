# app_float_button

A Flutter package providing enhanced floating action buttons and speed dial menus for modern and interactive UIs. Includes `AppFloatingActionBtn` for easy FAB configuration and a `SpeedDial` widget for displaying multiple actions.

## Features
- `AppFloatingActionBtn`: A simple wrapper for `FloatingActionButton` and `FloatingActionButton.extended`.
- `SpeedDial`: A fully customizable floating menu with animation and multiple action buttons.
- Support for custom icons, labels, colors, and animation control.

## Getting Started
Add the package to your `pubspec.yaml`:

```yaml
resolution: workspace

dependencies:
  app_float_button: <latest_version>
```

## Usage

### AppFloatingActionBtn
```dart
AppFloatingActionBtn(
  icon: Icons.add,
  label: 'New Item',
  onPressed: () {
    // Handle action
  },
)
```

### SpeedDial
```dart
SpeedDial(
  onOpenIcon: Icons.menu,
  onCloseIcon: Icons.close,
  speedDialChildren: [
    SpeedDialChild(
      child: const Icon(Icons.mail),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      label: 'Mail',
      onPressed: () {
        // Handle mail action
      },
    ),
    SpeedDialChild(
      child: const Icon(Icons.share),
      backgroundColor: Colors.green,
      foregroundColor: Colors.white,
      label: 'Share',
      onPressed: () {
        // Handle share action
      },
    ),
  ],
)
```

## License
MIT License

## Contributions
Contributions are welcome! Open an issue or submit a pull request.

