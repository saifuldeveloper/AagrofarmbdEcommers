<?php

namespace App\Helpers;

use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use Image;

class ImageHelper
{
    public static function handleUploadedImage($file, $path, $delete = null)
    {
        if ($file) {
            if ($delete) {

                if (file_exists(base_path('../') . $path . '/' . $delete)) {
                    unlink(base_path('../') . $path . '/' . $delete);
                }
            }
            $name = Str::random(4) . $file->getClientOriginalName();
            $file->move($path, $name);
            return $name;
        }
    }


    public static function uploadSummernoteImage($file, $path)
    {
        if ($file) {
            $name = Str::random(4) . $file->getClientOriginalName();
            $file->move($path, $name);
            return $name;
        }
    }



    public static function ItemhandleUploadedImage($file, $path, $delete = null)
    {
        if ($file) {
            if ($delete) {
                if (file_exists(base_path('../') . $path . '/' . $delete)) {
                    unlink(base_path('../') . $path . '/' . $delete);
                }
            }

            $thum = Str::random(8) . '.' . $file->getClientOriginalExtension();
            $image = \Image::make($file)->resize(230, 230);

            $image->save(base_path('../') . $path . '/' . $thum);

            $photo = time() . $file->getClientOriginalName();
            $file->move($path, $photo);
            return [$photo, $thum];
        }
    }

    public static function handleUpdatedUploadedImage($file, $path, $data, $delete_path, $field)
    {
        $name = time() . $file->getClientOriginalName();

        $file->move(base_path('..') . $path, $name);
        if ($data[$field] != null) {
            if (file_exists(base_path('../') . $delete_path . $data[$field])) {
                unlink(base_path('../') . $delete_path . $data[$field]);
            }
        }
        return $name;
    }


    public static function handleGeneralSettingsUpdatedUploadedImage($file, $path, $data, $delete_path, $field)
    {

         if ($data[$field] != null) {
            $filPath = public_path($delete_path . $data[$field]);
            if (File::exists($filPath)) {
                File::delete($filPath);
            }
        }

        $name = time() . $file->getClientOriginalName();
        $file->move(public_path($path), $name);

        return $name;
    }


    public static function ItemhandleUpdatedUploadedImage($file, $path, $data, $delete_path, $field)
    {
        $photo = time() . $file->getClientOriginalName();
        $thum = Str::random(8) . '.' . $file->getClientOriginalExtension();

        $image = \Image::make($file)->resize(230, 230);

        $image->save(base_path('..') . $path . '/' . $thum);

        $file->move(base_path('..') . $path, $photo);

        if ($data['thumbnail'] != null) {
            if (file_exists(base_path('../') . $delete_path . $data['thumbnail'])) {
                unlink(base_path('../') . $delete_path . $data['thumbnail']);
            }
        }
        if ($data[$field] != null) {
            if (file_exists(base_path('../') . $delete_path . $data[$field])) {
                unlink(base_path('../') . $delete_path . $data[$field]);
            }
        }
        return [$photo, $thum];
    }


    public static function handleDeletedImage($data, $field, $delete_path)
    {


        if ($data[$field] != null) {
            // dd($data[$field]);
            // if (file_exists(base_path('../') . $delete_path . $data[$field])) {
            //     unlink(base_path('../') . $delete_path . $data[$field]);
            // }

            $filePath = public_path($delete_path) . $data[$field];
            if (File::exists($filePath)) {
                File::delete($filePath);
            }

            // $directory = public_path('assets/images/productImages/');
            // $existingFilename = $item->thumbnail;

            // ImageHelper::deleteFile($directory . $existingFilename);
        }
    }

    // Function to save a file
    public static function saveFile($uploadedFile, $directory)
    {
        $newFilename = time() . $uploadedFile->getClientOriginalName();
        $uploadedFile->move($directory, $newFilename);
        return $newFilename;
    }

    // Function to delete a file
    public static function deleteFile($filePath)
    {
        if (File::exists($filePath)) {
            File::delete($filePath);
        }
    }
}
