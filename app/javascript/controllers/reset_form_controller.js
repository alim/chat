import { Controller } from "@hotwired/stimulus"

// This Stimulus controller adds behavior to an HTML element. When the reset
// action is triggered on that element (e.g. when a button is clicked), the
// form fields within the associated HTML form element are reset, clearing
// their values.
export default class extends Controller {
  initialize() {
		console.log("Initializing...");
  }

  connect() {
	  console.log("Connecting w/ Stimulus!");
  }

  reset() {
    this.element.reset()
  }
}
