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
    this.no = json['no'];
    this.cityList = (json['cityList'] as List).map((i) => City.fromJson(i)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['no'] = this.no;
    data['cityList'] = this.cityList.map((i) => i.toJson()).toList();
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
    this.no = json['no'];
    this.countyList = (json['countyList'] as List).map((i) => County.fromJson(i)).toList();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['no'] = this.no;
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
    this.no = json['no'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['no'] = this.no;
    return data;
  }
}
