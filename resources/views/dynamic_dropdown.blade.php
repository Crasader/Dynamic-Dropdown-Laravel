<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Dynamic Dropdown</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="row mt-5">
			<div class="col-lg-6 mr-auto">
				<form>
					<select class="form-control dynamic" id="country" name="country" data-dependent="state">
						<option>Select Country</option>
						@foreach($country as $countries)
						<option value="{{$countries->Country}}">{{$countries->Country}}</option>
						@endforeach
					</select><br>
					<select class="form-control dynamic" id="state" name="state" data-dependent="city">
						<option>Select State</option>
					</select><br>
					<select class="form-control" id="city">
						<option>Select City</option>
					</select><br>
					{{csrf_field()}}
				</form>
			</div>
		</div>
	</div>
	<script>
		$(document).ready(function(){
			$("#country").change(function(){
				if($(this).val() != ''){
					var select = $(this).attr('id');
					var value = $(this).val();
					var _token = $('input[name="_token"]').val();
					$.ajax({
						url:"{{route('dynamicdropdown.fetch')}}",
						method:"POST",
						data:{select:select,value:value,_token:_token},
						success:function(result){
						$("#state").html(result);
						}
					});
				}
			});
		});

		$(document).ready(function(){
			$("#state").change(function(){
				// alert($(this).val());
				if($(this).val() != ''){
					var select = $(this).attr('id');
					var value = $(this).val();
					var _token = $('input[name="_token"]').val();
					$.ajax({
						url:"{{ route('fetchcity') }}",
						method:"POST",
						data:{select:select,value:value,_token:_token},
						success:function(result){
						$("#city").html(result);
						}
					});
				}
			});
		});
	</script>
</body>
</html>