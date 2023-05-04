// To parse this JSON data, do
//
//     final moviesData = moviesDataFromMap(jsonString);

import 'dart:convert';

MoviesData moviesDataFromMap(String str) =>
    MoviesData.fromMap(json.decode(str));

String moviesDataToMap(MoviesData data) => json.encode(data.toMap());

class MoviesData {
  List<Datum>? previewsData;
  List<Datum>? moviesData;
  List<Datum>? trendingNowData;

  MoviesData({
    this.previewsData,
    this.moviesData,
    this.trendingNowData,
  });

  factory MoviesData.fromMap(Map<String, dynamic> json) => MoviesData(
        previewsData: json["Previews_data"] == null
            ? []
            : List<Datum>.from(
                json["Previews_data"]!.map((x) => Datum.fromMap(x))),
        moviesData: json["movies_data"] == null
            ? []
            : List<Datum>.from(
                json["movies_data"]!.map((x) => Datum.fromMap(x))),
        trendingNowData: json["Trending_Now_data"] == null
            ? []
            : List<Datum>.from(
                json["Trending_Now_data"]!.map((x) => Datum.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "Previews_data": previewsData == null
            ? []
            : List<dynamic>.from(previewsData!.map((x) => x.toMap())),
        "movies_data": moviesData == null
            ? []
            : List<dynamic>.from(moviesData!.map((x) => x.toMap())),
        "Trending_Now_data": trendingNowData == null
            ? []
            : List<dynamic>.from(trendingNowData!.map((x) => x.toMap())),
      };
}

class Datum {
  String? image;

  Datum({
    this.image,
  });

  factory Datum.fromMap(Map<String, dynamic> json) => Datum(
        image: json["image"],
      );

  Map<String, dynamic> toMap() => {
        "image": image,
      };
}
