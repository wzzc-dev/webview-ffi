struct Webview {
  debug: Int
  window: Int64
  mut title: String
  mut html: String
  mut width: Int
  mut height: Int
  mut hints: Int
}

pub fn Webview::new() -> Webview {
  let webview = Webview::{ debug: 0, window: 0 , title: "", html: "", width: 0, height: 0, hints: 0}
  webview
}

pub fn Webview::set_title(self: Webview, title: String) -> Unit {
  self.title = title
}

pub fn Webview::set_html(self: Webview, html: String) -> Unit {
  self.html = html
}
pub fn Webview::set_size(self: Webview, width: Int, height: Int, hints: Int) -> Unit {
  self.width = width
  self.height = height
  self.hints = hints
}

pub fn Webview::run(self: Webview) -> Unit {
  let webview = @ffi.webview_create(self.debug, self.window)
  let title = self.title.to_array()
  title.push('\u{0000}')
  let title = title.map(fn (c) { c.to_int().to_byte()})  |> Bytes::from_array
  let _ = @ffi.webview_set_title(webview, title);
  let html = self.html.to_array()
  html.push('\u{0000}')
  let html = html.map(fn (c) { c.to_int().to_byte()})  |> Bytes::from_array
  let _ = @ffi.webview_set_html(webview, html);
  let _ = @ffi.webview_set_size(webview, self.width, self.height, self.hints);
  let _ = @ffi.webview_run(webview);
  let _ = @ffi.webview_destroy(webview);
}