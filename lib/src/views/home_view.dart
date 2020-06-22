import 'package:flutter/material.dart';
import 'package:soru/src/core/home_view_model.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  ViewModelBuilder<HomeViewModel> build(BuildContext context) =>
      ViewModelBuilder<HomeViewModel>.reactive(
        builder: (BuildContext context, HomeViewModel model, Widget child) =>
            Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RaisedButton(
                  child: const Text('Sign Out'),
                  onPressed: model.signOut,
                ),
              ],
            ),
          ),
        ),
        viewModelBuilder: () => HomeViewModel(),
      );
}
