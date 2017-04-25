    // First method - Recommended
    $('#checkbox').prop('checked')  // Boolean true

    // Second method - Makes code more readable (e.g. in if statements)
    $('#checkbox').is(':checked')  // Boolean true

    // Third method - Selecting the checkbox & filtering by :checked selector
    $('#checkbox:checked').length  // Integer >0
    $('#checkbox:checked').size()  // .size() can be used instead of .length

    // Fourth method - Getting DOM object reference
    $('#checkbox').get(0).checked  // Boolean true
    $('#checkbox')[0].checked      // Boolean true (same as above)