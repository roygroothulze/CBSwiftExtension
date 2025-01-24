# CBExtension
The package provides extensions to commonly used SwiftUI Code.

## Availible extensions
### Array
- isNotEmpty        Bool

### Bool
- reverse           Bool

### Bundle
- shortVersion      String
- buildVersion      String
- fullVersion       String

### Color
- ...

### Date
- weekdayDisplayFormat  String
- dayDisplayFormat      String
- static func dateFrom(year: Int = 2023, month: Int, day: Int) -> Date

### Image
- init?(data: Data)

### Optional
- isSet             Bool

### String
- isNotEmpty        Bool
- match(for regexPattern: String, at index: Int) -> String?

### UIDevice
- isIPhone          Bool
- isIPad            Bool
- isMac             Bool

### View
- `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View
- alignCenterHorizontally() -> some View
- alignCenterVertically() -> some View 
- alignLeft() -> some View
- alignRight() -> some View
- alignTop() -> some View
- alignBottom() -> some View
- addCancelToToolBar(presentationMode: Binding<PresentationMode>, title: String = "Cancel") -> some View
- hidden(_ shouldHide: Bool) -> some View
- squire(size: CGFloat, alignment: Alignment = .center) -> some View (iOS only)

## Author
Package made by: [CodeBlock](https://codeblock.nl)

## Availability
This package is compatible with iOS 15 MacOS 12 and WatchOS 8

