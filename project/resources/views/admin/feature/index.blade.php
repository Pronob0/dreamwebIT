@extends('layouts.admin')

@section('title')
    @lang('Features')
@endsection

@section('breadcrumb')
    <section class="section">
        <div class="section-header">
            <h1>@lang('Features')</h1>
        </div>
    </section>
@endsection

@section('content')
    <div class="row">
        
        <div class="col-lg-12">
            <div class="card mb-4">
                <div class="card-header d-flex justify-content-end">
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#add">
                        <i class="fas fa-plus"></i> @lang('Add New')
                    </button>

                </div>
                <div class="table-responsive p-3">
                    <table class="table table-striped">
                        <tr>
                            <th>@lang('ID')</th>
                            <th>@lang('Title')</th>
                            <th>@lang('Photo')</th>
                            <th>@lang('Status')</th>
                            <th class="text-right">@lang('Action')</th>
                        </tr>
                        @forelse ($features as $item)
                            <tr>
                                <td>{{ $loop->iteration }}</td>
                                <td data-label="@lang('name')">
                                    {{ $item->title }}
                                </td>
                                <td data-label="@lang('Icon')">
                                    <img src="{{ getPhoto($item->photo) }}" alt="icon"
                                        class="img-fluid" style="width: 50px">
                                </td>

                                <td data-label="@lang('Status')">
                                    @if ($item->status == 1)
                                        <span class="badge badge-success">@lang('Active')</span>
                                    @else
                                        <span class="badge badge-danger">@lang('Inactive')</span>
                                    @endif
                                </td>
                                
                                <td data-label="@lang('Action')" class="text-right">
                                    <a href="javascript:void()" class="btn btn-primary approve btn-sm edit mb-1"
                                        data-route="{{ route('admin.features.update', $item->id) }}"
                                        data-item="{{ $item }}" data-toggle="tooltip" data-path="{{adminpath()}}" title="@lang('Edit')"><i
                                            class="fas fa-edit"></i></a>
                                    <a href="javascript:void(0)" class="btn btn-danger btn-sm remove mb-1"
                                        data-id="{{ $item->id }}" data-toggle="tooltip" title="@lang('Remove')"><i
                                            class="fas fa-trash"></i></a>
                                </td>
                            </tr>
                        @empty

                            <tr>
                                <td class="text-center" colspan="100%">@lang('No Data Found')</td>
                            </tr>
                        @endforelse
                    </table>
                </div>
            </div>
        </div>
    </div>

    <div class="modal fade" id="add" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form action="{{ route('admin.features.store') }}" method="POST" enctype="multipart/form-data">
                @csrf
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">@lang('Add new Features')</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>@lang('Feature Photo')</label>
                            <div class="form-group d-flex justify-content-center">
                                <div id="image-preview" class="image-preview image-preview_alt" style="">
                                    <label for="image-upload" id="image-label">@lang('Choose File')</label>
                                    <input type="file" name="photo" id="image-upload" />
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>@lang('Name')</label>
                            <input class="form-control" type="text" name="title">
                        </div>

                        <div class="form-group">
                            <label>@lang('Message')</label>
                              <textarea class="form-control" name="description" rows="5"></textarea>
                        </div>

                        {{-- status  --}}
                        <div class="form-group">
                            <label>@lang('Status')</label>
                            <select class="form-control" name="status">
                                <option value="1">@lang('Active')</option>
                                <option value="0">@lang('Inactive')</option>
                            </select>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-dark" data-dismiss="modal">@lang('Close')</button>
                        <button type="submit" class="btn btn-primary">@lang('Submit')</button>
                    </div>
                </div>
            </form>
        </div>
    </div>



    <div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <form action="" method="POST" enctype="multipart/form-data">
                @csrf
                @method('PUT')
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">@lang('Edit Features')</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                     <div class="form-group">
                        <label>@lang('Feature Photo')</label>
                        <div class="form-group d-flex justify-content-center">
                            <div id="image-preview1" class="image-preview image-preview_alt" style="">
                                <label for="image-upload1" id="image-label1">@lang('Choose File')</label>
                                <input type="file" name="photo" id="image-upload1" />
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label>@lang('Name')</label>
                        <input class="form-control" type="text" name="title">
                    </div>
                    
                    <div class="form-group">
                        <label>@lang('Message')</label>
                          <textarea class="form-control" name="description" rows="5"></textarea>
                    </div>

                    {{-- status  --}}
                    <div class="form-group">
                        <label>@lang('Status')</label>
                        <select class="form-control" name="status">
                            <option value="1">@lang('Active')</option>
                            <option value="0">@lang('Inactive')</option>
                        </select>
                    </div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-dark" data-dismiss="modal">@lang('Close')</button>
                        <button type="submit" class="btn btn-primary">@lang('Submit')</button>
                    </div>
                </div>
            </form>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="removeMod" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <form action="{{ route('admin.features.destroy') }}" method="POST">
                @method('DELETE')
                @csrf
                <input type="hidden" name="id">
                <div class="modal-content">
                    <div class="modal-body">
                        <h5>@lang('Are you sure to remove?')</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-dark" data-dismiss="modal">@lang('Close')</button>
                        <button type="submit" class="btn btn-danger">@lang('Confirm')</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection

@push('script')
    <script>
        'use strict';

        $.uploadPreview({
            input_field: "#image-upload",
            preview_box: "#image-preview",
            label_field: "#image-label",
            label_default: "{{ __('Choose File') }}",
            label_selected: "{{ __('Update Image') }}",
            no_label: false,
            success_callback: null
        });
        $.uploadPreview({
            input_field: "#image-upload1",
            preview_box: "#image-preview1",
            label_field: "#image-label1",
            label_default: "{{ __('Choose File') }}",
            label_selected: "{{ __('Update Image') }}",
            no_label: false,
            success_callback: null
        });

        $('#add').on('shown.bs.modal', function(e) {
            $(document).off('focusin.modal');
        });
        $('#edit').on('shown.bs.modal', function(e) {
            $(document).off('focusin.modal');
        });

        $('.edit').on('click', function() {
            var data = $(this).data('item')
            $('#edit').find('input[name=title]').val(data.title)
            $('#edit').find('textarea[name=description]').val(data.description)
            $('#edit').find('form').attr('action', $(this).data('route'))
            $('#edit').find('select[name=status]').val(data.status)
            let path = $(this).attr('data-path');
            $('#edit').find('#image-preview1').css('background-image', `url('${path}/${data.photo}')`);
            $('#edit').modal('show')
        })

        $('.remove').on('click', function() {
            $('#removeMod').find('input[name=id]').val($(this).data('id'))
            $('#removeMod').modal('show')
        })
    </script>
@endpush
