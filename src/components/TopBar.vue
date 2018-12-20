<template>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="col-md-3 align-left">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">
                        <img alt="Brand" src="../assets/logo.jpeg">
                    </a>
                </div>
            </div>
            <div class="col-md-6 align-center">
                <div class="form-group row">
                    <div class="col col-md-1">
                        <button type="button" class="btn btn-primary btn-left">S-1</button>
                    </div>
                    <div class="col col-md-10">
                        <input class="form-control" type="week" value="2018-W49" id="week-picker">
                    </div>
                    <div class="col col-md-1">
                        <button type="button" class="btn btn-primary btn-right">S+1</button>
                    </div>
                </div>
            </div>
            <div class="col-md-3 align-right">
                <span class="promotion">M1MIAA</span>
            </div>
        </div>
    </nav>
</template>

<script>

</script>

<style>
.navbar {
    height:50px;
    border-bottom:.5px solid grey;
}
.navbar-brand img {
    height: 50px;
    float: left;
    padding-top: 12px;
}
.navbar .btn {
    margin-top:15px;
    width:55px;
}
.navbar .btn-left {
    border-radius: 0.25rem 0 0 0.25rem;
}
.navbar .btn-right {
    border-radius: 0 0.25rem 0.25rem 0;
}
.navbar .col {
    padding-left: 0;
    padding-right: 0;
}
.navbar .form-control {
    border-radius: 0;
}
.align-left {
    text-align: left;
}
.align-center {
    text-align: center;
}
.align-right {
    text-align: right;
}
.promotion {
    margin: auto;
}

#week-picker {
    margin: auto;
    margin-top:15px;
}

</style>