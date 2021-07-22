@extends($activeTemplate . 'user.layouts.app')

@section('panel')
    <div class="row">
        {{-- {{$commissionlogs}} --}}
        <div class="col-lg-12">
            <div class="card b-radius--10 ">
                <div class="card-body p-0">
                    <div class="table-responsive--sm table-responsive">
                        <table class="table table--light style--two">
                            <thead>
                            <tr>
                                <th scope="col">@lang('SL')</th>
                                <th scope="col">@lang('Date')</th>
                                <th scope="col">@lang('TRX')</th>
                                <th scope="col">@lang('Amount')</th>
                                <th scope="col">@lang('Detail')</th>
                            </tr>
                            </thead>
                            <tbody>
                                @foreach ($commissionlogs as $commissionlog)
                                <tr>
                                    <td data-label="@lang('SL')">1</td>
                                    <td data-label="@lang('Date')">{{$commissionlog->created_at}}</td>
                                    <td data-label="@lang('TRX')" class="font-weight-bold">{{$commissionlog->trx}}</td>
                                    <td data-label="@lang('Amount')" class="budget">
                                        {{$commissionlog->amount}}
                                    </td>
                                    <td data-label="@lang('Detail')">{{$commissionlog->title}}</td>
                                </tr>  
                                @endforeach
                               @if (count($commissionlogs) == 0)
                               <tr>
                                <td class="text-muted text-center" colspan="100%">Empty</td>
                                </tr> 
                               @endif
                          
                            </tbody>
                        </table>
                    </div>
                </div>
                {{-- <div class="card-footer py-4">
                    {{ $transactions->appends($_GET)->links() }}
                </div> --}}
            </div>
        </div>
    </div>

@endsection


@push('breadcrumb-plugins')
    <form action="" method="GET" class="form-inline float-sm-right bg--white">
        <div class="input-group has_append">
            <input type="text" name="search" class="form-control" placeholder="@lang('Search by TRX')" value="{{ $search ?? '' }}">
            <div class="input-group-append">
                <button class="btn btn--primary" type="submit"><i class="fa fa-search"></i></button>
            </div>
        </div>
    </form>
@endpush

