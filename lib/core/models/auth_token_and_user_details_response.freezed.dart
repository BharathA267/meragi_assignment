// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_token_and_user_details_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthTokenAndUserDetailsResponse {
  String get accessToken => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  int get userId => throw _privateConstructorUsedError;

  /// Create a copy of AuthTokenAndUserDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthTokenAndUserDetailsResponseCopyWith<AuthTokenAndUserDetailsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthTokenAndUserDetailsResponseCopyWith<$Res> {
  factory $AuthTokenAndUserDetailsResponseCopyWith(
          AuthTokenAndUserDetailsResponse value,
          $Res Function(AuthTokenAndUserDetailsResponse) then) =
      _$AuthTokenAndUserDetailsResponseCopyWithImpl<$Res,
          AuthTokenAndUserDetailsResponse>;
  @useResult
  $Res call(
      {String accessToken, String refreshToken, String userName, int userId});
}

/// @nodoc
class _$AuthTokenAndUserDetailsResponseCopyWithImpl<$Res,
        $Val extends AuthTokenAndUserDetailsResponse>
    implements $AuthTokenAndUserDetailsResponseCopyWith<$Res> {
  _$AuthTokenAndUserDetailsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthTokenAndUserDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? userName = null,
    Object? userId = null,
  }) {
    return _then(_value.copyWith(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthTokenAndUserDetailsResponseImplCopyWith<$Res>
    implements $AuthTokenAndUserDetailsResponseCopyWith<$Res> {
  factory _$$AuthTokenAndUserDetailsResponseImplCopyWith(
          _$AuthTokenAndUserDetailsResponseImpl value,
          $Res Function(_$AuthTokenAndUserDetailsResponseImpl) then) =
      __$$AuthTokenAndUserDetailsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String accessToken, String refreshToken, String userName, int userId});
}

/// @nodoc
class __$$AuthTokenAndUserDetailsResponseImplCopyWithImpl<$Res>
    extends _$AuthTokenAndUserDetailsResponseCopyWithImpl<$Res,
        _$AuthTokenAndUserDetailsResponseImpl>
    implements _$$AuthTokenAndUserDetailsResponseImplCopyWith<$Res> {
  __$$AuthTokenAndUserDetailsResponseImplCopyWithImpl(
      _$AuthTokenAndUserDetailsResponseImpl _value,
      $Res Function(_$AuthTokenAndUserDetailsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthTokenAndUserDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = null,
    Object? refreshToken = null,
    Object? userName = null,
    Object? userId = null,
  }) {
    return _then(_$AuthTokenAndUserDetailsResponseImpl(
      accessToken: null == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AuthTokenAndUserDetailsResponseImpl
    implements _AuthTokenAndUserDetailsResponse {
  const _$AuthTokenAndUserDetailsResponseImpl(
      {required this.accessToken,
      required this.refreshToken,
      required this.userName,
      required this.userId});

  @override
  final String accessToken;
  @override
  final String refreshToken;
  @override
  final String userName;
  @override
  final int userId;

  @override
  String toString() {
    return 'AuthTokenAndUserDetailsResponse(accessToken: $accessToken, refreshToken: $refreshToken, userName: $userName, userId: $userId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthTokenAndUserDetailsResponseImpl &&
            (identical(other.accessToken, accessToken) ||
                other.accessToken == accessToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, accessToken, refreshToken, userName, userId);

  /// Create a copy of AuthTokenAndUserDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthTokenAndUserDetailsResponseImplCopyWith<
          _$AuthTokenAndUserDetailsResponseImpl>
      get copyWith => __$$AuthTokenAndUserDetailsResponseImplCopyWithImpl<
          _$AuthTokenAndUserDetailsResponseImpl>(this, _$identity);
}

abstract class _AuthTokenAndUserDetailsResponse
    implements AuthTokenAndUserDetailsResponse {
  const factory _AuthTokenAndUserDetailsResponse(
      {required final String accessToken,
      required final String refreshToken,
      required final String userName,
      required final int userId}) = _$AuthTokenAndUserDetailsResponseImpl;

  @override
  String get accessToken;
  @override
  String get refreshToken;
  @override
  String get userName;
  @override
  int get userId;

  /// Create a copy of AuthTokenAndUserDetailsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthTokenAndUserDetailsResponseImplCopyWith<
          _$AuthTokenAndUserDetailsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
