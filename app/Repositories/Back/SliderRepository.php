<?php

namespace App\Repositories\Back;

use App\{
    Models\Slider,
    Helpers\ImageHelper
};

class SliderRepository
{

    /**
     * Store slider.
     *
     * @param  \App\Http\Requests\ImageStoreRequest  $request
     * @return void
     */

    public function store($request)
    {
        $input = $request->all();
        $input['photo'] = ImageHelper::handleUploadedImage($request->file('photo'),'assets/images');
        $input['logo'] = ImageHelper::handleUploadedImage($request->file('logo'),'assets/images');
        Slider::create($input);
    }

    /**
     * Update slider.
     *
     * @param  \App\Http\Requests\ImageUpdateRequest  $request
     * @return void
     */

     public function update($slider, $request)
    {
        $input = $request->all();
        if ($file = $request->file('photo')) {
                $directory = public_path('assets/images');
                $uploadedFile = $file;
                $existingFilename = $slider->photo; 
                ImageHelper::deleteFile($directory . $existingFilename);
                $newFilename = ImageHelper::saveFile($uploadedFile, $directory);
                $input['photo'] = $newFilename;
        }
        if ($file = $request->file('logo')) {
            $directory = public_path('assets/images');
            $uploadedFile = $file;
            $existingFilename = $slider->logo; 
            ImageHelper::deleteFile($directory . $existingFilename);
            $newFilename = ImageHelper::saveFile($uploadedFile, $directory);
            $input['logo'] = $newFilename;
        }
        $slider->update($input);
    }

    /**
     * Delete slider.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */

    public function delete($slider)
    {
        ImageHelper::handleDeletedImage($slider,'photo','assets/images/');
        ImageHelper::handleDeletedImage($slider,'logo','assets/images/');
        $slider->delete();
    }

}
