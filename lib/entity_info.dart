import 'package:azlistview/azlistview.dart';

class EntityInfo extends ISuspensionBean {
  late String name;
  late String? tagIndex;
  late String? namePinyin;

  EntityInfo({
    required this.name,
     this.tagIndex,
     this.namePinyin,
  });

  EntityInfo.fromJson(Map<String, dynamic> json) : name = json['name'] == null ? "" : json['name'];

  Map<String, dynamic> toJson() =>
      {'name': name, 'tagIndex': tagIndex, 'namePinyin': namePinyin, 'isShowSuspension': isShowSuspension};

  @override
  String getSuspensionTag() => tagIndex ?? '#';

  @override
  String toString() => "CityBean {" + " \"name\":\"" + name + "\"" + '}';
}
