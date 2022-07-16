# vala_lib_template
Project template for building an introspected Vala / GObject library with meson

# Building

On Linux (Ubuntu 20.04 tested)

```
  meson --prefix=/usr builddir
  cd builddir
  sudo meson install
```


On Windows / MSYS2 (not yet tested but probably will work . . . . )

```
  meson builddir
  cd builddir
  meson install
```

Then you can run the test.py script to test.
