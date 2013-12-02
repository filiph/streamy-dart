/**
 * WARNING: GENERATED CODE. DO NOT EDIT BY HAND.
 * 
 */
library methodposttest;
import 'dart:async';
import 'package:streamy/streamy.dart' as streamy;
import 'method_post_client_resources.dart' as res;

abstract class MethodPostTestResourcesMixin {
  res.FoosResource _foos;
  res.FoosResource get foos {
    if (_foos == null) {
      _foos = new res.FoosResource(this as streamy.Root);
    }
    return _foos;
  }
}

class MethodPostTest
    extends streamy.Root
    with MethodPostTestResourcesMixin {
  String get apiType => r'MethodPostTest';
  final streamy.TransactionStrategy _txStrategy;
  final streamy.RequestHandler requestHandler;
  final streamy.Tracer _tracer;
  MethodPostTest(
      this.requestHandler,
      {String servicePath: 'postTest/v1/',
      streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY,
      streamy.TransactionStrategy txStrategy: null,
      streamy.Tracer tracer: const streamy.NoopTracer()}) :
          super(typeRegistry, servicePath),
          this._txStrategy = txStrategy,
          this._tracer = tracer;
  Stream send(streamy.Request request) =>
      requestHandler.handle(request, _tracer.trace(request));
  MethodPostTestTransaction beginTransaction() =>
      new MethodPostTestTransaction(typeRegistry, servicePath,
          _txStrategy.beginTransaction());
}

/// Provides the same API as [MethodPostTest] but runs all requests as
/// part of the same transaction.
class MethodPostTestTransaction
    extends streamy.TransactionRoot
    with MethodPostTestResourcesMixin {
  String get apiType => r'MethodPostTestTransaction';
  MethodPostTestTransaction(
      streamy.TypeRegistry typeRegistry,
      String servicePath,
      streamy.Transaction tx) : super(typeRegistry, servicePath, tx);
}
