describe "controllers", ->

  beforeEach(module "app.view1.controllers")

  describe "MyCtrl1", ->

    it "should make scope testable", inject ($rootScope, $controller) ->
      scope = $rootScope.$new()
      ctrl = $controller "MyCtrl1",
        $scope: scope,
      expect(scope.onePlusOne).toEqual(2)