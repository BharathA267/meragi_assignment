// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetworkLoginRequest _$NetworkLoginRequestFromJson(Map<String, dynamic> json) =>
    NetworkLoginRequest(
      password: json['password'] as String,
      username: json['username'] as String,
    );

Map<String, dynamic> _$NetworkLoginRequestToJson(
        NetworkLoginRequest instance) =>
    <String, dynamic>{
      'password': instance.password,
      'username': instance.username,
    };
