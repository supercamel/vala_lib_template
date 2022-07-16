###############################################################################
## Project Options
###############################################################################

project('BasicGobj', 'vala', 'c')
namespace = 'BasicGObj'
version = '1.0'
description = 'a basic gobject that does nothing'

dependencies = [
  dependency('glib-2.0'),
  dependency('gobject-2.0')
  ]

sources = files(
  'basicgobj.vala'
  )


###############################################################################
## probably don't need to edit below this line
###############################################################################
gnome = import('gnome')
pkg = import('pkgconfig')

add_global_arguments(['-fPIC'], language: 'c')

pkg_mod = import('pkgconfig')
pkg_mod.generate(libraries : namespace,
  version: version,
  name: namespace,
  filebase: namespace,
  description: description
  )


header = namespace + '.h'
vapi = namespace + '-' + version + '.vapi'
girfile = namespace + '-' + version + '.gir'
typelib = namespace + '-' + version + '.typelib'

lib = shared_library(namespace, sources,
  vala_header: header,
  vala_vapi: vapi,
  vala_gir: girfile,
  dependencies: dependencies,
  install: true,
  install_dir: [true, true, true, true])

pkg.generate(lib)



g_ir_compiler = find_program('g-ir-compiler')
system = build_machine.system()

so = 'lib' + namespace + '.'
if system == 'windows'
  so += 'dll'
else
  so += 'so'
endif

custom_target('typelib', 
  command: [ g_ir_compiler, '--shared-library', meson.current_build_dir() / so, '--output', '@OUTPUT@', meson.current_build_dir() / girfile],
  output: typelib,
  depends: lib,
  install: true,
  install_dir: get_option('libdir') / 'girepository-1.0')


