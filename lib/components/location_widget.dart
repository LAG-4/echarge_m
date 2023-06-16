import '/flutter_flow/flutter_flow_place_picker.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/place.dart';
import 'dart:io';
import 'package:map_launcher/map_launcher.dart' as $ml;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'location_model.dart';
export 'location_model.dart';

class LocationWidget extends StatefulWidget {
  const LocationWidget({Key? key}) : super(key: key);

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  late LocationModel _model;

  LatLng? currentUserLocationValue;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LocationModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      currentUserLocationValue =
          await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));
      await launchMap(
        mapType: $ml.MapType.google,
        location: currentUserLocationValue,
        title: currentUserLocationValue!.toString(),
      );
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowPlacePicker(
      iOSGoogleMapsApiKey: 'AIzaSyDm1imsjkWABXFFUeDZkk9Orx-GIyA9HFo',
      androidGoogleMapsApiKey: 'AIzaSyARoIQ2vvHBwwwc_PFgIkKsHhJNzu39HTI',
      webGoogleMapsApiKey: 'AIzaSyCSU9h0jm4s4EVnyl_uhy5BvU1OFhPLQfY',
      onSelect: (place) async {
        setState(() => _model.placePickerValue = place);
      },
      defaultText: 'Select Location',
      icon: Icon(
        Icons.place,
        color: Colors.white,
        size: 16.0,
      ),
      buttonOptions: FFButtonOptions(
        width: 200.0,
        height: 40.0,
        color: FlutterFlowTheme.of(context).primary,
        textStyle: FlutterFlowTheme.of(context).titleSmall.override(
              fontFamily: 'Outfit',
              color: Colors.white,
            ),
        borderSide: BorderSide(
          color: Colors.transparent,
          width: 1.0,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
