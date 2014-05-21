var app = angular.module("app", ["xeditable"]);

app.run(function(editableOptions) {
  editableOptions.theme = 'bs3'; // bootstrap3 theme. Can be also 'bs2', 'default'
});

function HOMEController($scope,$http){

    $scope.getAllKids = function() {
        $http.get('/kids').success(function(data){
            $scope.kids = data;
        });
    }

    $scope.updateKid = function (kidId, location, confirmation) {
        $http.put('/kids/update', { _id: kidId, current_location: location, confirmed: confirmation } ).success(function(data){
            $scope.getAllKids();
        });
    };

    $scope.getAllKids;
    setInterval($scope.getAllKids,3000);

};

function MSTController($scope,$http){

    $scope.getAllKids = function() {
	    $http.get('/kids/roster/mst').success(function(data){
	    	$scope.kids = data;
	    });
	}

    $scope.updateKid = function (kidId, location, confirmation) {
        $http.put('/kids/update', { _id: kidId, current_location: location, confirmed: confirmation } ).success(function(data){
    	    $scope.getAllKids();
    	});
    };

    $scope.addComment = function (kidId, location, confirmation, comments) {
        $http.put('/kids/update', { _id: kidId, current_location: location, confirmed: confirmation,  comments: comments } ).success(function(data){
            console.log(comments);
        });
    };

    $scope.getAllKids();
};

function SCGController($scope,$http){

    $scope.getAllKids = function() {
        $http.get('/kids/roster/scg').success(function(data){
            $scope.kids = data;
        });
    }

    $scope.updateKid = function (kidId, location, confirmation) {
        $http.put('/kids/update', { _id: kidId, current_location: location, confirmed: confirmation } ).success(function(data){
            $scope.getAllKids();
        });
    };

    $scope.addComment = function (kidId, location, confirmation, comments) {
        $http.put('/kids/update', { _id: kidId, current_location: location, confirmed: confirmation,  comments: comments } ).success(function(data){
            console.log(comments);
        });
    };

    $scope.getAllKids();
};

function SOQEController($scope,$http){

    $scope.getAllKids = function() {
        $http.get('/kids/roster/soqe').success(function(data){
            $scope.kids = data;
        });
    }

    $scope.updateKid = function (kidId, location, confirmation) {
        $http.put('/kids/update', { _id: kidId, current_location: location, confirmed: confirmation } ).success(function(data){
            $scope.getAllKids();
        });
    };

    $scope.addComment = function (kidId, location, confirmation, comments) {
        $http.put('/kids/update', { _id: kidId, current_location: location, confirmed: confirmation,  comments: comments } ).success(function(data){
            console.log(comments);
        });
    };

    $scope.getAllKids();
};
