@extends('admin.layouts.app')
@section('panel')

    <div class="row">

        <div class="col-lg-12">
            <div class="card b-radius--10 ">
                <div class="card-body p-0">
                    <div class="table-responsive--md  table-responsive">
                        <table class="table table--light style--two">
                            <thead>
                            <tr>
                                <th scope="col">Level 1</th>
                                <th scope="col">Level 2</th>
                                <th scope="col">Level 3</th>
                                <th scope="col">Reward</th>
                                <th scope="col">Rank</th>
                                <th scope="col">Salary</th>
                                <th scope="col">Month</th>
                                <th scope="col">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($business as $data)
                            <tr>
                                <td>${{ $data->level_1 }}</td>
                                <td>${{ $data->level_2 }}</td>
                                <td>${{ $data->level_3 }}</td>
                                <td>${{ $data->reward }}</td>
                                <td>{{ $data->rank }}</td>
                                <td>${{ $data->salery }}</td>
                                <td>{{ $data->month }}</td>
                                <td>
                                <a href="{{route('admin.business_edit',$data->id)}}" class="icon-btn"><i class="las la-pen"></i></a>
                                <a href="{{route('admin.business_delete',$data->id)}}" class="icon-btn"><i class="las la-trash"></i></a>
                                
                                </td>
                            </tr>
                            @endforeach

                            </tbody>
                        </table><!-- table end -->
                    </div>
                </div>

            </div><!-- card end -->
        </div>


    </div>
@endsection

@push('breadcrumb-plugins')
    <a href="{{route('admin.business_create')}}" class="btn btn--primary box--shadow1 text--small"><i class="fa fa-fw fa-plus"></i>@lang('Add New')</a>
@endpush


