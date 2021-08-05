# anim_indicator

Widget to display animate indicator to show a position.

### Installation

You just need to add `anim_indicator` as a [dependency in your pubspec.yaml file](https://flutter.cn/using-packages/).

```
dependencies:
  anim_indicator: ^0.0.2
```

### Example

##### A simple dots indicator

```
AnimIndicator(
  position: currentIndex,
)
```

### Custom

```
AnimIndicator(
	dotsCount: 3,
    position: currentIndex,
    color: Colors.red,
    inLength: 30,
)
```

![16281529790622021851646472](D:\Program Files (x86)\Thunder Network\Xmp\profiles\截图\16281529790622021851646472.gif)
