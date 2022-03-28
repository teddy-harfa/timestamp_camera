class ApiService {
  factory ApiService() {
    return _apiService;
  }

  ApiService._internal();

  static final ApiService _apiService = ApiService._internal();

  final DioHelper _mainDioHelper = DioHelper();
}
