// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_auth_token_and_user_details_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkAuthTokenAndUserDetailsResponse
    _$NetworkAuthTokenAndUserDetailsResponseFromJson(
            Map<String, dynamic> json) =>
        NetworkAuthTokenAndUserDetailsResponse(
          json['accessToken'] as String,
          json['refreshToken'] as String,
          json['userName'] as String,
          (json['userId'] as num).toInt(),
        );

Map<String, dynamic> _$NetworkAuthTokenAndUserDetailsResponseToJson(
        NetworkAuthTokenAndUserDetailsResponse instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'userName': instance.userName,
      'userId': instance.userId,
    };
