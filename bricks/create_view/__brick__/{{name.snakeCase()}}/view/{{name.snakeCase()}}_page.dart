import 'package:flutter/material.dart';

import '../../l10n/l10n.dart';

class {{name.pascalCase()}}Page extends StatelessWidget {
  const {{name.pascalCase()}}Page ({Key? key}) : super(key: key);

  static String get name => '{{name.pascalCase()}}';
  static String get route => '/{{name.paramCase()}}';

  @override
  Widget build(BuildContext context) {
    return _{{name.pascalCase()}}View(key: key);
  }
}

class _{{name.pascalCase()}}View extends StatelessWidget {
  const _{{name.pascalCase()}}View({Key? key}) : super(key: key);

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
