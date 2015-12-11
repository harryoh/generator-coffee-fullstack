'use strict'

express = require 'express'
controller = require './<%= name %>.controller'

router = express.Router()

router.get '/', controller.index<% if(filters.mongoose) { %>
router.get '/:id', controller.show
router.post '/', controller.create
router.put '/:id', controller.update
router.patch '/:id', controller.update
router.delete '/:id', controller.destroy<% } %>

module.exports = router