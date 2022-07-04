import 'package:anime_stream_mobile/l10n/l10n.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  static String get name => 'Auth';
  static String get route => '/auth';

  @override
  Widget build(BuildContext context) {
    return _AuthView(key: key);
  }
}

class _AuthView extends StatelessWidget {
  const _AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
        body: Center(child: Text(l10n.counterAppBarTitle)),
      ),
    );
  }
}
