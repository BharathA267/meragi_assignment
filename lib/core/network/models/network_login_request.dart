import 'package:json_annotation/json_annotation.dart';

part 'network_login_request.g.dart';

@JsonSerializable()
class NetworkLoginRequest {
  final String password;
  final String username;

  const NetworkLoginRequest({
    required this.password,
    required this.username,
  });

  factory NetworkLoginRequest.fromJson(Map<String, dynamic> json) =>
      _$NetworkLoginRequestFromJson(json);

  Map<String, dynamic> toJson() => _$NetworkLoginRequestToJson(this);
}
