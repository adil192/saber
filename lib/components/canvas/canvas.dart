
import 'package:flutter/material.dart';
import 'package:saber/data/editor/editor_core_info.dart';
import 'package:saber/data/editor/page.dart';

import '_stroke.dart';
import 'inner_canvas.dart';

class Canvas extends StatelessWidget {
  const Canvas({
    super.key,
    required this.path,
    required this.pageIndex,
    required this.innerCanvasKey,
    required this.coreInfo,
    required this.currentStroke,
  });

  final String path;
  final int pageIndex;

  final EditorCoreInfo coreInfo;
  final Stroke? currentStroke;

  final GlobalKey<State<InnerCanvas>>? innerCanvasKey;

  @override
  Widget build(BuildContext context) {
    Size pageSize = coreInfo.pages.isNotEmpty ? coreInfo.pages[pageIndex].size : EditorPage.defaultSize;

    return Center(
      child: FittedBox(
        child: ClipRect(
          child: InnerCanvas(
            key: innerCanvasKey,
            width: pageSize.width,
            height: pageSize.height,
            coreInfo: coreInfo,
            currentStroke: currentStroke,
          ),
        ),
      ),
    );
  }
}
