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


## LICENSE
```
The MIT License (MIT)

                 Copyright (c) 2020-2022 Linty <linty@lintyone.cn>

Permission is hereby granted, free of charge, to any person obtaining a copy of this
software and associated documentation files (the "Software"), to deal in the Software
without restriction, including without limitation the rights to use, copy, modify, merge,
publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or
substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
```
                            