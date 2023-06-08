import 'package:get/get.dart';
import 'package:speech_to_text/speech_to_text.dart';

class HomeController extends GetxController{
  // late HomeRepository _homeRepository;
  // HomeController(this._homeRepository);
  RxBool isListen = false.obs;
  RxString speechText = 'Veronica xin chào bạn!'.obs;
  SpeechToText speechToText = SpeechToText();
  @override
  void onInit() async {
    super.onInit();
  }

  Future<void> listen() async {
    if(!isListen.value){
      bool available = await speechToText.initialize(
        onStatus: (val){

        },
        onError: (val){

        }
      );
      if(available){
        isListen.value = true;
        speechToText.listen(
          onResult: (val){
            speechText.value = val.recognizedWords;
          }
        );
      }
    }
    else{
      isListen.value = false;
      speechToText.stop();
      speechText.value = '';

    }
  }


}
