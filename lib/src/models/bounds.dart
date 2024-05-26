import 'package:google_places_location/src/models/northeast.dart';
import 'package:google_places_location/src/models/southwest.dart';

class Bounds {
  final Northeast? northeast;
  final Southwest? southwest;

  Bounds({this.northeast, this.southwest});

  factory Bounds.fromJson(Map<String, dynamic> json) {
    return Bounds(
      northeast: json['northeast'] != null
          ? Northeast.fromJson(json['northeast'])
          : null,
      southwest: json['southwest'] != null
          ? Southwest.fromJson(json['southwest'])
          : null,
    );
  }
}
