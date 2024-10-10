/*
class ApodModel {
  String? copyright;
  DateTime date;
  String explanation;
  String? hdurl;
  MediaType mediaType;
  ServiceVersion serviceVersion;
  String title;
  String url;

  ApodModel({
    this.copyright,
    required this.date,
    required this.explanation,
    this.hdurl,
    required this.mediaType,
    required this.serviceVersion,
    required this.title,
    required this.url,
  });

}

enum MediaType {
  IMAGE,
  VIDEO
}

enum ServiceVersion {
  V1
}
*/

/*class ApodModel {
  String? copyright;
  String? date;
  String? explanation;
  String? hdurl;
  String? mediaType;
  String? serviceVersion;
  String? title;
  String? url;

  ApodModel(
      {this.copyright,
        this.date,
        this.explanation,
        this.hdurl,
        this.mediaType,
        this.serviceVersion,
        this.title,
        this.url});

  ApodModel.fromJson(Map<String, dynamic> json) {
    copyright = json['copyright'];
    date = json['date'];
    explanation = json['explanation'];
    hdurl = json['hdurl'];
    mediaType = json['media_type'];
    serviceVersion = json['service_version'];
    title = json['title'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['copyright'] = this.copyright;
    data['date'] = this.date;
    data['explanation'] = this.explanation;
    data['hdurl'] = this.hdurl;
    data['media_type'] = this.mediaType;
    data['service_version'] = this.serviceVersion;
    data['title'] = this.title;
    data['url'] = this.url;
    return data;
  }
}*/

// To parse this JSON data, do
//
//     final apodModel = apodModelFromJson(jsonString);

// To parse this JSON data, do
//
//     final apodModel = apodModelFromJson(jsonString);

import 'dart:convert';

List<ApodModel> apodModelFromJson(String str) => List<ApodModel>.from(json.decode(str).map((x) => ApodModel.fromJson(x)));

String apodModelToJson(List<ApodModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ApodModel {
  String? copyright;
  DateTime? date;
  String? explanation;
  String? hdurl;
  MediaType? mediaType;
  ServiceVersion? serviceVersion;
  String? title;
  String? url;

  ApodModel({
    this.copyright,
    this.date,
    this.explanation,
    this.hdurl,
    this.mediaType,
    this.serviceVersion,
    this.title,
    this.url,
  });

  factory ApodModel.fromJson(Map<String, dynamic> json) => ApodModel(
    copyright: json["copyright"],
    date: json["date"] == null ? null : DateTime.parse(json["date"]),
    explanation: json["explanation"],
    hdurl: json["hdurl"],
    mediaType: mediaTypeValues.map[json["media_type"]]!,
    serviceVersion: serviceVersionValues.map[json["service_version"]]!,
    title: json["title"],
    url: json["url"],
  );

  Map<String, dynamic> toJson() => {
    "copyright": copyright,
    "date": "${date!.year.toString().padLeft(4, '0')}-${date!.month.toString().padLeft(2, '0')}-${date!.day.toString().padLeft(2, '0')}",
    "explanation": explanation,
    "hdurl": hdurl,
    "media_type": mediaTypeValues.reverse[mediaType],
    "service_version": serviceVersionValues.reverse[serviceVersion],
    "title": title,
    "url": url,
  };
}

enum MediaType {
  IMAGE,
  VIDEO
}

final mediaTypeValues = EnumValues({
  "image": MediaType.IMAGE,
  "video": MediaType.VIDEO
});

enum ServiceVersion {
  V1
}

final serviceVersionValues = EnumValues({
  "v1": ServiceVersion.V1
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}



