import $ from 'jquery';
import select2 from 'select2';

const multipleSelect = () => {
  $(document).ready(function() {
    $('.multiple-select').select2({ tags: true,
                                    width: '100%' });
  });
}

export { multipleSelect };
