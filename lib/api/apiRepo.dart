import 'package:dio/dio.dart';

class ApiRepo {
  Dio? _dio;
  String? url;
  Map<String, dynamic>? playload;

  ApiRepo({this.url, this.playload});

  void getData({
    Function()? beforeSend,
    Function(Map<String, dynamic> data)? onSuccess,
    Function(dynamic? error)? onError,
  }) {
    _dio?.get(url!, queryParameters: playload).then((response) {
      if (onSuccess != null) {
        onSuccess(response.data);
      }
    }).catchError((error) {
      onError!(error);
    });
  }
}
