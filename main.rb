require 'opencv'
include OpenCV

window = GUI::Window.new('simple window')
camera = CvCapture.open

loop {
  image = camera.query
  window.show image
  break if GUI::wait_key(100)
}
