import 'package:flutter/material.dart';

import '../views/example/grid_view.dart';
import '../views/example/load_local_image.dart';
import '../views/example/load_local_json.dart';
import '../views/example/load_more_using_api.dart';
import '../views/home_view.dart';

//Routes Name Define
const rootRoute = "/";
const GridViewRoute = "/grid-view";
const LoadLocalImageRoute = "/load-local-image";
const LoadLocalJSONRoute = "/load-local-json";
const LoadMoreUsingAPIRoute = "/load-more-using-api";

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case rootRoute:
        return MaterialPageRoute(builder: (_) => HomeView());
      //Example Pages
      case GridViewRoute:
        return MaterialPageRoute(builder: (_) => GridViewPage());
      case LoadLocalImageRoute:
        return MaterialPageRoute(builder: (_) => LoadLocalImagePage());
      case LoadLocalJSONRoute:
        return MaterialPageRoute(builder: (_) => LoadLocalJSONPage());
      case LoadMoreUsingAPIRoute:
        return MaterialPageRoute(builder: (_) => LoadMoreUsingAPIPage());
        // case '/second':
        //   // Validation of correct data type
        //   if (args is String) {
        //     return MaterialPageRoute(
        //       builder: (_) => SecondPage(
        //         data: args,
        //       ),
        //     );
        //   }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
