import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:here_sdk/mapview.dart';
import 'package:here_sdk/core.dart';

class AkunMaps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HereMap(
        onMapCreated: onMapCreated,
      ),
    );
  }

  Future<void> drawRedDot(HereMapController hereMapController, int drawOrder,
      GeoCoordinates geoCoordinates) async {
    ByteData fileData = await rootBundle.load('imagess/imgss/rec.png');
    Uint8List pixelData = fileData.buffer.asUint8List();
    MapImage mapImage =
        MapImage.withPixelDataAndImageFormat(pixelData, ImageFormat.png);
    MapMarker mapMarker = MapMarker(geoCoordinates, mapImage);
    mapMarker.drawOrder = drawOrder;
    hereMapController.mapScene.addMapMarker(mapMarker);
  }

  Future<void> drawPin(HereMapController hereMapController, int drawOrder,
      GeoCoordinates geoCoordinates) async {
    ByteData fileData = await rootBundle.load('imagess/imgss/placeholder.png');
    Uint8List pixelData = fileData.buffer.asUint8List();
    MapImage mapImage =
        MapImage.withPixelDataAndImageFormat(pixelData, ImageFormat.png);
    Anchor2D anchor2d = Anchor2D.withHorizontalAndVertical(0.5, 1);
    MapMarker mapMarker = MapMarker.withAnchor(geoCoordinates, mapImage, anchor2d);
    mapMarker.drawOrder = drawOrder;
    hereMapController.mapScene.addMapMarker(mapMarker);
  }

  void onMapCreated(HereMapController hereMapController) {
    hereMapController.mapScene.loadSceneForMapScheme(MapScheme.normalDay,
        (error) {
      if (error != null) {
        print('Error:' + error.toString());
        return;
      }
    });

    drawRedDot(hereMapController, 0,
        GeoCoordinates(-8.164677646679255, 113.71705285496861));
    drawPin(hereMapController, 1,
        GeoCoordinates(-8.164677646679255, 113.71705285496861));

    double distanceToEarthInMeters = 50000;
    hereMapController.camera.lookAtPointWithDistance(
        GeoCoordinates(-8.164677646679255, 113.71705285496861),
        distanceToEarthInMeters);
  }
}
