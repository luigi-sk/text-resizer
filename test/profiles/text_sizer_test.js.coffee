
$(->
  test("max_size",->
    text_sizer = new TextSizer($(".test_el"))
    text_sizer.assignClass()
    equal($(".test_1").attr('data-size'), 'size_max', "test size_max")
    equal($(".test_1").hasClass('size_max'), true, "test size_max")

    equal($(".test_2").attr('data-size'), 'size_0', "test size_0")
    equal($(".test_2").hasClass('size_0'), true, "test size_0")

    equal($(".test_3").attr('data-size'), 'size_min', "test size_min")
    equal($(".test_3").hasClass('size_min'), true, "test size_min")

    equal($(".test_3").attr('data-size'), 'size_min', "test size_min")
    equal($(".test_3").hasClass('size_min'), true, "test size_min")

    new_el = $(".test_3").clone()
    new_el.addClass("test_4").removeClass('test_3')
    new_el.text($(".test_2").text())
    $(".test_3").after(new_el)
    text_sizer = new TextSizer($(".test_el"))
    text_sizer.assignClass()

    equal($(".test_4").attr('data-size'), 'size_0', "test size_0 after clone")
    equal($(".test_4").hasClass('size_0'), true, "test size_0 after clone")

  )
)