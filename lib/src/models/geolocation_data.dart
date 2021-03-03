import 'package:meta/meta.dart' show required;

class GeolocationData{
    final String country, countryCode, timezone, ip, isp, city, region, regionName;
    final double lat, lng;

    GeolocationData({
        @required this.country,
        @required this.countryCode,
        @required this.region,
        @required this.regionName,
        @required this.city,
        @required this.timezone,
        @required this.isp,
        @required this.ip,
        @required this.lat,
        @required this.lng,
    });

    factory GeolocationData.fromJson(Map<String, dynamic> json){
        return GeolocationData(
            country: json['country'],
            countryCode: json['countryCode'],
            region: json['region'],
            regionName: json['regionName'],
            city: json['city'],
            timezone: json['timezone'],
            isp: json['isp'],
            ip: json['query'],
            lat: json['lat'],
            lng: json['lon'],
        );
    }
    Map<String, dynamic> toJson(){
        return {
            'country': this.country,
            'countryCode': this.countryCode,
            'region': this.region,
            'regionname': this.regionName,
            'city': this.city,
            'timezone': this.timezone,
            'ip': this.ip,
            'isp': this.isp,
            'lat': this.lat,
            'lng': this.lng,
        };
    }
}
