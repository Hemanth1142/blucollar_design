 <div class="stc-page">
    <div class="static-header">
            <div class="container">
              <div class="row">
                <div class="col-lg-12 col-sm-12 col-xs-12">
                  <div class="static-header-part">
                    <h2>FAQ's</h2>              
                  </div>
                </div>
              </div>
            </div>
      </div>
      <div class="static-cmn-data">
      <div class="container">
        <div class="faq-section">
          <div id="accordion">
           <%foreach from=$faq_data key=k item=faq%>
            <div class="card">
              <div class="card-header" id="heading_<%$k%>">
                <h5 class="mb-0">
                  <button class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapse_<%$k%>" aria-expanded="<%if $k neq 0 %>false<%else%>true<%/if%>" aria-controls="collapse_<%$k%>">
                   <i class="fas"></i> <%$faq['question']%>
                  </button>
                </h5>
              </div>
              <div id="collapse_<%$k%>" class="collapse" aria-labelledby="heading_<%$k%>" data-parent="#accordion">
                <div class="card-body"><%$faq['answer']%>
                </div>
              </div>
            </div>
            <%/foreach%>
          </div>
        </div>
      </div>
      </div>
    </div>