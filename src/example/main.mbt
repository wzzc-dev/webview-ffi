fn main {
  // let w: Int64 = 0
  // let webview = @lib.webview_create(0, w)
  // let title = "Hello World!".to_array()
  // title.push('\u{0000}')
  // // let title_1 = title.to_array().map(fn (c) { c.to_int().to_byte()})
  // // title_1.append([b'0'])
  // // let title_1 = Bytes::from_array(title_1)
  // // let title_1 = title.to_array().map(fn (c) { c.to_int().to_byte()})  |> Bytes::from_array
  // // let title_1 = String::to_bytes("Hello World!")
  // let title_1 = title.map(fn (c) { c.to_int().to_byte()})  |> Bytes::from_array
  // let _ = @lib.webview_set_title(webview, title_1);
  // let html = String::to_bytes("<h1>Hello World!</h1>")
  // let _ = @lib.webview_set_html(webview, html);
  // let _ = @lib.webview_set_size(webview, 800, 600, 0);
  // let _ = @lib.webview_run(webview);
  // let _ = @lib.webview_destroy(webview);
  let webview = @webview.Webview::new()
  webview.set_debug(1)
  webview.set_title("Hello World!")
  webview.set_html("<h1>Hello World!</h1>")
  webview.set_size(800, 600, 0)
  webview.run()
}
