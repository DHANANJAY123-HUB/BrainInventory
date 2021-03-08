/**
 * RegisterUser Controller

 * @param {*} $scope 
 * @param {*} ServiceLocator 
 */
var RegisterUserCtl = function ($scope, ServiceLocator) {

    //initialize scope
    initScope($scope, 'User', ServiceLocator, true);

    $scope.submit = function () {
        ServiceLocator.http.post(`auth/RegisterUser`, $scope.form, function (response) {
            $scope.form.show = true;
            //$scope.form.success = response.success;
            //$scope.form.message = response.result;

            if(response.success){
                $scope.form.success = response.success;
                $scope.form.message = response.result;
            }
            else{

                $scope.form.success = response.success;
                $scope.form.message = response.result.code;
            }


        });
    }

    $scope.display = function () {
        $scope.resetForm();
    }

    $scope.display();

}
app.controller("RegisterUserCtl", RegisterUserCtl);