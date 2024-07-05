enum HttpMethod {
  get,
  post,
  put,
  delete,
  ;

  @override
  String toString() => switch (this) {
        HttpMethod.get => 'GET',
        HttpMethod.post => 'POST',
        HttpMethod.put => 'PUT',
        HttpMethod.delete => 'DELETE',
      };
}
