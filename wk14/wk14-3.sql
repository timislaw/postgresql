SELECT pfirstname, plastname,
(SELECT COUNT(*) FROM listitems WHERE listitems.lid = lists.lid) AS count
FROM people JOIN lists USING (pid)
WHERE (SELECT COUNT(*) FROM listitems WHERE listitems.lid = lists.lid) > 1
ORDER BY count DESC;