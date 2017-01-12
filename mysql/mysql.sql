-- faster #shutdown: {
  set global innodb_max_dirty_pages_pct = 0;
-- #monitor actual status before #shutdown {
    mysqladmin ext -i 3 | fgrep dirty
  -- }
-- }

-- before #upgrade, #checklist: {
  /* 0: Use the slow shutdown technique before upgrading or downgrading between MySQL major releases, so
  that all data files are fully prepared in case the upgrade process updates the file format. */
  set global innodb_fast_shutdown = 0;
-- }
