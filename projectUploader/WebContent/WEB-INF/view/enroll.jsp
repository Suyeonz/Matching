<%@ page contentType="text/html; charset=UTF-8" pageEncoding="utf-8"%>

<!DOCTYPE html> 
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js"></script>


<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/js/tempusdominus-bootstrap-4.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/tempusdominus-bootstrap-4/5.0.1/css/tempusdominus-bootstrap-4.min.css" />
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.css"/>

</head>

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

  <title>Upload page</title>

  <!-- Custom fonts for this theme -->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Theme CSS -->
  <link href="css/freelancer.min.css" rel="stylesheet">

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
            
            <!-- 선생님 정보 -->
            <!-- <div class="control-group">
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
            </div> -->
            
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>시작일</label>
                <!-- <input class="form-control" id="startTime" name="startTime" placeholder="시작일" required="required" data-validation-required-message="시작일을 입력해주세요."> -->

    <div class="container">
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <div class="input-group date" id="datetimepicker2" data-target-input="nearest">
                    <input type="text" class="form-control datetimepicker-input" name="startTime" data-target="#datetimepicker2"/>
                    <div class="input-group-append" data-target="#datetimepicker2" data-toggle="datetimepicker">
                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker2').datetimepicker({
                    locale: 'ko'
                });
            });
        </script>
    </div>
</div>
			<p class="help-block text-danger"></p>
			 </div> 
            </div>
   				
            <div class="control-group">
              <div class="form-group floating-label-form-group controls mb-0 pb-2">
                <label>종료일</label>
                <!-- <input class="form-control" id="endTime" name="endTime" placeholder="종료일" required="required" data-validation-required-message="종료일을 입력해주세요."> -->
                
                <div class="container">
    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <div class="input-group date" id="datetimepicker3" data-target-input="nearest">
                    <input type="text" class="form-control datetimepicker-input" name="endTime" data-target="#datetimepicker3"/>
                    <div class="input-group-append" data-target="#datetimepicker3" data-toggle="datetimepicker">
                        <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            $(function () {
                $('#datetimepicker3').datetimepicker({
                    locale: 'ko'
                });
            });    
 
        </script>
    </div>
</div>
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
<!-- ------------------------------------------------------------------------------------------------------------------------------ -->

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

  <!-- Upload Modal 1 // upload image (클릭했을 때) -->
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
                <!-- Upload Modal - Title -->
                <h2 class="portfolio-modal-title text-secondary text-uppercase mb-0">이미지 첨부</h2>
                <!-- Icon Divider -->
                <div class="divider-custom">
                  <div class="divider-custom-line"></div>
                </div>
                
                <!-- Upload Modal - Image -->
                <img class="img-fluid rounded mb-5" src="img/smileDarkgray.svg" alt="">
                
                <!-- Upload Modal - Text -->
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
<!--   <script src="js/bootstrap-datetimepicker.min.js"></script> 없어도 될듯--> 

  <!-- Custom scripts for this template -->
  <script src="js/freelancer.min.js"></script>

</body>
</html>
