class NetworkExceptionModel {

  static String generateExceptionMessage(requestName, statusCode) {
    return 'Failed to send $requestName with the status code of: $statusCode';
  }
}