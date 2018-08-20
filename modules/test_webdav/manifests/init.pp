class test_webdav {
    include test_webdav::install
} ->
class test_webdav {
    include test_webdav::dir
} ->
class test_webdav {
    include test_webdav::file
} ->
class test_webdav {
    include test_webdav::webdav
} ->
class test_webdav {
    include test_webdav::service
}