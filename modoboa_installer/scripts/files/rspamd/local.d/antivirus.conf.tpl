clamav {
  action = reject;
  message = '${SCANNER}: virus found: "${VIRUS}"';
  scan_mime_parts = true;
  scan_text_mime = true;
  scan_image_mime = true;
  retransmits = 2;
  timeout = 30;
  symbol = "CLAM_VIRUS";
  symbol_fail = "CLAM_VIRUS_FAIL";
  type = "clamav";
  servers = "/run/clamav/clamd.ctl"
  patterns {
    # symbol_name = "pattern";
    JUST_EICAR = "Test.EICAR";
  }
}
