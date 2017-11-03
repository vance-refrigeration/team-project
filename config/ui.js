'use strict'
const showHikesTemplate = require('../templates/hike-listing.handlebars')

const createHikeSuccess = (data) => {
  // console.log('Successfully created hike ', data)
  // $('.create-hike-modal-title').text('Yay, you just inputted a new adventure! Close this message to see your recent input.')
  // $('.create-hike-modal-body').hide()
  $('.get-hikes-button').hide()
  $('#create-hike-modal').modal('hide')
  $('body').removeClass('modal-open')
  $('.modal-backdrop').remove()
  // function to clear out submit form after submit - found via stackoverflow
  $('.modal').on('hidden.bs.modal', function () {
    $(this).find('form')[0].reset()
  })
}

const createHikeFailure = () => {
  // console.log('Failed to create new hike')
  $('.create-hike-modal-title').text('Something is wrong, please close this box and try again.')
  // $('.create-hike-modal-body').hide()
}

const getHikesSuccess = (data) => {
  // console.log('Successfully got all hikes')
  // console.log(data.hikes)
  const showHikesHtml = showHikesTemplate({ hikes: data.hikes })
  $('.content').html(showHikesHtml)
  $('.get-hikes-button').hide()
}

const getHikesFailure = () => {
  // console.log('Failed to get all hikes')
}

const deleteHikeSuccess = (id) => {
  // console.log('Successfully deleted a hike')
  // $("div[data-id='" + id + "']").remove()
  // show message that you succssfully deleted name of hike
}

const deleteHikeFailure = () => {
  // console.log('Failed to delete hike')
}

const updateHikeSuccess = (data) => {
  // console.log('Successful update')
  // $('.update-modal-body').hide()
  $('#update-hike-modal').modal('hide')
  $('body').removeClass('modal-open')
  $('.modal-backdrop').remove()
}

const updateHikeFailure = () => {
  // console.log('Failed to update')
  $('.update-hike-modal-title').text('Something is wrong, please close this box and try again.')
}

module.exports = {
  createHikeSuccess,
  createHikeFailure,
  getHikesSuccess,
  getHikesFailure,
  deleteHikeSuccess,
  deleteHikeFailure,
  updateHikeSuccess,
  updateHikeFailure
}
