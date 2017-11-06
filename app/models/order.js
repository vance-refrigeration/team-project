'use strict'

const mongoose = require('mongoose')

const orderSchema = new mongoose.Schema({
  orderItems: {
    type: Array,
    'default': []
  },
  _owner: {
    type: mongoose.Schema.Types.ObjectId,
    ref: 'User',
    required: true
  }
}, {
  timestamps: true,
  toJSON: {
    virtuals: true,
    transform: function (doc, ret, options) {
      const userId = (options.user && options.user._id) || false
      ret.editable = userId && userId.equals(doc._owner)
      return ret
    }
  }
})

const Order = mongoose.model('Order', orderSchema)

module.exports = Order
