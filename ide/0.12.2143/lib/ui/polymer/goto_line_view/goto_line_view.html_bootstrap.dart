library app_bootstrap;

import 'package:polymer/polymer.dart';

import 'goto_line_view.dart' as i0;
import 'package:smoke/smoke.dart' show Declaration, PROPERTY, METHOD;
import 'package:smoke/static.dart' show useGeneratedCode, StaticConfiguration;
import 'goto_line_view.dart' as smoke_0;
import 'package:spark_widgets/common/spark_widget.dart' as smoke_1;
import 'package:polymer/polymer.dart' as smoke_2;

void main() {
  useGeneratedCode(new StaticConfiguration(
      checkedMode: false,
      parents: {
        smoke_0.GotoLineView: smoke_1.SparkWidget,
        smoke_1.SparkWidget: smoke_2.PolymerElement,
      },
      declarations: {
        smoke_0.GotoLineView: const {},
      }));
  startPolymer([
      () => Polymer.register('goto-line-view', i0.GotoLineView),
    ]);
}
