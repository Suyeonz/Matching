<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>

<!DOCTYPE html> 
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
   
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"/>  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script> 



<script type="text/javascript">
  $(function() {
    $('#datetimepicker1').datetimepicker({
      language: 'pt-BR'
    });
  });
</script>

  <!-- 자동 -(하이픈) 생성 -->
<script>
function inputPhoneNumber(obj) {

    var number = obj.value.replace(/[^0-9]/g, "");
    var phone = "";

    if(number.length < 4) {
        return number;
    } else if(number.length < 7) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3);
    } else if(number.length < 11) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 3);
        phone += "-";
        phone += number.substr(6);
    } else {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 4);
        phone += "-";
        phone += number.substr(7);
    }
    obj.value = phone;
}
</script>

<script type="text/javascript">
    function inputTimeColon(time) {



        // replace 함수를 사용하여 콜론( : )을 공백으로 치환한다.
        var replaceTime = time.value.replace(/\:/g, "");



        // 텍스트박스의 입력값이 4~5글자 사이가 되는 경우에만 실행한다.
        if(replaceTime.length >= 4 && replaceTime.length < 5) {

            var hours = replaceTime.substring(0, 2);      // 선언한 변수 hours에 시간값을 담는다.
            var minute = replaceTime.substring(2, 4);    // 선언한 변수 minute에 분을 담는다.



            // isFinite함수를 사용하여 문자가 선언되었는지 확인한다.
            if(isFinite(hours + minute) == false) {
                alert("문자는 입력하실 수 없습니다.");
                time.value = "00:00";
                return false;
            }



            // 두 변수의 시간과 분을 합쳐 입력한 시간이 24시가 넘는지를 체크한다.
            if(hours + minute > 2400) {
                alert("시간은 24시를 넘길 수 없습니다.");
                time.value = "24:00";
                return false;
            }



            // 입력한 분의 값이 60분을 넘는지 체크한다.
            if(minute > 60) {
                alert("분은 60분을 넘길 수 없습니다.");
                time.value = hours + ":00";
                return false;
            }

            time.value = hours + ":" + minute;
        }
    }
</script>

  <title>Upload page</title>

  <!-- Custom fonts for this theme -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link href="css/freelancer.min.css" rel="stylesheet">
  <link href= "css/bootstrap-datetimepicker.min.css" rel="stylesheet">

</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg bg-secondary text-uppercase fixed-top" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Matching</a>
      <button class="navbar-toggler navbar-toggler-right text-uppercase font-weight-bold bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#contact">강좌 생성</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

	<!-- Masthead -->
  <header class="masthead bg-primary text-white text-center">
    <div class="container d-flex align-items-center flex-column">

      <!-- Masthead Avatar Image -->
      <img class="masthead-avatar mb-5" src="img/smileDarkgray.svg" alt="">

      <!-- Masthead Heading -->
      <h1 class="masthead-heading text-uppercase mb-0">강좌 등록</h1>

    </div>
  </header>
    
<!-- insert.do -->
<form method="post" action="insert.do">

  <!-- Upload Section -->
  <section class="page-section" id="contact">
    <div class="container">

      <!-- Upload Section Heading -->
      <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">정보를 입력해주세요</h2>

      <!-- Upload Section Form -->
      <div class="row">
        <div class="col-lg-8 mx-auto">
          <!-- To configure the contact form email address, go to mail/contact_me.php and update the email address in the PHP file on line 19. -->
          <form name="sentMessage" id="contactForm" novalidate="novalidate">
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>과목명</label>
                <input class="form-control" id="subjectName" name="subjectName" type="text" placeholder="과목명" required="required" data-validation-required-message="과목명을 입력해주세요.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>이름</label>
                <input class="form-control" id="name" name="name" type="text" placeholder="이름" required="required" data-validation-required-message="이름을 입력해주세요.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
             <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>핸드폰 번호</label>
                <input class="form-control" id="t_phone" name="t_phone" type="tel" placeholder="핸드폰 번호" required="required" data-validation-required-message="핸드폰 번호를 입력해주세요." onKeyup="inputPhoneNumber(this);" maxlength="13">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
              <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>이메일 주소</label>
                <input class="form-control" id="t_email" name="t_email" type="email" placeholder="이메일 주소" required="required" data-validation-required-message="이메일 주소를 입력해주세요.">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>시작일</label>
                <input class="form-control" id="startTime" name="startTime" placeholder="시작일" required="required" data-validation-required-message="시작일을 입력해주세요.">
                <script>
			  $( "#startTime" ).datepicker({
					dateFormat: "yy-mm-dd",
					minDate: 0
			    });
			</script>
   				<input type="text" id="startTime" name="startTime" class="form-control" onKeyup="inputTimeColon(this);" placeholder="시간(24시제)" maxlength="5"/>
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
                        <div class="well">
  <div id="datetimepicker1" class="input-append date">
    <input data-format="dd/MM/yyyy hh:mm:ss" type="text"></input>
    <span class="add-on">
      <i data-time-icon="icon-time" data-date-icon="icon-calendar">
      </i>
    </span>
  </div>
</div>
           
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>종료일</label>
                <input class="form-control" id="endTime" name="endTime" placeholder="종료일" required="required" data-validation-required-message="종료일을 입력해주세요.">
                <script>
			  $( "#endTime" ).datepicker({
					dateFormat: "yy-mm-dd",
					minDate: 0
			    });
			</script>
                <p class="help-block text-danger"></p>
              </div>
            </div>

            <!-- subjectImage 이미지! (클릭하기 전) -->
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
               <!--  <input class="form-control" id="subjectImage" name="subjectImage" placeholder="이미지"> -->
                <div class="col-md-6 col-lg-4">
          <div class="portfolio-item mx-auto" data-toggle="modal" data-target="#portfolioModal1">
            <div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
              <div class="portfolio-item-caption-content text-center text-white">
                <i class="fas fa-plus fa-3x"></i>
              </div>
            </div>
            <img class="img-fluid" src="img/smileDarkgray.svg" alt="">
          </div>
        </div>
              </div>
            </div>
            
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>강의 내용</label>
                <textarea class="form-control" id="content" name="content" rows="5" placeholder="강의 내용" required="required" data-validation-required-message="강의 내용을 입력해주세요."></textarea>
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>₩</label>
                <input class="form-control" id="cost" name="cost" type="text" placeholder="수강료" required="required" data-validation-required-message="수강료를 입력해주세요." onKeyup="this.value=this.value.replace(/[^0-9]/g,'');">
                <p class="help-block text-danger"></p>
              </div>
            </div>
            
            <br>
            <div id="success"></div>
            <div class="form-group">
              <button type="submit" class="btn btn-primary btn-xl" id="sendMessageButton">확인</button>
            </div>
          </form>
        </div>
      </div>

    </div>
  </section>
</form>

  <!-- Copyright Section -->
  <section class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright &copy; Your Website 2020</small>
    </div>
  </section>

  <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
  <div class="scroll-to-top d-lg-none position-fixed ">
    <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
      <i class="fa fa-chevron-up"></i>
    </a>
  </div>

  <!-- Portfolio Modal 1 // upload image (클릭했을 때) -->
  <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-labelledby="portfolioModal1Label" aria-hidden="true">
    <div class="modal-dialog modal-xl" role="document">
      <div class="modal-content">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">
            <i class="fas fa-times"></i>
          </span>
        </button> 
			
        <div class="modal-body text-center">
          <div class="container">
            <div class="row justify-content-center">
              <div class="col-lg-8">
                <!-- Portfolio Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">이미지 첨부</h2>
                <!-- Icon Divider -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                </div>
                
                <!-- Portfolio Modal - Image -->
                <img class="img-fluid rounded mb-5" src="img/smileDarkgray.svg" alt="">
                
                <!-- Portfolio Modal - Text -->
                <p class="mb-5">이미지를 첨부해주세요. (.jpg만 가능)</p>
                       
                <!-- image test -->
                <form action="image.do" method="post" enctype="multipart/form-data">  
					파일 선택하기: <input type="file" name="file"/>  
					<input type="submit" value="Upload File"/>  
			   </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div> 


  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="js/jqBootstrapValidation.js"></script>
  <script src="js/contact_me.js"></script>
  <script src="js/bootstrap-datetimepicker.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/freelancer.min.js"></script>

</body>

</html>
