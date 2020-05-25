import 'package:meta/meta.dart' show required;

class GeolocationData{
    final String country, countryCode, timezone, ip;
    final double lat, lng;

    GeolocationData({
        @required this.country,
        @required this.countryCode,
        @required this.timezone,
        @required this.ip,
        @required this.lat,
        @required this.lng
    });

    factory GeolocationData.fromJson(Map<String, dynamic> json){
        return GeolocationData(
            country: json['country'],
            countryCode: json['countryCode'],
            timezone: json['timezone'],
            ip: json['query'],
            lat: json['lat'],
            lng: json['lon'],
        );
    }
    Map<String, dynamic> toJson(){
        return {
            'country': this.country,
            'countryCode': this.countryCode,
            'timezone': this.timezone,
            'ip': this.ip,
            'lat': this.lat,
            'lng': this.lng,
        };
    }
}