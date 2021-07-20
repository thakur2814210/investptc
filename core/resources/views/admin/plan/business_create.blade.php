@extends('admin.layouts.app')
@section('panel')

    <div class="row">

        <div class="col-lg-12">
            <div class="card">

@if($data == '')
                <div class="card-body">

                    <form method="post" class="form-horizontal" action="{{route('admin.business_store')}}">
                        @csrf

                        <div class="form-body">

                            <div class="form-row">

                                <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Level 1</label>
                                    <input type="text" class="form-control form-control-lg" name="level_1" required>
                                </div>


                                <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Level 2</label>
                                    <input type="text" class="form-control form-control-lg" name="level_2" required>
                                </div>

                                <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Level 3</label>
                                    <input type="text" class="form-control form-control-lg" name="level_3" required>
                                </div>

                                 <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Reward</label>
                                    <input type="text" class="form-control form-control-lg" name="reward" required>
                                </div>

                                 <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Rank</label>
                                    <input type="text" class="form-control form-control-lg" name="rank" required>
                                </div>


                                 <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Salary</label>
                                    <input type="text" class="form-control form-control-lg" name="salery" required>
                                </div>

                                 <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Month</label>
                                    <input type="text" class="form-control form-control-lg" name="month" required>
                                </div>

                            </div>

                            <div class="form-row">
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn--primary btn-block">@lang('Save')</button>
                                </div>
                            </div>
                        </div>


                    </form>
                </div>
@else
 <div class="card-body">

                    <form method="post" class="form-horizontal" action="{{route('admin.business_update',$data->id)}}">
                        @csrf

                        <div class="form-body">

                            <div class="form-row">

                                <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Level 1</label>
                                    <input type="text" value="{{ $data->level_1 }}" class="form-control form-control-lg" name="level_1" >
                                </div>


                                <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Level 2</label>
                                    <input type="text" value="{{ $data->level_2 }}"  class="form-control form-control-lg" name="level_2" >
                                </div>

                                <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Level 3</label>
                                    <input type="text" value="{{ $data->level_3 }}"  class="form-control form-control-lg" name="level_3" >
                                </div>

                                 <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Reward</label>
                                    <input type="text" value="{{ $data->reward }}"  class="form-control form-control-lg" name="reward" >
                                </div>

                                 <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Rank</label>
                                    <input type="text" value="{{ $data->rank }}"  class="form-control form-control-lg" name="rank" >
                                </div>


                                 <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Salary</label>
                                    <input type="text" value="{{ $data->salery }}"  class="form-control form-control-lg" name="salery" >
                                </div>

                                 <div class="form-group col-md-3">
                                    <label class="font-weight-bold">Month</label>
                                    <input type="text" value="{{ $data->month }}"  class="form-control form-control-lg" name="month" >
                                </div>

                            </div>

                            <div class="form-row">
                                <div class="col-md-12">
                                    <button type="submit" class="btn btn--primary btn-block">@lang('Save')</button>
                                </div>
                            </div>
                        </div>


                    </form>
                </div>
@endif
            </div>

        </div>
    </div>
@endsection


@push('breadcrumb-plugins')
    <a href="{{route('admin.business')}}"  class="btn btn--primary box--shadow1 text--small"><i class="fa fa-fw fa-eye"></i>@lang('Business Volume')</a>
@endpush

