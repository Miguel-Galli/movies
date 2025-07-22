/*
{
  "success": false,
  "status_code": 34,
  "status_message": "The resource you requested could not be found."
}
*/

class MoviesListError {

  final String statusMessage;
  final String? errorMessage;
  final bool? isSuccess;
  final int statusCode;

  MoviesListError(this.statusMessage, this.errorMessage, this.isSuccess, this.statusCode);

  static MoviesListError fromJson(Map map) {
    return MoviesListError(
        map['status_message'],
        map['error_message'] ?? 'Erro de negocio',
        map['success'] ?? false,
        map['status_code']
    );
  }

  @override
  String toString() {
    return 'Status: $statusMessage, Error: $errorMessage, Success: $isSuccess, Code: $statusCode';
  }

}