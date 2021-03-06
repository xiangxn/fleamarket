///
//  Generated code. Do not modify.
//  source: bitsflea.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'bitsflea.pb.dart' as $0;
export 'bitsflea.pb.dart';

class BitsFleaClient extends $grpc.Client {
  static final _$register =
      $grpc.ClientMethod<$0.RegisterRequest, $0.RegisterReply>(
          '/bitsflea.BitsFlea/Register',
          ($0.RegisterRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.RegisterReply.fromBuffer(value));
  static final _$sendSmsCode = $grpc.ClientMethod<$0.SmsRequest, $0.BaseReply>(
      '/bitsflea.BitsFlea/SendSmsCode',
      ($0.SmsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseReply.fromBuffer(value));
  static final _$refreshToken =
      $grpc.ClientMethod<$0.RefreshTokenRequest, $0.TokenReply>(
          '/bitsflea.BitsFlea/RefreshToken',
          ($0.RefreshTokenRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.TokenReply.fromBuffer(value));
  static final _$referral = $grpc.ClientMethod<$0.EosidRequest, $0.BaseReply>(
      '/bitsflea.BitsFlea/Referral',
      ($0.EosidRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseReply.fromBuffer(value));
  static final _$search = $grpc.ClientMethod<$0.SearchRequest, $0.SearchReply>(
      '/bitsflea.BitsFlea/Search',
      ($0.SearchRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SearchReply.fromBuffer(value));
  static final _$transaction =
      $grpc.ClientMethod<$0.TransactionRequest, $0.BaseReply>(
          '/bitsflea.BitsFlea/Transaction',
          ($0.TransactionRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BaseReply.fromBuffer(value));
  static final _$follow = $grpc.ClientMethod<$0.FollowRequest, $0.BaseReply>(
      '/bitsflea.BitsFlea/Follow',
      ($0.FollowRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseReply.fromBuffer(value));
  static final _$unFollow = $grpc.ClientMethod<$0.FollowRequest, $0.BaseReply>(
      '/bitsflea.BitsFlea/UnFollow',
      ($0.FollowRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseReply.fromBuffer(value));
  static final _$collect = $grpc.ClientMethod<$0.CollectRequest, $0.BaseReply>(
      '/bitsflea.BitsFlea/Collect',
      ($0.CollectRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseReply.fromBuffer(value));
  static final _$unCollect =
      $grpc.ClientMethod<$0.CollectRequest, $0.BaseReply>(
          '/bitsflea.BitsFlea/UnCollect',
          ($0.CollectRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BaseReply.fromBuffer(value));
  static final _$address = $grpc.ClientMethod<$0.AddressRequest, $0.BaseReply>(
      '/bitsflea.BitsFlea/Address',
      ($0.AddressRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseReply.fromBuffer(value));
  static final _$updateAddress =
      $grpc.ClientMethod<$0.AddressRequest, $0.BaseReply>(
          '/bitsflea.BitsFlea/UpdateAddress',
          ($0.AddressRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BaseReply.fromBuffer(value));
  static final _$setDefaultAddr =
      $grpc.ClientMethod<$0.SetDefaultAddrRequest, $0.BaseReply>(
          '/bitsflea.BitsFlea/SetDefaultAddr',
          ($0.SetDefaultAddrRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BaseReply.fromBuffer(value));
  static final _$upload = $grpc.ClientMethod<$0.FileRequest, $0.BaseReply>(
      '/bitsflea.BitsFlea/Upload',
      ($0.FileRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.BaseReply.fromBuffer(value));

  BitsFleaClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.RegisterReply> register($0.RegisterRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$register, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BaseReply> sendSmsCode($0.SmsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendSmsCode, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.TokenReply> refreshToken(
      $0.RefreshTokenRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$refreshToken, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BaseReply> referral($0.EosidRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$referral, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SearchReply> search($0.SearchRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$search, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BaseReply> transaction($0.TransactionRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$transaction, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BaseReply> follow($0.FollowRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$follow, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BaseReply> unFollow($0.FollowRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$unFollow, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BaseReply> collect($0.CollectRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$collect, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BaseReply> unCollect($0.CollectRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$unCollect, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BaseReply> address($0.AddressRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$address, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BaseReply> updateAddress($0.AddressRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateAddress, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BaseReply> setDefaultAddr(
      $0.SetDefaultAddrRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$setDefaultAddr, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.BaseReply> upload($0.FileRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$upload, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class BitsFleaServiceBase extends $grpc.Service {
  $core.String get $name => 'bitsflea.BitsFlea';

  BitsFleaServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RegisterRequest, $0.RegisterReply>(
        'Register',
        register_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RegisterRequest.fromBuffer(value),
        ($0.RegisterReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SmsRequest, $0.BaseReply>(
        'SendSmsCode',
        sendSmsCode_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SmsRequest.fromBuffer(value),
        ($0.BaseReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RefreshTokenRequest, $0.TokenReply>(
        'RefreshToken',
        refreshToken_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RefreshTokenRequest.fromBuffer(value),
        ($0.TokenReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.EosidRequest, $0.BaseReply>(
        'Referral',
        referral_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.EosidRequest.fromBuffer(value),
        ($0.BaseReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SearchRequest, $0.SearchReply>(
        'Search',
        search_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SearchRequest.fromBuffer(value),
        ($0.SearchReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.TransactionRequest, $0.BaseReply>(
        'Transaction',
        transaction_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.TransactionRequest.fromBuffer(value),
        ($0.BaseReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FollowRequest, $0.BaseReply>(
        'Follow',
        follow_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FollowRequest.fromBuffer(value),
        ($0.BaseReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FollowRequest, $0.BaseReply>(
        'UnFollow',
        unFollow_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FollowRequest.fromBuffer(value),
        ($0.BaseReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectRequest, $0.BaseReply>(
        'Collect',
        collect_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CollectRequest.fromBuffer(value),
        ($0.BaseReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CollectRequest, $0.BaseReply>(
        'UnCollect',
        unCollect_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.CollectRequest.fromBuffer(value),
        ($0.BaseReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddressRequest, $0.BaseReply>(
        'Address',
        address_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddressRequest.fromBuffer(value),
        ($0.BaseReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AddressRequest, $0.BaseReply>(
        'UpdateAddress',
        updateAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddressRequest.fromBuffer(value),
        ($0.BaseReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetDefaultAddrRequest, $0.BaseReply>(
        'SetDefaultAddr',
        setDefaultAddr_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SetDefaultAddrRequest.fromBuffer(value),
        ($0.BaseReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FileRequest, $0.BaseReply>(
        'Upload',
        upload_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FileRequest.fromBuffer(value),
        ($0.BaseReply value) => value.writeToBuffer()));
  }

  $async.Future<$0.RegisterReply> register_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RegisterRequest> request) async {
    return register(call, await request);
  }

  $async.Future<$0.BaseReply> sendSmsCode_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SmsRequest> request) async {
    return sendSmsCode(call, await request);
  }

  $async.Future<$0.TokenReply> refreshToken_Pre($grpc.ServiceCall call,
      $async.Future<$0.RefreshTokenRequest> request) async {
    return refreshToken(call, await request);
  }

  $async.Future<$0.BaseReply> referral_Pre(
      $grpc.ServiceCall call, $async.Future<$0.EosidRequest> request) async {
    return referral(call, await request);
  }

  $async.Future<$0.SearchReply> search_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SearchRequest> request) async {
    return search(call, await request);
  }

  $async.Future<$0.BaseReply> transaction_Pre($grpc.ServiceCall call,
      $async.Future<$0.TransactionRequest> request) async {
    return transaction(call, await request);
  }

  $async.Future<$0.BaseReply> follow_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FollowRequest> request) async {
    return follow(call, await request);
  }

  $async.Future<$0.BaseReply> unFollow_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FollowRequest> request) async {
    return unFollow(call, await request);
  }

  $async.Future<$0.BaseReply> collect_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CollectRequest> request) async {
    return collect(call, await request);
  }

  $async.Future<$0.BaseReply> unCollect_Pre(
      $grpc.ServiceCall call, $async.Future<$0.CollectRequest> request) async {
    return unCollect(call, await request);
  }

  $async.Future<$0.BaseReply> address_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddressRequest> request) async {
    return address(call, await request);
  }

  $async.Future<$0.BaseReply> updateAddress_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddressRequest> request) async {
    return updateAddress(call, await request);
  }

  $async.Future<$0.BaseReply> setDefaultAddr_Pre($grpc.ServiceCall call,
      $async.Future<$0.SetDefaultAddrRequest> request) async {
    return setDefaultAddr(call, await request);
  }

  $async.Future<$0.BaseReply> upload_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FileRequest> request) async {
    return upload(call, await request);
  }

  $async.Future<$0.RegisterReply> register(
      $grpc.ServiceCall call, $0.RegisterRequest request);
  $async.Future<$0.BaseReply> sendSmsCode(
      $grpc.ServiceCall call, $0.SmsRequest request);
  $async.Future<$0.TokenReply> refreshToken(
      $grpc.ServiceCall call, $0.RefreshTokenRequest request);
  $async.Future<$0.BaseReply> referral(
      $grpc.ServiceCall call, $0.EosidRequest request);
  $async.Future<$0.SearchReply> search(
      $grpc.ServiceCall call, $0.SearchRequest request);
  $async.Future<$0.BaseReply> transaction(
      $grpc.ServiceCall call, $0.TransactionRequest request);
  $async.Future<$0.BaseReply> follow(
      $grpc.ServiceCall call, $0.FollowRequest request);
  $async.Future<$0.BaseReply> unFollow(
      $grpc.ServiceCall call, $0.FollowRequest request);
  $async.Future<$0.BaseReply> collect(
      $grpc.ServiceCall call, $0.CollectRequest request);
  $async.Future<$0.BaseReply> unCollect(
      $grpc.ServiceCall call, $0.CollectRequest request);
  $async.Future<$0.BaseReply> address(
      $grpc.ServiceCall call, $0.AddressRequest request);
  $async.Future<$0.BaseReply> updateAddress(
      $grpc.ServiceCall call, $0.AddressRequest request);
  $async.Future<$0.BaseReply> setDefaultAddr(
      $grpc.ServiceCall call, $0.SetDefaultAddrRequest request);
  $async.Future<$0.BaseReply> upload(
      $grpc.ServiceCall call, $0.FileRequest request);
}
