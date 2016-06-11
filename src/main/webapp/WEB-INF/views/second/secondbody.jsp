<div class="alert alert-danger" role="alert" style="margin-top:300px;">
    <div class="container">
        <div style="text-align: center;">
            <H6> Client list </H6>
            <table id="jsonmap"></table>
            <a href="${pageContext.servletContext.contextPath}/page1">Back</a> <br>
        </div>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        jQuery("#jsonmap").jqGrid({
            url: 'getSomeJson',
            datatype: "json",
            colNames: ['Inv No', 'Date', 'Client', 'Amount', 'Tax', 'Total', 'Notes'],
            colModel: [
                {name: 'id', index: 'id', width: 55},
                {name: 'invdate', index: 'invdate', width: 90, jsonmap: "invdate"},
                {name: 'name', index: 'name asc, invdate', width: 100},
                {name: 'amount', index: 'amount', width: 80, align: "right"},
                {name: 'tax', index: 'tax', width: 80, align: "right"},
                {name: 'total', index: 'total', width: 80, align: "right"},
                {name: 'note', index: 'note', width: 150, sortable: false}
            ],
            rowNum: 10,
            rowList: [10, 20, 30],
            pager: '#pjmap',
            sortname: 'id',
            viewrecords: true,
            sortorder: "desc",
            jsonReader: {
                repeatitems: false,
                id: "0"
            },
            caption: "JSON Mapping",
            height: '100%'
        });
        jQuery("#jsonmap").jqGrid('navGrid', '#pjmap', {edit: false, add: false, del: false});
    });
</script>