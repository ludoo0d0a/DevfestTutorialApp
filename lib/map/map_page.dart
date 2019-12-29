import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:devfest_demo/config/config_bloc.dart';
import 'package:devfest_demo/universal/dev_scaffold.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  static const String routeName = "/map";
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  GoogleMapController _controller;
  bool isMapCreated = false;
  static final LatLng myLocation = LatLng(19.0069709, 72.8311345 );

  @override
  void initState() {
    super.initState();
  }

  final CameraPosition _kGooglePlex = CameraPosition(
    target: myLocation,
    zoom: 14.4746,
  );

  Set<Marker> _createMarker() {
    return <Marker>[
      Marker(
          markerId: MarkerId("marker_1"),
          position: myLocation,
          icon: BitmapDescriptor.defaultMarkerWithHue(
            BitmapDescriptor.hueOrange,
          )),
    ].toSet();
  }

  changeMapMode() {
    if (ConfigBloc().darkModeOn) {
      getJsonFile("assets/nightmode.json").then(setMapStyle);
    } else {
      getJsonFile("assets/daymode.json").then(setMapStyle);
    }
  }

  Future<String> getJsonFile(String path) async {
    return await rootBundle.loadString(path);
  }

  void setMapStyle(String mapStyle) {
    _controller.setMapStyle(mapStyle);
  }

  @override
  Widget build(BuildContext context) {
    if (isMapCreated) {
      changeMapMode();
    }
    return DevScaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 1.0),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            GoogleMap(
              mapType: MapType.normal,
              zoomGesturesEnabled: true,
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              markers: _createMarker(),
              initialCameraPosition: _kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                _controller = controller;
                isMapCreated = true;
                changeMapMode();
                setState(() {});
              },
            ),
            IgnorePointer(
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: "ISDI School of Design & Innovation\n",
                        style: Theme.of(context).textTheme.title.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                        children: [
                          TextSpan(
                              text: "One India Bulls Centre, Tower 2A 6th Floor, Saidham Nagar, Parel, Mumbai, Maharashtra 400013",
                              style: Theme.of(context).textTheme.subtitle,
                              children: []),
                        ]),
                  )),
            )
          ],
        ),
      ),
      title: "Locate Us",
    );
  }
}
