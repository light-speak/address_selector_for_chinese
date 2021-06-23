# address_selector_for_chinese

中国的省市区选择器

## Getting Started

### pubspec.yaml

```yaml
    dependencies:
      address_selector_for_chinese: latest
```

### import

```dart
    import 'package:address_selector_for_chinese/index.dart';
```

### use

```dart
    void show() async {
      showMaterialModalBottomSheet(
          context: context,
          builder: (BuildContext context) => AddressSelector(
            onSelected: (Result result) {
              print(result);
            },
            title: '选择地址',
            selectedColor: Colors.red,
            unselectedColor: Colors.black,
          ),
      );
    }
```