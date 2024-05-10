import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr"; // You need to import this to use new flatpickr()

export default class extends Controller {
  static targets = ["input", "startDate", "endDate"]

  connect() {
    flatpickr(this.inputTarget, {
      mode: "range"
    })
  }

  processDate(event) {
    const newDate = this.inputTarget.value;
    const newDateSplit = newDate.split(' to ');
    const startDate = newDateSplit[0];
    const endDate = newDateSplit[1];
    if (endDate) {
      this.startDateTarget.value = startDate;
      this.endDateTarget.value = endDate;
    }
  }

}
