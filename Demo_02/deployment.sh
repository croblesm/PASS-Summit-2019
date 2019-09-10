# Wait for the SQL Server to start
sleep 20s

# Run SQL script using SQLCMD
echo ""
echo "Creating TARS database ..."
sqlcmd -S localhost -U SA -P "tars_db_123" -d master -i /db_scripts/tars.sql
echo ""
echo "Creating sp_WhoIsActive ..."
sqlcmd -S localhost -U SA -P "tars_db_123" -d master -i /repos/sp_whoisactive/who_is_active.sql
echo ""
echo "Script finished ..."