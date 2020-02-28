<%$this->css->add_css("libraries/owl-carousel/owl.carousel.min.css","customscrollbar.css")%>
<%$this->css->css_src()%>
<div class="stc-page innr-stc-page cmn-mrg-tp">
          <div class="static-header">
            <div class="container">
              <div class="row">
                <div class="col-lg-12 col-sm-12 col-xs-12">
                  <div class="static-header-part">
                    <h2>BluCollr Updates</h2>              
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="blog-sec">
        <div class="container">
          <div class="row">
             <div class="col-lg-12 col-sm-12 col-xs-12">
               <div class="send-msg-box blog-box">
                  <div class="row">
                    <div class="col-lg-9 col-sm-8 col-xs-12">
                      <div class="lft-blog-row"> 
                         <div class="blog-row">
                              <div class="lft-date-sec">
                                  <p><%$blog_detail[0]['date_arr']['month']%> <em><%$blog_detail[0]['date_arr']['date']%></em></p>
                              </div>
                              <div class="blog-data-sec">
                                <div class="blog-detail-data">  
                                  <h2><%$blog_detail[0]['title']%></h2>
                                  <i><img src="<%$blog_detail[0]['image']%>" alt=""></i>
                                  <p><%$blog_detail[0]['title']%></p>  
                                  <%$blog_detail[0]['description']%>
                                </div> 

                                 
                              </div>
                         </div> 
                         
                       </div>
                    </div> 
                    <div class="col-lg-3 col-sm-4 col-xs-12 pl-0">
                      <div class="blog-rgt-sec">
                          <div class="cmn-srch-bar">
                            <div class="form-group">
                               <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Search">
                               <a href="javascript:void(0)" class="srch-glass">
                                  <i class="icon-search"></i>

                               </a>
                             </div>
                          </div>
                          <div class="cntct-tab-sec">
                          <h2>Latest</h2>
                          <div class="popular-blog-rgt-part" id="blog_detail_recent_blogs">  
                                    
                                </div>
                          </div>
                          <div class="empl-dashbrd-ad-slider">
                        <div class="owl-carousel owl-theme">
                          <%if $adv_list|count gt 0%>
                          <%foreach from=$adv_list key=k item=adv%>
                          <a href="<%$adv['url']%>" target="_blank" data-id="<%$adv['advertise_master_id']%>" class="advertisement_click">
                            <div class="dashbrd-ad">
                              <i><img src="<%$adv['image']%>" alt="" id="<%$adv['advertise_master_id']%>"></i>
                            </div>
                            </a>
                          <%/foreach%>
                        <%/if%> 
                        </div>
                      </div>
                      </div>
                    </div>    
                  </div>     
                </div>
              </div>
          </div>
        </div>
<div id="blog_detail"></div>
<%$this->js->add_js("libraries/owl-carousel/owl.carousel.js","customscrollbar.min.js","blog_detail.js")%>