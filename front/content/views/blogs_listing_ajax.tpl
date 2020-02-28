<%if $blogs_list|count gt 0%>
  <%if $page_type eq 'blog_detail'%>
    <%foreach from=$blogs_list key=k item=v%>
      <%if $k le 20%>
      <div class="popular-blog-sec">
        <div class="popular-blog-img">
          <i><img src="<%$v['image']%>" alt=""></i>
        </div>
        <div class="popular-blog-txt-sec">
          <a href="<%$this->config->item('site_url')%><%$this->general->seo_url($v['title'], 'blog')%>-blucollr-updates-<%$v['blogs_id']%>.html" id="<%$v['blogs_id']%>"><%$v['title']%></a>
          <p><i class="mdi mdi-calendar-range"></i> <%$v['date_arr']['month']%> <%$v['date_arr']['date']%>, <%$v['date_arr']['year']%></p>
        </div>
      </div>
      <%/if%>
    <%/foreach%>
  <%else%>
    <%foreach from=$blogs_list key=k item=v%>
      <li>
         <div class="blog-row">
            <div class="lft-date-sec">
                <p><%$v['date_arr']['month']%> <em><%$v['date_arr']['date']%></em></p>  
            </div>
            <div class="blog-data-sec">
                <div class="blog-lft-img-sec">
                  <i><img src="<%$v['image']%>"  alt=""></i>
                </div>
                <div class="blog-rgt-txt-sec">
                  <a href="<%$this->config->item('site_url')%><%$this->general->seo_url($v['title'], 'blog')%>-blucollr-updates-<%$v['blogs_id']%>.html" class="blog-link" id="<%$v['blogs_id']%>"><%$v['title']%></a>
                  <p><%$this->general->limitText($v['description'], 55)|nl2br%>....</p>
                  <a href="<%$this->config->item('site_url')%><%$this->general->seo_url($v['title'], 'blog')%>-blucollr-updates-<%$v['blogs_id']%>.html" class="cmn-btn">Read More</a>
                </div>
            </div>
         </div> 
      </li>
    <%/foreach%>
  <%/if%>
    
<%else%>
   <div class="no-rec-found">No updates found.</div>
<%/if%>

<%javascript%>
var count = '<%$this->session->userdata('count')%>'
var per_page = '<%$this->session->userdata('per_page')%>'
var curr_page = '<%$this->session->userdata('curr_page')%>'
<%/javascript%>