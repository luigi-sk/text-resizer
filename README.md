text-resizer
============

javascript library to add class name to element by the length of text that contains element.

Usage
=====
Include javascript file to the website and run it on selected elements.
```
<script type="text/javascript" src="../lib/text_sizer.js"></script>
<script type="text/javascript">
    var text_sizer = new TextSizer($(".test_el"),{
      sizes: [
        {
          max: 19,
          min: 10,
          className: "size_0"
        }, {
          max: 99999,
          min: 20,
          className: "size_max"
        }, {
          max: 9,
          min: 0,
          className: "size_min"
        }
      ]
    });
    text_sizer.assignClass();
</script>
```

