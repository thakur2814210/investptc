@extends($activeTemplate . 'user.layouts.app')

@section('panel')
<div class="row">
    <div class="col-lg-12">
        <div class="card b-radius--10 overflow-hidden">
            <div class="card-body p-0">
                <div class="table-responsive--sm">
                    <table class="table table--light style--two">
                        <thead>
                            <tr>
                                <th scope="col">@lang('Level')</th>
                                <th scope="col">@lang('Amount')</th>
                                {{-- <th scope="col">@lang('Total Earn')</th> --}}
                            </tr>
                        </thead>
                        <tbody class="list">
                                @forelse($ptclevels as $key => $data)
                                <tr>
                                    <td data-label="@lang('Level')">{{ __($data['level']) }}</td>
                                    <td data-label="@lang('Total Click')">{{ $data['amount'] }} {{ $general->cur_text }}
                                    {{-- <td data-label="@lang('Total Earn')">{{ __($data['amount'] + 0) }} {{ $general->cur_text }}
                                    </td> --}}
                                </tr>
                            @empty
                                <tr>
                                    <td class="text-center" colspan="100%">{{ __($empty_message) }}</td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="card-footer py-4">
                {{ $ptclevels->links('admin.partials.paginate') }}
            </div>

		</div>
	</div>
</div>
@endsection
