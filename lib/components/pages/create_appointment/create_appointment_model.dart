import '/backend/firebase_storage/storage.dart';
import '/charging_locator/charging_locator_widget.dart';
import '/components/location_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import '/upcoming/upcoming_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateAppointmentModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for userName widget.
  TextEditingController? userNameController;
  String? Function(BuildContext, String?)? userNameControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for serviceType widget.
  String? serviceTypeValue;
  FormFieldController<String>? serviceTypeValueController;
  // Model for location component.
  late LocationModel locationModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    locationModel = createModel(context, () => LocationModel());
  }

  void dispose() {
    unfocusNode.dispose();
    userNameController?.dispose();
    locationModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
