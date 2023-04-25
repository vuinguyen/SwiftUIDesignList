# SwiftUIDesignList
**SwiftUIDesignList** is a kitchen sink app built to demo usage of the **SunfishDesign** library, to apply custom fonts and colors to the app's SwiftUI views.

## What is This Project

The project is comprised of two parts:
* **SunfishDesign**:
  - a local Swift package that is the project's design library
  - has an API that allows users to apply custom fonts and colors to SwiftUI views, using familiar Apple-like view modifier syntax.
* **SwiftUIDesignList**:
  - the iOS app that uses the SunfishDesign library
  - is a kitchen sink type app that applies the custom fonts and colors from the SunfishDesign library to its SwiftUI views

## Screenshots of the SwiftUIDesignList App
#### Main Screen
<img src="/screenshots/MainScreen.png" width="300"/>

#### Detail Screen: Text & Foreground Colors
Demonstrates how to apply custom fonts and custom colors to text (to the foreground)

<img src="/screenshots/TextFontForegroundColors.png" width="300"/>

#### Detail Screen: Text & Background Colors
Demonstrates how to apply custom colors to text (in the background view)

<img src="/screenshots/TextFontBackgroundColors.png" width="300"/>

#### Detail Screen: Shapes
Demonstrates how to apply custom colors to shapes

<img src="/screenshots/Shapes.png" width="300"/>

## How to Use the SunfishDesign Library
* In the **SunfishDesign** library, within the **SunfishSwiftUI+Extensions.swift** file, see the comments under

`// MARK: Shape Extension`
for examples on how to use the **custom .fill() view modifier to apply custom colors to shapes**.

For example, the following will draw a circle and fill it with the custom **sunfishPink** color, and draw a border around the circle with the custom **sunfishBrown** color:

`Circle()`

`.fill(.sunfishPink, strokeBorder: .sunfishBrown, lineWidth: 10.0)`

- also see comments under

`// MARK: View Extension` for examples on how to use view modifiers to **apply custom fonts to text**.

For example, the following will apply the custom **sunfish** font of regular weight and font size 30.0 to the Text view

`Text("Hello, World!")`

`.font(.sunfish(size: 30.0, weight: .regular))`

- also see comments under

`// MARK: ShapeStyle Extension` for examples on how to use view modifiers to **apply custom colors to text**, and view modifiers to apply **custom colors to shapes**.

For example, the following will apply the custom **sunfishPink** color to the foreground color of the Text view

`Text("Hello, World!")`

`.foregroundColor(.sunfishPink)`

And the following will fill a Rectangle with the custom **sunfishBlue** color

`Rectangle()`

`.fill(.sunfishBlue)`
