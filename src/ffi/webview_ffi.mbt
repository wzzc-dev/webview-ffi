// typedef void *webview_t;
pub extern type Webview_t

// extern webview_t webview_create(int debug, void *window);
pub extern "C" fn webview_create(
  debug : Int,
  window : Int64,
) -> Webview_t = "webview_create"

// extern void webview_destroy(webview_t w);
pub extern "C" fn webview_destroy(
  webview : Webview_t
) -> Int = "webview_destroy"

// extern void webview_run(webview_t w);
pub extern "C" fn webview_run(
  webview : Webview_t
) -> Int = "webview_run"

// extern void webview_terminate(webview_t w);
pub extern "C" fn webview_terminate(
  webview : Webview_t
) -> Int = "webview_terminate"

// extern void webview_dispatch(webview_t w, void (*fn)(webview_t w, void *arg), void *arg);
pub extern "C" fn webview_dispatch(
  webview : Webview_t,
  callback : Ref[Byte], //TODO void (*fn)(webview_t w, void *arg)
  data : Ref[Byte]
) -> Int = "webview_dispatch"

// extern void webview_set_title(webview_t w, const char *title);
pub extern "C" fn webview_set_title(
  webview : Webview_t,
  title : Bytes
) -> Int = "webview_set_title"

// extern void webview_set_size(webview_t w, int width, int height, int hints);
pub extern "C" fn webview_set_size(
  webview : Webview_t,
  width : Int,
  height : Int,
  hint : Int
) -> Int = "webview_set_size"

// extern void webview_set_html(webview_t w, const char *html);
pub extern "C" fn webview_set_html(
  webview : Webview_t,
  html : Bytes,
) -> Int = "webview_set_html"

