import "select2";
import $ from "jquery";

const initSelect2 = () => {
  $(document).ready(function() {
      $('.select2-multiple').select2();
  });
}

export { initSelect2 };