include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME volt_event
    VERSION "0.0.1"
    URL "https://github.com/SirHall/volt_event/archive/v0.0.1.tar.gz"
    SHA1 7c4bc3a1f7ba2a23627e2b906ebadd43d947ba86
)

include(GNUInstallDirs)

# glm use custom bundled GNUInstallDirs module so we have to
# set correct value explicitly
hunter_cmake_args(
    volt_event 
    CMAKE_ARGS CMAKE_INSTALL_LIBDIR=${CMAKE_INSTALL_LIBDIR}
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(volt_event)
hunter_download(
    PACKAGE_NAME volt_event
    PACKAGE_UNRELOCATABLE_TEXT_FILES "${CMAKE_INSTALL_LIBDIR}/pkgconfig/volt_event.pc"
)