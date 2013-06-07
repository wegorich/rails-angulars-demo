@ItemController = ($scope, $routeParams, TodoItem, Comment)->

  $scope.doneInWords = (item)->
    if item
      'Готово'
    else
      'Не делалось'