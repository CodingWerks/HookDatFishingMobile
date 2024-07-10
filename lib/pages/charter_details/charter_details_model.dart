import '/flutter_flow/flutter_flow_util.dart';
import 'charter_details_widget.dart' show CharterDetailsWidget;
import 'package:flutter/material.dart';

class CharterDetailsModel extends FlutterFlowModel<CharterDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
