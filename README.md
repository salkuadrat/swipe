# Swipe

The easy way to detect swipe up, down, left and right in Flutter.

## Getting Started

Add dependency to your flutter project:

```
$ flutter pub add swipe
```

or

```yaml
dependencies:
  swipe: ^0.0.1
```

or

```yaml
dependencies:
  swipe:
    git: 
      url: git://github.com/salkuadrat/swipe.git
```

Then run `flutter pub get`.

## Usage

Here is a simple way of using `Swipe`.

```dart
Swipe(
  child: ..., // your child widget
  onSwipeUp: () {
    // do something when swiping up
  },
  onSwipeDown: () {
    // do something when swiping down
  },
  onSwipeLeft: () {
    // do something when swiping left
  },
  onSwipeRight: () {
    // do something when swiping right
  },
)
```

## Customization

`Swipe` widget comes with additional parameters to customize your swiping experience.

```dart
Swipe(
  child: ...,
  onSwipeUp: ...,
  onSwipeDown: ...,
  onSwipeLeft: ...,
  onSwipeRight: ...,
  verticalMaxWidthThreshold: 50,
  verticalMinDisplacement: 100,
  verticalMinVelocity: 300,
  horizontalMaxHeightThreshold: 50,
  horizontalMinDisplacement: 100,
  horizontalMinVelocity: 300,
)
```

## Example

You can try a working example [here](example).
