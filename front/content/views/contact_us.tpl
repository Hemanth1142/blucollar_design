<div class="stc-page">
  <div class="static-header">
        <div class="container">
          <div class="row">
            <div class="col-lg-12 col-sm-12 col-xs-12">
              <div class="static-header-part">
                <h2>Contact Us</h2>              
              </div>
            </div>
          </div>
        </div>
  </div>
  <div class="static-cmn-data">
    <div class="container">
      <div class="about-section contact">
        <div class="contact-blk">
          <div class="row">
          <div class="col-lg-6 col-sm-6 col-xs-12 cntct-half-width">
            <div class="cnt-det">
            <h2>Contact Details</h2>
            <p class="add"> <%$this->config->item('COMPANY_ADDRESS')%> 
            </p>
            <%if $this->config->item('COMPANY_TOLL_FREE') neq ''%>
            <p><i class="fas fa-phone"></i>  <%$this->config->item('COMPANY_TOLL_FREE')%></p>
            <%/if%>
            <%if $this->config->item('COMPANY_EMAIL') neq ''%>
            <p><i class="fas fa-envelope"></i>  <a href="mailto:<%$this->config->item('COMPANY_EMAIL')%>"><%$this->config->item('COMPANY_EMAIL')%></a> </p>
            <%/if%>
            <p><i class="fas fa-clock"></i>  Monday - Friday: 9:00 AM to 5:00 PM</p>
            <div class="social-icn">
              <a target="_blank" href="<%$this->config->item('FACEBOOK_PAGE_URL')%>" class="icon-fb-ic"></a>
              <a target="_blank" href="<%$this->config->item('TWITTER_URL')%>" class="icon-tw-ic"></a>
              <a target="_blank" href="<%$this->config->item('INSTAGRAM_URL')%>" class="icon-insta-ic"></a>
            </div>
            <iframe scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.com/maps?hl=en&amp;q=<%$this->config->item('COMPANY_ADDRESS')%>&amp;ie=UTF8&amp;ll=37.0625,-95.677068&amp;spn=56.506174,79.013672&amp;t=m&amp;z=4&amp;output=embed&amp;key=<%$this->config->item('GOOGLE_MAP_KEY')%>" width="100%" height="300px" frameborder="0"></iframe>
          </div>
          </div>
          <div class="col-lg-6 col-sm-6 col-xs-12 cntct-half-width">
            <div class="contact-box">
              <h2>Send us a Message</h2>
              <form id="contactForm" method="post"  class="cmn-form" name="contactForm">
               <div class="form-row">
                  <div class="form-group">
                        <label>Full Name</label>
                        <input type="text" name="full_name" id="full_name" class="form-control">
                      </div>
                      <div class="form-group">
                        <label>Phone Number</label>
                        <input type="text" name="phone_number" id="phone_number" class="form-control">
                      </div>
                      <div class="form-group">
                        <label>Email Address</label>
                        <input type="text" name="email" id="email" class="form-control">
                      </div>
                      <div class="form-group">
                        <label>Message</label>
                        <textarea class="form-control" name="message" id="message"></textarea>
                      </div>
                      <div class="form-group btn-row">
                        <a id="submit_form" class="cmn-btn">Send Message</a>
                      </div>
                </div>
              </form>
            </div>
          </div>
        </div>
          
        </div>
      </div>
      </div>
    </div>
  </div>
<div id="contact_us"></div>
<%$this->js->add_js("contact_us.js")%>
<%$this->js->add_js("maskedinput/jquery.maskedinput.js")%>
