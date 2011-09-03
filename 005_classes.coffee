# constructor
# methods on prototype
# @ = this
# default args
# auto-assign
# class properties
# class methods

class Camera
  constructor: (settings) ->
    this.settings = settings

  aperture: -> "f/#{this.settings?.aperture ? '1.4'}"
  shutterSpeed: -> this.settings?.shutter ? '1/250'

camera = new Camera()
console.log camera.aperture()
console.log camera.shutterSpeed()

# console.log Camera.validApertures






















# class Camera
#   @validApertures: ['1.4', '2', '2.8', '4', '5.6', '8']
#   @price: (camera) ->
#     switch camera.brand
#       when "generic"      then "$50"
#       when "canon"        then "$500"
#       when "hasselblad"   then "$2000"
#
#   constructor: (settings, @brand) ->
#     this.settings = settings
#
#   aperture: -> "f/#{this.settings?.aperture ? '1.4'}"
#   shutterSpeed: -> this.settings?.shutter ? '1/250'
#
# camera = new Camera({}, "hasselblad")
# console.log camera.aperture()
# console.log camera.shutterSpeed()
#
# console.log Camera.validApertures
# console.log Camera.price(camera)


