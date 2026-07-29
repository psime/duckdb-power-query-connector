// Value.NativeQuery on DuckDB.Contents. Reads the seeded `smoke` table
// so the baseline matches the plain-navigation tests.
let
    src = DuckDB.Contents("__DB_PATH__", null, true, false, "single", [custom_user_agent="ci-native-query"]),
    data = Value.NativeQuery(src, "SELECT n FROM smoke ORDER BY n")
in
    data
