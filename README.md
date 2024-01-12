# 커스텀뷰 swiftUI
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

- 이 코드는 SwiftUI를 사용하여 작성된 간단한 뷰를 정의합니다. FocusView는 View 프로토콜을 따르는 구조체로, 특히 Rectangle을 사용하여 정의되었습니다. 이 뷰는 포커스를 받을 수 있으며, 포커스를 받으면 크기를 키우는 간단한 애니메이션 효과가 적용됩니다.

- 여기서 코드의 중요한 부분을 살펴보겠습니다:
```swift
@State private var isFocused = false: isFocused는 상태 속성으로, 뷰가 포커스를 받았는지 여부를 추적합니다.
.focusable(true) { focused in self.isFocused = focused }: Rectangle에 .focusable(true)를 사용하여 포커스를 활성화하고, 포커스가 변경될 때마다 클로저가 호출되어 isFocused 상태를 업데이트합니다.
.scaleEffect(isFocused ? 1.2 : 1.0): isFocused 상태에 따라 Rectangle의 크기를 조절합니다. 포커스를 받으면 크기를 1.2배로 키우고, 포커스를 잃으면 원래 크기로 돌아갑니다.
.animation(.easeInOut(duration: 0.1)): 크기 변화에 애니메이션을 적용합니다. easeInOut 이징 함수를 사용하며, 0.1초 동안 애니메이션이 진행됩니다.
```
- 이 코드의 주된 목적은 포커스를 받을 때와 잃을 때 간단한 애니메이션을 통해 시각적인 변화를 주는 것입니다. SwiftUI는 상태와 애니메이션을 쉽게 다룰 수 있도록 도와주는 간단하고 강력한 프레임워크입니다.
