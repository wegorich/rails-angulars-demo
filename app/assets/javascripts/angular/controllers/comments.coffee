@CommentsController = ($scope, Comment)->
  $scope.id = if $scope.opened then $scope.opened.id else $scope.$parent.item.id
  $scope.items = Comment.query({todo_item_id:  $scope.id })
  $scope.newComment = {}

  $scope.addNewComment = ()->
    $scope.newComment.todo_item_id = $scope.id
    item = Comment.save($scope.newComment)
    $scope.items.push(item)
    $scope.newComment = {}