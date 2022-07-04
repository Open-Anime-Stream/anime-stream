import 'package:anime_stream_windows/l10n/l10n.dart';
import 'package:core_sdk/core_sdk.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  static String get name => 'Auth';
  static String get route => '/auth';

  @override
  Widget build(BuildContext context) {
    return _AuthView(key: key);
  }
}

final _formKey = GlobalKey<FormBuilderState>();

class _AuthView extends StatelessWidget {
  const _AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Center(
                child: Text(
                  'Login to Your Account',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.onPrimary,
                      ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: FormBuilder(
                      key: _formKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const CustomFormTextField(
                            name: 'email',
                            keyboardType: TextInputType.emailAddress,
                            prefixIcon: Icon(Icons.email),
                            hintText: 'Enter Email',
                          ),
                          const CustomFormTextField(
                            name: 'password',
                            keyboardType: TextInputType.visiblePassword,
                            prefixIcon: Icon(Icons.lock_outlined),
                            isPassword: true,
                            hintText: 'Enter Password',
                          ),
                          CustomAuthButton(
                            child: Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    'Login with Email',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                                const Icon(Icons.arrow_forward_rounded)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Hello, Welcome to Anime Stream!',
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: Theme.of(context).textTheme.button,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomAuthButton extends StatelessWidget {
  const CustomAuthButton({
    super.key,
    this.width,
    required this.child,
  });
  final double? width;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      width: width ?? MediaQuery.of(context).size.width / 3,
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).errorColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        onTap: () {},
        child: child,
      ),
    );
  }
}
