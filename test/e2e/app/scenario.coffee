"use strict"

# http://docs.angularjs.org/guide/dev_guide.e2e-testing 
describe "my app", ->
  beforeEach ->
    browser().navigateTo "/"

  NEW_ITEM_LABEL = "test newly added item"

  switchToToDo = ->
      element(".nav a[href=\"#/todo\"]").click()
      expect(browser().location().url()).toBe "/todo"

  switchToView1 = ->
    element(".nav a[href=\"#/view1\"]").click()
    expect(browser().location().url()).toBe "/view1"

  it "should automatically redirect to /todo when location hash/fragment is empty", ->
    expect(browser().location().url()).toBe "/todo"

  describe "todo", ->

    addToDoItem = ->
      input("todoText").enter NEW_ITEM_LABEL
      element("input[type=\"submit\"]").click()
      expect(repeater("[ui-view] ul li").count()).toEqual 3
      expect(element("[ui-view] ul li:last span").text()).toEqual NEW_ITEM_LABEL
      expect(input("todoText").val()).toEqual ""

    it "should list 2 items", ->
      expect(repeater("[ui-view] ul li").count()).toEqual 2

    it "should display checked items with a line-through", ->
      expect(element("[ui-view] ul li input:checked + span").css("text-decoration")).toEqual "line-through"

    it "should sync done status with checkbox state", ->
      element("[ui-view] ul li input:not(:checked)").click()
      expect(element("[ui-view] ul li span").attr("class")).toEqual "donetrue"
      element("[ui-view] ul li input:checked").click()
      expect(element("[ui-view] ul li span").attr("class")).toEqual "donefalse"

    it "should remove checked items when the archive link is clicked", ->
      element("[ui-view] a[ng-click=\"archive()\"]").click()
      expect(repeater("[ui-view] ul li").count()).toEqual 1

    it "should add a newly submitted item to the end of the list and empty the text input", addToDoItem

    it "should still have a newly submitted item after switching views", ->
      addToDoItem
      switchToView1
      switchToToDo
      expect(repeater("[ui-view] ul li").count()).toEqual 3
      expect(element("[ui-view] ul li:last span").text()).toEqual NEW_ITEM_LABEL


  it "should navigate to /view1 when the View 1 link in nav is clicked", ->
    switchToView1

  describe "view1", ->
    beforeEach ->
      browser().navigateTo "#/view1"

    it "should render view1 when user navigates to /view1", ->
      expect(element("p:first").text()).toMatch /partial for view 1/


  describe "view2", ->
    beforeEach ->
      browser().navigateTo "#/view2"

    it "should render view2 when user navigates to /view2", ->
      expect(element("p:first").text()).toMatch /partial for view 2/
