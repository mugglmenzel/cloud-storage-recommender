
mapServiceToImg = (service) ->
  switch service
    when 0 then 'Dropbox'
    when 1 then 'GoogleDrive'
    when 2 then 'S3'
    when 3 then 'BoxCom'
    when 4 then 'OneDrive'

$(".btn-recommend").click( ->
  $('.result').fadeOut()
  console.log 'asking for recommendation...'
  form = $('.form-recommend')
  $.ajax(
    url: 'https://yzikf28my8.execute-api.eu-west-1.amazonaws.com/prod/recommend'
    method: 'POST'
    contentType: 'application/json'
    data: JSON.stringify(
      encryption: form.find('input[name=encryption]').prop('checked')
    )
    dataType: 'json'
    success: (result) ->
      console.log 'got result: ' + JSON.stringify(result)
      $('.result img').attr('src', 'img/' + mapServiceToImg(result.service) + '.png')
      $('.result').fadeIn()
  )
)

console.log 'loaded cloud storage recommender.'