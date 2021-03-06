///
//  Generated code. Do not modify.
//  source: pubsub.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'pubsub.pb.dart' as $0;
export 'pubsub.pb.dart';

class PubSubAPIClient extends $grpc.Client {
  static final _$pubSub =
      $grpc.ClientMethod<$0.PubSubRequest, $0.PubSubResponse>(
          '/pb.PubSubAPI/PubSub',
          ($0.PubSubRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.PubSubResponse.fromBuffer(value));

  PubSubAPIClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseStream<$0.PubSubResponse> pubSub(
      $async.Stream<$0.PubSubRequest> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$pubSub, request, options: options);
    return $grpc.ResponseStream(call);
  }
}

abstract class PubSubAPIServiceBase extends $grpc.Service {
  $core.String get $name => 'pb.PubSubAPI';

  PubSubAPIServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.PubSubRequest, $0.PubSubResponse>(
        'PubSub',
        pubSub,
        true,
        true,
        ($core.List<$core.int> value) => $0.PubSubRequest.fromBuffer(value),
        ($0.PubSubResponse value) => value.writeToBuffer()));
  }

  $async.Stream<$0.PubSubResponse> pubSub(
      $grpc.ServiceCall call, $async.Stream<$0.PubSubRequest> request);
}
