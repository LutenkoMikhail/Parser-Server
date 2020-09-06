<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ServerCreateUpdateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'provider' => 'required|min:3|max:255',
            'brand' => 'required|min:5|max:255',
            'location' => 'required|min:5|max:255',
            'cpu' => 'required|min:5|max:255',
            'drive' => 'required|min:5|max:255',
            'price' => 'required|numeric|min:1',
            'selectsource' => 'required',
        ];
    }
}
