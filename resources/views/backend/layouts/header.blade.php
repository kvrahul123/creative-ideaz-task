@php
$notifications=\App\Models\Notifications::where('status','read')->orderBy('id','desc')->get();

foreach($notifications as $notification){
        $order=\App\Models\Order::where('id',$notification->order_id)->first();
        $user_order=\App\Models\Order::first();
        if(!empty($order)){
            $user=\App\Models\User::where('id',$order->customer_id)->first();
            $user_name=$user->name;
            $user_img=(!empty($user->user_img) ? $user->user_img : "backend/assets/images/avatars/lavenjal-user.png");
        }else{
            $user_name=(!empty($user->name) ? $user->name : "");
            if(!empty($user_order)){
              $user=\App\Models\User::where('id',$user_order->customer_id)->first();
             }
            else{
              $user="";
            }
            $user_name=(!empty($user)?$user->name:"");
            $user_img=(!empty($user->user_img) ? $user->user_img : "backend/assets/images/avatars/lavenjal-user.png");
        }
        $notification->user_name=$user_name;
        $notification->user_img=$user_img;
}

@endphp



<!--start top header-->
<header class="top-header">
        <nav class="navbar navbar-expand">
          <div class="mobile-toggle-icon d-xl-none">
              <i class="bi bi-list"></i>
            </div>

            <div class="search-toggle-icon d-xl-none ms-auto">
              <i class="bi bi-search"></i>
            </div>

            <div class="top-navbar-right ms-auto">
              <ul class="navbar-nav align-items-center">

              <!-- <li class="nav-item dropdown dropdown-large">
                <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown">
                  <div class="projects">
                    <i class="bi bi-grid-3x3-gap-fill"></i>
                  </div>
                </a>
                <div class="dropdown-menu dropdown-menu-end">
                   <div class="row row-cols-3 gx-2">
                      <div class="col">
                        <a href="#">
                         <div class="apps p-2 radius-10 text-center">
                            <div class="apps-icon-box mb-1 text-white bg-primary bg-gradient">
                              <i class="bi bi-cart-plus-fill"></i>
                            </div>
                            <p class="mb-0 apps-name">Orders</p>
                         </div>
                        </a>
                      </div>
                      <div class="col">
                        <a href="javascript:;">
                        <div class="apps p-2 radius-10 text-center">
                           <div class="apps-icon-box mb-1 text-white bg-danger bg-gradient">
                             <i class="bi bi-people-fill"></i>
                           </div>
                           <p class="mb-0 apps-name">Users</p>
                        </div>
                      </a>
                     </div>
                     <div class="col">
                      <a href="ecommerce-products-grid.html">
                      <div class="apps p-2 radius-10 text-center">
                         <div class="apps-icon-box mb-1 text-white bg-success bg-gradient">
                          <i class="bi bi-bank2"></i>
                         </div>
                         <p class="mb-0 apps-name">Products</p>
                      </div>
                      </a>
                    </div>
                    <div class="col">
                      <a href="component-media-object.html">
                      <div class="apps p-2 radius-10 text-center">
                         <div class="apps-icon-box mb-1 text-white bg-orange bg-gradient">
                          <i class="bi bi-collection-play-fill"></i>
                         </div>
                         <p class="mb-0 apps-name">Media</p>
                      </div>
                      </a>
                    </div>
                    <div class="col">
                      <a href="pages-user-profile.html">
                      <div class="apps p-2 radius-10 text-center">
                         <div class="apps-icon-box mb-1 text-white bg-purple bg-gradient">
                          <i class="bi bi-person-circle"></i>
                         </div>
                         <p class="mb-0 apps-name">Account</p>
                       </div>
                      </a>
                    </div>
                    <div class="col">
                      <a href="javascript:;">
                      <div class="apps p-2 radius-10 text-center">
                         <div class="apps-icon-box mb-1 text-dark bg-info bg-gradient">
                          <i class="bi bi-file-earmark-text-fill"></i>
                         </div>
                         <p class="mb-0 apps-name">Docs</p>
                      </div>
                      </a>
                    </div>
                    <div class="col">
                      <a href="#">
                      <div class="apps p-2 radius-10 text-center">
                         <div class="apps-icon-box mb-1 text-white bg-pink bg-gradient">
                          <i class="bi bi-credit-card-fill"></i>
                         </div>
                         <p class="mb-0 apps-name">Payment</p>
                      </div>
                      </a>
                    </div>
                    <div class="col">
                      <a href="javascript:;">
                      <div class="apps p-2 radius-10 text-center">
                         <div class="apps-icon-box mb-1 text-white bg-bronze bg-gradient">
                          <i class="bi bi-calendar-check-fill"></i>
                         </div>
                         <p class="mb-0 apps-name">Events</p>
                      </div>
                    </a>
                    </div>
                    <div class="col">
                      <a href="javascript:;">
                      <div class="apps p-2 radius-10 text-center">
                         <div class="apps-icon-box mb-1 text-dark bg-warning bg-gradient">
                          <i class="bi bi-book-half"></i>
                         </div>
                         <p class="mb-0 apps-name">Story</p>
                        </div>
                      </a>
                    </div>
                   </div>end row
                </div>
              </li>-->
               <li class="nav-item dropdown dropdown-large">
                <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown">
                  <div class="messages">
                    <span class="notify-badge">{{count(\App\Models\Notifications::where('status','read')->get())}}</span>
                    <i class="bi bi-messenger"></i>
                  </div>
                </a>
                <div class="dropdown-menu dropdown-menu-end p-0" style="width:20em;">
                  <div class="p-2 border-bottom m-2">
                      <h5 class="h5 mb-0">Messages</h5>
                  </div>
                 <div class="header-message-list p-2">
                    <div class="dropdown-item bg-light radius-10 mb-1">
             
                    </div>
                    @foreach($notifications as $notification)
                    <a class="dropdown-item" href="#">
                      <div class="d-flex align-items-center">
                         <img src="{{asset($notification->user_img)}}" alt="" class="rounded-circle" width="52" height="52">
                         <div class="ms-3 flex-grow-1">
                           <h6 class="mb-0 dropdown-msg-user">{{$notification->user_name}} <span class="msg-time float-end text-secondary">{{ Helper::notification_timing($notification->created_at)}}</span></h6>
                           <small class="mb-0 dropdown-msg-text text-secondary d-flex align-items-center">{{$notification->message}}</small>
                         </div>
                      </div>
                    </a>
                    @endforeach
             
                </div>
               <!-- <div class="p-2">-->
               <!--   <div><hr class="dropdown-divider"></div>-->
               <!--     <a class="dropdown-item" href="#">-->
               <!--       <div class="text-center">View All Messages</div>-->
               <!--     </a>-->
               <!-- </div>-->
               <!--</div>-->
              </li> 
              <li class="nav-item dropdown dropdown-large">
                <a class="nav-link dropdown-toggle dropdown-toggle-nocaret" href="#" data-bs-toggle="dropdown">
                  <div class="user-setting d-flex align-items-center gap-1">
                    <img src="{{asset('backend/assets/images/favicon-32x32.png')}}" class="user-img" alt="">
                    <div class="user-name d-none d-sm-block">{{auth()->user()->name}}</div>
                  </div>
                </a>
                <ul class="dropdown-menu dropdown-menu-end">
                  <li>
                     <a class="dropdown-item" href="#">
                       <div class="d-flex align-items-center">
                          <img src="{{asset('backend/assets/images/favicon-32x32.png')}}" alt="" class="rounded-circle" width="40" height="40">
                          <div class="ms-3">
                            <h6 class="mb-0 dropdown-user-name">Lavenjal</h6>
                            <small class="mb-0 dropdown-user-designation text-secondary">Super Admin</small>
                          </div>
                       </div>
                     </a>
                   </li>
                   <li><hr class="dropdown-divider"></li>

                    <!-- <li>
                      <a class="dropdown-item" href="#">
                         <div class="d-flex align-items-center">
                           <div class="setting-icon"><i class="bi bi-gear-fill"></i></div>
                           <div class="setting-text ms-3"><span>Setting</span></div>
                         </div>
                       </a>
                    </li>


                    <li>
                      <a class="dropdown-item" href="#">
                         <div class="d-flex align-items-center">
                           <div class="setting-icon"><i class="bi bi-cloud-arrow-down-fill"></i></div>
                           <div class="setting-text ms-3"><span>Downloads</span></div>
                         </div>
                       </a>
                    </li> -->
                    <!-- <li><hr class="dropdown-divider"></li> -->
                    <li>
                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                         <div class="d-flex align-items-center">
                           <div class="setting-icon"><i class="bi bi-lock-fill"></i></div>
                           <div class="setting-text ms-3">
                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                    {{ __('Logout') }}

                          </div>
                         </div>
                       </a>
                    </li>
                </ul>
              </li>
              </ul>
              </div>
        </nav>
      </header>
       <!--end top header-->

       <!--start sidebar -->
<aside class="sidebar-wrapper" data-simplebar="true">
  <div class="sidebar-header">
    <div>
    <img src="{{asset('backend/assets/images/logo_white.svg')}}" class="logo-icon" alt="logo icon">
    </div>

    <div class="toggle-icon ms-auto d-none"><i class="bi bi-chevron-double-left"></i>
    </div>
  </div>
  <!--navigation-->
  <ul class="metismenu" id="menu">
    <li>
      <a href="{{url('/dashboard')}}">
        <div class="parent-icon"><i class="bi bi-house-door"></i>
        </div>
        <div class="menu-title">Dashboard</div>
      </a>
    </li>
    <li>
    <a href="{{url('/products')}}">
        <div class="parent-icon"><i class="bi bi-grid"></i>
        </div>
        <div class="menu-title">Product List</div>
      </a>
    </li>
    <li>
    <a href="{{route('banner.index')}}">
        <div class="parent-icon"><i class="bi bi-grid"></i>
        </div>
        <div class="menu-title">Banner List</div>
    </a>
    </li>
    <li>
    <a href="{{url('/customer')}}">
        <div class="parent-icon"><i class="fadeIn animated bx bx-list-ol"></i>
        </div>
        <div class="menu-title">Customer List</div>
      </a>
    </li>
    <li>
    <a href="{{url('/retailer')}}">
        <div class="parent-icon"><i class="fadeIn animated bx bx-store"></i>
        </div>
        <div class="menu-title">Retailer List</div>
      </a>
    </li>
    <li>
    <a href="{{url('/delivery_agent')}}">
        <div class="parent-icon"><i class="fadeIn animated bx bx-male"></i>
        </div>
        <div class="menu-title">Delivery Boy List</div>
      </a>
    </li>
    <li>
    <a href="{{url('/distributor')}}">
        <div class="parent-icon"><i class="lni lni-layers"></i>
        </div>
        <div class="menu-title">Distributor List</div>
      </a>
    </li>
     <li>

          <a href="javascript:;" class="has-arrow">
                <div class="parent-icon"><i class="bi bi-list"></i>
                </div>
                <div class="menu-title">Orders</div>
              </a>
              <ul class="bg-light border-0">

                <li> <a href="{{url('/customer-order-list')}}"><i class="bi bi-arrow-right-short"></i>Customer  Orders</a>
                </li>
                <li> <a href="{{url('/retailer-order-list')}}"><i class="bi bi-arrow-right-short"></i>Retailer Orders</a>
                </li>
                <li> <a href="{{url('/deliveryboy-order-list')}}"><i class="bi bi-arrow-right-short"></i>Delivery Boy Orders</a>
                </li>
                <!--<li> <a href="{{url('/distributor-order-list')}}"><i class="bi bi-arrow-right-short"></i>Distributor  Orders</a>-->
                </li>

              </ul>
</li>

    <!--<li>-->
    <!--  <a href="javascript:;">-->
    <!--    <div class="parent-icon"><i class="lni lni-certificate"></i>-->
    <!--    </div>-->
    <!--    <div class="menu-title">Report</div>-->
    <!--  </a>-->
    <!--</li>-->
    <!--<li>-->
    <!--  <a href="user-panel">-->
    <!--    <div class="parent-icon"><i class="lni lni-user"></i>-->
    <!--    </div>-->
    <!--    <div class="menu-title">User Panel</div>-->
    <!--  </a>-->
    <!--</li>-->

    <li>
    <!--<li>-->
    <!--<a href="{{url('/product-settings')}}">-->
    <!--    <div class="parent-icon"><i class="bi bi-file-earmark-code"></i>-->
    <!--    </div>-->
    <!--    <div class="menu-title">Product Settings</div>-->
    <!--  </a>-->
    <!--</li>-->
    <!--<li>-->
    <!--<a href="{{url('/coupon')}}">-->
    <!--    <div class="parent-icon"><i class="fadeIn animated bx bx-receipt"></i>-->
    <!--    </div>-->
    <!--    <div class="menu-title">Coupon</div>-->
    <!--  </a>-->
    <!--</li>-->
    <!--<li>-->
    <!--<a href="{{url('/wallet')}}">-->
    <!--    <div class="parent-icon"><i class="fadeIn animated bx bx-blanket"></i>-->
    <!--    </div>-->
    <!--    <div class="menu-title">Wallet</div>-->
    <!--  </a>-->
    <!--</li>-->
    <!--<li>-->
      <a href="{{url('/sales-representative')}}">
        <div class="parent-icon"><i class="bi bi-person"></i>
        </div>
        <div class="menu-title">Sales Representative</div>
      </a>
    </li>
    <li>
    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
        <div class="parent-icon"><i class="bi bi-lock-fill"></i>
        </div>
        <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
        <div class="menu-title">
        Logout</div>
      </a>
    </li>


  </ul>
  <!--end navigation-->
</aside>
<!--end sidebar -->
