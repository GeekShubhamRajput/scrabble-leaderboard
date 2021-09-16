window.jQuery = $;
window.$ = $;

require('jquery')
require("popper.js")
require("@rails/ujs").start()
require("turbolinks").start()
import "channels"
import 'bootstrap/dist/js/bootstrap'
import "bootstrap/dist/css/bootstrap";

require("stylesheets/application.scss")


Rails.start()
Turbolinks.start()
ActiveStorage.start()
