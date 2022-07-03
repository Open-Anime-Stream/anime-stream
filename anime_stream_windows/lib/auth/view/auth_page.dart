import 'package:core_sdk/core_sdk.dart';
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
        body: Row(
          children: [
            Expanded(
              child: Container(),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello, Welcome to Anime Stream!',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'To continue, please sign in with your Google account.',
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
