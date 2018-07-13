import nimclipboard/libclipboard

var cb = clipboard_new(nil)

when defined(windows):
  let saved = cb.clipboard_text()
  cb.clipboard_clear(LCB_CLIPBOARD)
  let val = "nimclipboard rocks"
  assert cb.clipboard_set_text(val) == true
  assert cb.clipboard_text() == val
  if saved.len() != 0:
    assert cb.clipboard_set_text(saved) == true

cb.clipboard_free()
