/**
 * WARNING: GENERATED CODE. DO NOT EDIT BY HAND.
 * 
 */
library urlshortener;
import 'dart:async';
import 'package:streamy/streamy.dart' as streamy;
import 'urlshortener.dart_resources.dart' as res;

abstract class UrlshortenerResourcesMixin {
  res.UrlResource _url;
  res.UrlResource get url {
    if (_url == null) {
      _url = new res.UrlResource(this as streamy.Root);
    }
    return _url;
  }
}

/// Lets you create, inspect, and manage goo.gl short URLs
class Urlshortener
    extends streamy.Root
    with UrlshortenerResourcesMixin {
  String get apiType => r'Urlshortener';
  final streamy.TransactionStrategy _txStrategy;
  final streamy.RequestHandler requestHandler;
  final streamy.Tracer _tracer;
  Urlshortener(
      this.requestHandler,
      {String servicePath: 'urlshortener/v1/',
      streamy.TypeRegistry typeRegistry: streamy.EMPTY_REGISTRY,
      streamy.TransactionStrategy txStrategy: null,
      streamy.Tracer tracer: const streamy.NoopTracer()}) :
          super(typeRegistry, servicePath),
          this._txStrategy = txStrategy,
          this._tracer = tracer;
  Stream send(streamy.Request request) =>
      requestHandler.handle(request, _tracer.trace(request));
  UrlshortenerTransaction beginTransaction() =>
      new UrlshortenerTransaction(typeRegistry, servicePath,
          _txStrategy.beginTransaction());
}

/// Provides the same API as [Urlshortener] but runs all requests as
/// part of the same transaction.
class UrlshortenerTransaction
    extends streamy.TransactionRoot
    with UrlshortenerResourcesMixin {
  String get apiType => r'UrlshortenerTransaction';
  UrlshortenerTransaction(
      streamy.TypeRegistry typeRegistry,
      String servicePath,
      streamy.Transaction tx) : super(typeRegistry, servicePath, tx);
}
