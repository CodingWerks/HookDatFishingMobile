import '/flutter_flow/flutter_flow_util.dart';
import 'charter_list_widget.dart' show CharterListWidget;
import 'package:flutter/material.dart';

class CharterListModel extends FlutterFlowModel<CharterListWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
