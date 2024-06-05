<?php

namespace App\Http\Controllers\Back;

use App\Http\Controllers\Controller;
use Carbon\Carbon;
use ZanySoft\Zip\Zip;


class BackupController extends Controller
{
    /**
     * Constructor Method.
     *
     * Setting Authentication
     */
    public function __construct()
    {
        $this->middleware('auth:admin');
        $this->middleware('adminlocalize');
    }


    public function systemBackup()
{
    $dir = public_path();
    $zip_file = Carbon::now()->format('Y-m-d_H-i-s') . '-backup.zip';

    // Get real path for our folder
    $rootPath = realpath($dir);

    // Create a new Zip instance
    $zip = new Zip();
    $zip->create($zip_file)->add($rootPath, true);
    $zip->close();

    // Set headers to initiate a file download
    header('Content-Description: File Transfer');
    header('Content-Type: application/zip');
    header('Content-Disposition: attachment; filename=' . basename($zip_file));
    header('Content-Transfer-Encoding: binary');
    header('Expires: 0');
    header('Cache-Control: must-revalidate');
    header('Pragma: public');
    header('Content-Length: ' . filesize($zip_file));
    ob_clean();
    flush();
    readfile($zip_file);
    unlink($zip_file);
}


    public function databaseBackup()
    {
        $mysqlHostName = env('DB_HOST');
        $mysqlUserName = env('DB_USERNAME');
        $mysqlPassword = env('DB_PASSWORD');
        $DbName = env('DB_DATABASE');
        $backup_name = "database.sql";

        try {
            $connect = new \PDO(
                "mysql:host=$mysqlHostName;dbname=$DbName;charset=utf8",
                $mysqlUserName,
                $mysqlPassword,
                array(\PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES 'utf8'")
            );

            $connect->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);

            // Get all table names from the database
            $get_all_table_query = "SHOW TABLES";
            $statement = $connect->prepare($get_all_table_query);
            $statement->execute();
            $result = $statement->fetchAll(\PDO::FETCH_COLUMN);

            $output = '';

            foreach ($result as $table) {
                // Get the create table statement
                $show_table_query = "SHOW CREATE TABLE " . $table;
                $statement = $connect->prepare($show_table_query);
                $statement->execute();
                $show_table_result = $statement->fetch(\PDO::FETCH_ASSOC);
                $output .= "\n\n" . $show_table_result["Create Table"] . ";\n\n";

                // Get the data from the table
                $select_query = "SELECT * FROM " . $table;
                $statement = $connect->prepare($select_query);
                $statement->execute();
                $rows = $statement->fetchAll(\PDO::FETCH_ASSOC);

                foreach ($rows as $row) {
                    $table_column_array = array_keys($row);
                    $table_value_array = array_map([$connect, 'quote'], array_values($row));
                    $output .= "\nINSERT INTO $table (" . implode(", ", $table_column_array) . ") VALUES (" . implode(", ", $table_value_array) . ");\n";
                }
            }

            // Save the output to a file and force download
            $file_name = 'database_backup_on_' . date('Y-m-d') . '.sql';
            $file_handle = fopen($file_name, 'w+');
            fwrite($file_handle, $output);
            fclose($file_handle);

            header('Content-Description: File Transfer');
            header('Content-Type: application/octet-stream');
            header('Content-Disposition: attachment; filename=' . basename($file_name));
            header('Content-Transfer-Encoding: binary');
            header('Expires: 0');
            header('Cache-Control: must-revalidate');
            header('Pragma: public');
            header('Content-Length: ' . filesize($file_name));
            ob_clean();
            flush();
            readfile($file_name);
            unlink($file_name);
        } catch (\PDOException $e) {
            echo "Error: " . $e->getMessage();
        }
    }
}
