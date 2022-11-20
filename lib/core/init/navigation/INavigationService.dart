abstract class INavigationService {
  // service that initializes navigation functions
  Future<void> navigateToPage(String path, Object object); //navigates to a certain route
  Future<void> navigateToPageClear(String path, Object object); //navigates to a certain route but also clears all older routes
}