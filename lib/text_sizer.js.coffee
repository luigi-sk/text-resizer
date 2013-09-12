class window.TextSizer
  @default_options = {
    sizes: [
      {max:19,min:10,className:"size_0"},
      {max:99999,min:20,className:"size_max"},
      {max:9,min:0,className:"size_min"},
    ]
  }

  constructor: (elements, options=null)->
    if options==null
      options = TextSizer.default_options
    @options = options
    @sizes = options['sizes']
    @elements = elements

  assignClass: ->
    @elements.each((i, el)=>
      el=$(el)
      text_size = el.text().length
      max = @sizes[@sizes.length]
      for size in @sizes
        if size.max >= text_size && size.min <= text_size
          max = size
      data_size = el.attr('data-size')
      if !$.isEmptyObject(data_size)
        el.removeClass(data_size)
      el.attr('data-size', max.className)
      el.addClass((max.className))
    )
