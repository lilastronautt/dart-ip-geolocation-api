import 'package:meta/meta.dart' show required;

class GeolocationData{
    final String country, countryCode, timezone, ip, isp;
    final double lat, lng;

    GeolocationData({
        @required this.country,
        @required this.countryCode,
        @required this.timezone,
        @required this.isp,
        @required this.ip,
        @required this.lat,
        @required this.lng
    });

    factory GeolocationData.fromJson(Map<String, dynamic> json){
        return GeolocationData(
            country: json['country'],
            countryCode: json['countryCode'],
            timezone: json['timezone'],
            isp: json['isp']
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
            'isp': this.isp,
            'lat': this.lat,
            'lng': this.lng,
        };
    }
}
