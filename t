
Controller.prototype._updateCount = function () {
  var todos = this.model.getCount();
  this.model.getCount(function(todos) {

    this.$todoItemCounter.innerHTML = this.view.itemCounter(todos.active);

    this.$clearCompleted.innerHTML = this.view.clearCompletedButton(todos.completed);
    this.$clearCompleted.style.display = todos.completed > 0 ? 'block' : 'none';

    this.$toggleAll.checked = todos.completed === todos.total;

    this._toggleFrame(todos);
  }.bind(this));
};

