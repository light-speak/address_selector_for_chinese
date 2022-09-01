class Province {
  late String name;
  late String no;
  late List<City> cityList;

  Province({
    required this.name,
    required this.no,
    required this.cityList,
  });

  Province.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.no = json['code'];
    this.cityList = (json['children'] as List).map((i) => City.fromJson(i)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.no;
    data['children'] = this.cityList.map((i) => i.toJson()).toList();
    return data;
  }
}

class City {
  late String name;
  late String no;
  late List<County> countyList;

  City({
    required this.name,
    required this.no,
    required this.countyList,
  });

  City.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.no = json['code'];
    this.countyList = (json['children'] as List).map((i) => County.fromJson(i)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.no;
    data['countyList'] = this.countyList.map((i) => i.toJson()).toList();
    return data;
  }
}

class County {
  late String name;
  late String no;

  County({
    required this.name,
    required this.no,
  });

  County.fromJson(Map<String, dynamic> json) {
    this.name = json['name'];
    this.no = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['code'] = this.no;
    return data;
  }
}
