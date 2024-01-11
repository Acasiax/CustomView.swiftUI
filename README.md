# 커스텀뷰
- swiftUI
```swift
struct FocusView: View {
    @State private var isFocused = false
    
    var body: some View {
        Rectangle()
            .foregroundColor(Color.green)
            .focusable(true) { focused in
                self.isFocused = focused
            }
            .frame(width: 400, height: 200)
            .scaleEffect(isFocused ? 1.2 : 1.0)
            .animation(.easeInOut(duration: 0.1))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```
