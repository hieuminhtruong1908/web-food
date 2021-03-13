@extends('master')
@section('content')
<!-- Start slider  -->
  <section id="mu-slider">
    <div class="container">
    <div class="mu-slider-are"> 

      <!-- Top slider -->
      <div class="mu-top-slider"   style="margin-top: 50px">
        <!-- Top slider single slide -->
        @foreach($slide as $sl)
        <div class="mu-top-slider-single">
          <img style="border-radius: 10px" src="upload/slide/{{ $sl->image }}" alt="img" width="2200px" height="400px">
          <!-- Top slider content -->
          <div class="mu-top-slider-content">
            <div class="title">               
              <h1 class="mt2 mb1 center" style="color: orange">Ăn gì hôm nay? Nấu ngay món ngon</h1>
            </div>
              <form method="get" action="{{ route('search') }}">
                <div class="search-container">
                  <span>
                    <i class="fas fa-search"></i>
                  </span>
                  <input type="text" name="key" value="" class="form-control" placeholder="Ví dụ: kim chi, cupcake, soup, sinh tố..">
                </div>
              </form>
            <p></p>           
            {{-- <a href="#mu-reservation" class="mu-readmore-btn mu-reservation-btn">BOOK A TABLE</a> --}}
          </div>
          <!-- / Top slider content -->
        </div>
        @endforeach
      </div>
    </div>
    </div>
  </section>
  <!-- End slider  -->

  <!-- Start About us -->
  @include('about')
  <!-- End About us -->

  <!-- Start Counter Section -->
  @include('couter')
  <!-- End Counter Section --> 
   <!--product area start-->
    <div class="product_area deals_product mb-50">
      <section id="mu-gallery">
        <div class="container">
            <div class="row">
                <div class="col-12 title-sanpham">
                    <div class="mu-title">
                       <h2>Công thức bởi MonNgon365</h2>
                    </div>
                </div>
            </div> 
            <div class="row">
                <div class="product_carousel product_column4 owl-carousel">
                  @foreach($recipes as $re)
                  <div class="col-lg-3" style="height: 320px">
                        <article class="single_product">
                             <figure>
                               <div class="product_name" style="height: 40px">
                                   <h4><a href="{{ route('recipes', $re->id) }}"><strong>{{$re->name}}</strong></a></h4>
                               </div>

                                <div class="product_thumb">
                                    <a class="primary_img" href="{{ route('recipes', $re->id) }}">
                       <img style="border-radius: 10px;height: 164.06px; width:262.5px" src="upload/dish/{{$re->dish->image}}" alt=""></a>
                                    <div>
                                        <span><i class="far fa-clock" aria-hidden="true"></i> 35p</span>
                                        <span class="label_sale"><strong> </strong>
                                          
                                          <i style="color: green" class="fas fa-bolt" aria-hidden="true"></i>@if($re->level == 1) {{ "Dễ" }}
                                          @elseif($re->level == 2) {{ "Trung bình" }}
                                          @else {{ "Khó" }}
                                          @endif
                                          <span class="label_sale"><strong> <i style="color:#555" class="fas fa-user-friends" aria-hidden="true"></i>  </strong>{{$re->eater}}</span> 
                                    </span></div>
                                    <div>
                                                                                
                                    </div>
                                    <div class="quick_button">
                                        <a href="{{ route('recipes', $re->id) }}" title="quick view"><i style="color:green" class="fas fa-book-open" aria-hidden="true"></i><strong> Học nấu ngay </strong><i style="color:green" class="fas fa-book-open" aria-hidden="true"></i></a>
                                    </div>
                                </div>
                                <!--<div class="price_box" style="height: 100px;">-->
                                <!--    <span class="claimedRight" maxlength="20"><strong><i style="color:yellow" class="fas fa-lightbulb"></i> Mô tả: </strong>món ngon</span>-->
                                <!--</div>-->
                                <div class="price_box">
                                    <span><strong><i style="color:blue" class="fas fa-user-tie" aria-hidden="true"></i> Công thức bởi: </strong>MonNgon365</span>
                                </div>
                            </figure>
                        </article>
                  </div>

                  @endforeach
                </div>
            </div>
            <div class="row">{{ $recipes->links() }}</div>
        </div>
      </section>
    </div>
    <!--product area end-->
  {{-- @include('public') --}}
  <!-- Start Restaurant Menu -->
  @include('menu')
  <!-- End Restaurant Menu -->

<hr>
  <!-- Start Gallery -->
  @include('gallery')
  <!-- End Gallery -->
  
  <!-- Start Client Testimonial section -->
  @include('client')
  <!-- End Client Testimonial section -->
  
  <!-- Start Chef Section -->
  @include('chefs')
  <!-- End Chef Section -->

 
  <!-- Start Contact section -->
  @include('contact')
  <!-- End Contact section -->

  <!-- Start Map section -->
  @include('map')
  <!-- End Map section -->

@endsection

@section('script')
  <script type="text/javascript" src="sources/assets/js/simple-animated-counter.js"></script>
@endsection