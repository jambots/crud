'use strict';
module.exports = function(app) {
  var crud = require('../controllers/crudController');


  // crud Routes
  app.route('/tasks')
    .get(crud.list_all_tasks)
    .post(crud.create_a_task);


  app.route('/tasks/:taskId')
    .get(crud.read_a_task)
    .put(crud.update_a_task)
    .delete(crud.delete_a_task);
};
