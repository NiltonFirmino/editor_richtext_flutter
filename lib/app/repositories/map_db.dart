class TitleTextFinal {
  int? id;
  String? title;
  String? textedit;

  TitleTextFinal(
      {required this.id, required this.title, required this.textedit});

  TitleTextFinal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    textedit = json['textedit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['textedit'] = textedit;
    return data;
  }
}
