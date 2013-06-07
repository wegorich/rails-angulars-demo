@TodoItemsController = ($scope, $routeParams, TodoItem, Comment)->
  $scope.items = TodoItem.query()

  $scope.predicate = '-done';

  $scope.newTodo = {}

  $scope.addNewTodo = ()->

    $scope.newTodo.done ||= false

    item = TodoItem.save($scope.newTodo)
    $scope.items.push(item)
    $scope.newTodo = {}

  $scope.todoComputed = ()->
    "Новое todo: " + $scope.newTodo.name

# list -> detail page
  $scope.open = (item)->
    if ($scope.isOpen(item))
      $scope.opened = undefined
    else
      $scope.opened = item

  $scope.isOpen = (item)->
    $scope.opened == item


  $scope.anyItemOpen = ()->
    $scope.opened != undefined

  $scope.close = ()->
    $scope.opened = undefined