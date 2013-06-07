app.factory('TodoItem', ($resource)->
  TodoItem = $resource '/todo_items/:id', {id: '@id'}, {update: {method: 'PUT'}}
  return TodoItem;

).factory('Comment', ($resource)->
  Comment = $resource '/comments/:id', {id: '@id'}, {update: {method: 'PUT'}}
  return Comment
)