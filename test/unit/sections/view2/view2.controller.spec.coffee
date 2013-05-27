describe "controllers", ->

  beforeEach(module "app.view2.controllers")

  describe "MyCtrl2", ->

    it "should make scope testable", inject ($rootScope, $controller) ->
      scope = $rootScope.$new()
      ctrl = $controller "MyCtrl2",
        $scope: scope,
      expect(scope.twoPlusTwo).toEqual(4)