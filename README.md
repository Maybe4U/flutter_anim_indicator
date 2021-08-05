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

![image](https://upload-images.jianshu.io/upload_images/8870768-666f9f50014106bf.gif?imageMogr2/auto-orient/strip|imageView2/2/w/528/format/webp)
