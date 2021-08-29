class Service {
  String _serviceTitle;
  String _serviceDescription;
  String _serviceRoute;
  String _serviceImage;

  Service(this._serviceTitle, this._serviceDescription, this._serviceRoute,
      this._serviceImage);

  String get serviceImage => _serviceImage;

  String get serviceRoute => _serviceRoute;

  String get serviceDescription => _serviceDescription;

  String get serviceTitle => _serviceTitle;
}
