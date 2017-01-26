/**
 * Created by ahmed on 1/26/2017.
 */

// a function to filter tasks table on key-up event
function filterTable() {

    var $rows = $('#tasksTable tbody tr');
    $('#search').keyup(function() {
        var val = $.trim($(this).val()).replace(/ +/g, ' ').toLowerCase();

        $rows.show().filter(function() {
            var text = $(this).text().replace(/\s+/g, ' ').toLowerCase();
            return !~text.indexOf(val);
        }).hide();
    });
}
