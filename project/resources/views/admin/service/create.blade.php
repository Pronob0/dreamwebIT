@extends('layouts.admin')
@section('title')
    @lang('Add New Service')
@endsection

@section('breadcrumb')
    <section class="section">
        <div class="section-header  d-flex justify-content-between">
            <h1>@lang('Add New Service')</h1>
            <a href="{{ route('admin.service.index') }}" class="btn btn-primary"><i class="fas fa-backward"></i>
                @lang('Back')</a>
        </div>
    </section>
@endsection
@section('content')
    <div class="row justify-content-center">
        <div class="col-md-12">
            <!-- Form Basic -->
            <div class="card mb-4">
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-primary">{{ __('Add New Service Form') }}</h6>
                </div>
                <div class="card-body">

                    <form action="{{ route('admin.service.store') }}" enctype="multipart/form-data" method="POST">
                        @csrf
                        <div class="row">

                            <div class="col-lg-12 col-md-12 col-sm-12 text-center">
                                <label for="">Feature Photo</label>
                                <div class="form-group d-flex justify-content-center">
                                    <div id="image-preview" class="image-preview image-preview_alt"
                                        style="background-image:url({{ getPhoto('') }});">
                                        <label for="image-upload" id="image-label">@lang('Choose File')</label>
                                        <input type="file" name="photo" id="image-upload" />
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="form-group">
                            <label>{{ __('Category') }}</label>
                            <select class="form-control  mb-3" name="category_id">
                                @foreach ($categories as $item)
                                <option value="{{$item->id}}">{{ $item->name }}</option>
                                @endforeach
                               
                                
                            </select>
                        </div>


                        <div class="form-group">
                            <label for="title">{{ __('Service Title') }}</label>
                            <input type="text" class="form-control" name="title" id="title" required
                                placeholder="{{ __('Service Title') }}" value="{{ old('title') }}">
                        </div>
                        
                            <div class="form-group">
                            <label for="sort_text">{{ __('Sort Text') }}</label>
                            <textarea id="area1" class="form-control" name="sort_text" placeholder="{{ __('Sort Text') }}"
                                required>{{ old('sort_text') }}</textarea>
                        </div>

                       
                        <div class="form-group">
                            <label for="description">{{ __('Description') }}</label>
                            <textarea id="area1" class="form-control summernote" name="description" placeholder="{{ __('Description') }}"
                                required>{{ old('description') }}</textarea>
                        </div>

                        

                        <div class="form-group">
                            <label>{{ __('Feature') }}</label>
                            <select class="form-control  mb-3" name="is_feature">
                                <option value="1">{{ __('Yes') }}</option>
                                <option value="0">{{ __('No') }}</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>{{ __('Status') }}</label>
                            <select class="form-control  mb-3" name="status" required>
                                <option value="1">{{ __('Active') }}</option>
                                <option value="0">{{ __('Inactive') }}</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>@lang('Attribute ')</label>
                            <div class="d-flex">
                            <input id="title" name="attribute[]" type="text" class="form-control" placeholder="Type Here" >
                            <p id="list-add" class="btn btn-primary mx-2"><i class="fas fa-plus-circle "></i></p>

                            </div>
                        </div>
                        <div class="extra" id="experience">
                            

                        </div>

                        <div class="form-group">
                            <label for="meta_tag">{{ __('Meta Tags') }}</label>
                            <input type="text" class="form-control" name="meta_tags[]" id="meta_tag" placeholder="{{ __('Meta Tags') }}" value="{{old('Meta Tags')}}">
                        </div> 
                        <button type="submit" class="btn btn-primary">{{ __('Submit') }}</button>
                    </form>
                </div>
            </div>
            <!-- Form Sizing -->
            <!-- Horizontal Form -->
        </div>
    </div>
    <!--Row-->
@endsection
@push('script')
    <script>
        'use strict';
        $.uploadPreview({
            input_field: "#image-upload", // Default: .image-upload
            preview_box: "#image-preview", // Default: .image-preview
            label_field: "#image-label", // Default: .image-label
            label_default: "{{ __('Choose File') }}", // Default: Choose File
            label_selected: "{{ __('Update Image') }}", // Default: Change File
            no_label: false, // Default: false
            success_callback: null // Default: null
        });
        
        $(document).ready(function() {
            
       
            $('#meta_tag').tagify();
    
            var max_fields = 10;
            var wrapper = $("#experience");
            var add_button = $("#list-add");

            var x = 1;
            $(add_button).click(function(e) {
                e.preventDefault();
                if (x < max_fields) {
                    x++;
                    $(wrapper).append(
                        '<div class="d-flex"><input id="title" name="attribute[]" type="text" class="form-control" placeholder="Type Here" required ><p  class="remove_field btn btn-secondary  mx-2"><i class="fas fa-minus-circle text-danger"></i></p></div>'
                    );
                }
            });

            $(wrapper).on("click", ".remove_field", function(e) {
                e.preventDefault();
                $(this).parent('div').remove();
                x--;
            });
        });
    </script>
@endpush