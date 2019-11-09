@extends('layouts.app')


<div class="container">
@section('content')

<div class="card">
	<div class="card-header">
		Price Timeline of {{$name}}
		<a href="{{url('/')}}" class="btn btn-sm btn-info float-right">Go back</a>
	</div>
	<div class="card-body">
		<canvas id="priceChart" width="600" height="400"></canvas>
	</div>
</div>

@endsection
</div>

@push('css')
<link rel="stylesheet" type="text/css" href="{{URL::asset('externals/chartjs/Chart.css')}}">
@endpush

@push('js')

<script src="{{URL::asset('externals/chartjs/Chart.bundle.js')}}"></script>
<script src="{{URL::asset('externals/jquery/jquery.min.js')}}"></script>

<script>
$(function(){
	var priceCanvas = $("#priceChart");

	var date_labels = {!!$dates!!};
	var myChart = new Chart(priceCanvas, {
    type: 'line',
    data: {
      labels: date_labels,
      datasets: [{
        label: 'Price Timeline of '+{!!$name!!},
        data: {{$prices}}
      }]
    }
  });
})
</script>

@endpush
