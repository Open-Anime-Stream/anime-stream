// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:anime_stream_windows/app/app.dart';
import 'package:anime_stream_windows/bootstrap.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/widgets.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  bootstrap(() => const App());
  doWhenWindowReady(() {
    const initialSize = Size(1100, 750);
    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.title = 'My App Title';
    appWindow.show();
  });
}
