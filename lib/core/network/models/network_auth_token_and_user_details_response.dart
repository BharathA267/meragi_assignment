import 'package:json_annotation/json_annotation.dart';

part 'network_auth_token_and_user_details_response.g.dart';

@JsonSerializable()
class NetworkAuthTokenAndUserDetailsResponse {
  final String accessToken;
  final String refreshToken;
  final String userName;
  final int userId;

  NetworkAuthTokenAndUserDetailsResponse(
      this.accessToken, this.refreshToken, this.userName, this.userId);

  factory NetworkAuthTokenAndUserDetailsResponse.fromJson(
          Map<String, dynamic> json) =>
      _$NetworkAuthTokenAndUserDetailsResponseFromJson(json);

  Map<String, dynamic> toJson() =>
      _$NetworkAuthTokenAndUserDetailsResponseToJson(this);
}
