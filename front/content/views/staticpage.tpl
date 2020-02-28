<div class="stc-page">
    <div class="static-header">
        <div class="container">
          <div class="row">
            <div class="col-lg-12 col-sm-12 col-xs-12">
              <div class="static-header-part">
                <h2><%$page_title_arr[0]%> <%$page_title_arr[1]%></h2>
              </div>
            </div>
          </div>
        </div>
    </div>
    <div class="static-cmn-data">
        <div class="container">
            <section class="about-section">
                <%if $display_lang eq 'en'%>
                        <%include file="static/`$page_code`.tpl"%>
                    <%else%>
                        <%$page_content%>
                    <%/if%>
            </section>
            <%if $page_code eq 'investor_relation' && $attachment neq ''%>
            <a href="<%$this->config->item('upload_url')%>static_pages/<%$attachment%>" title="<%$attachment%>" download> Download Document <i class="fas fa-cloud-download-alt"></i></a>
            <%/if%>
        </div>
    </div>
</div>