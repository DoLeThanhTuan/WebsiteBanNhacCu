USE DBBANNHACCU
GO


SELECT * FROM CHUCVU

INSERT CHUCVU(TENCHUCVU,MOTA) VALUES(N'Quản trị viên',N'Người quản lý trang web')
INSERT CHUCVU(TENCHUCVU,MOTA) VALUES(N'Nhân viên bán hàng',N'Người chịu trách nhiệm bán hàng trên trang web')
INSERT CHUCVU(TENCHUCVU,MOTA) VALUES(N'Người mua',N'Khách hàng')
go
SELECT * FROM TAIKHOAN
INSERT TAIKHOAN(HOVATEN,EMAIL,MATKHAU,IDCHUCVU,TRANGTHAI) VALUES(N'Đỗ Lê Thanh Tuấn','tuanlmht1211@gmail.com','123',1,1)


select * from DANHMUC
insert into DANHMUC(TENDANHMUC,MOTA,HINHANH)
values(N'Amplifiers & Monitors',N'dành cho các thiết bị âm thanh được sử dụng để tăng cường hoặc điều chỉnh âm thanh.','AmplifiersMonitors.png')
insert into DANHMUC(TENDANHMUC,MOTA,HINHANH)
values(N'B-Stock',N'dành cho các sản phẩm nhạc cụ đã qua sử dụng hoặc trưng bày nhưng vẫn đảm bảo chất lượng và hoạt động tốt.','BStock.png')
insert into DANHMUC(TENDANHMUC,MOTA,HINHANH)
values(N'Keyboards & Pianos',N'các sản phẩm nhạc cụ bàn phím, bao gồm cả đàn Piano và đàn Keyboard.','KeyboardsPianos.png')
insert into DANHMUC(TENDANHMUC,MOTA,HINHANH)
values(N'Thiết bị DJ',N'chứa các sản phẩm nhạc cụ được sử dụng trong nghề DJ.','DJ.png')
insert into DANHMUC(TENDANHMUC,MOTA,HINHANH)
values(N'Trống & Bộ gõ',N'chứa các sản phẩm nhạc cụ liên quan đến trống và bộ gõ.','trongbogo.png')
insert into DANHMUC(TENDANHMUC,MOTA,HINHANH)
values(N'Vocals & Microphones',N'chứa các sản phẩm nhạc cụ liên quan đến âm thanh và thu âm giọng hát.','VocalMicrophones.png')
insert into DANHMUC(TENDANHMUC,MOTA,HINHANH)
values(N'Guitars and Basses',N'chứa các sản phẩm nhạc cụ liên quan đến đàn','GuitarsandBasses.png')

--danh mục 1. Amplifiers & Monitors
insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Fender 68 Custom Pro Reverb Guitar Amplifier, 230V EU',39930000,50,N'Fender68CustomProReverbGuitarAmplifier,230VEU.gif',N'68 Customs đã trở thành dòng amp cực kỳ phổ biến dành cho những nghệ sĩ guitar yêu thích chất âm Fender cổ điển và có những chỉnh sửa phù hợp với người chơi ngày nay.', 1)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Fender Acoustic SFX-II Guitar Amplifier, 230V EU',16060000,100,N'FenderAcousticSFX-IIGuitarAmplifier,230VEU.gif',N'Amp Acoustic SFX II có khả năng truyền tải âm thanh trọn vẹn và tốt nhất trong phân khúc cho guitar acoustic và vocal. Hệ thống mạnh mẽ và di động này có hai kênh được thiết kế để dùng với nhạc cụ hoặc mic, mỗi kênh có các hiệu ứng chất lượng phòng thu được nâng cấp với công nghệ Stereo Field Expansion độc quyền của chúng tôi để mang đến chất âm vượt trội hơn stereo, để âm nhạc lan tỏa khắp không gian trong phòng. Phát nhạc qua bluetooth và looper 90 giây cũng là hai yếu tố hoàn hảo để bạn chơi solo khi cần.', 1)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Supro 1696RTH Black Magick 25W Guitar Reverb Head Amplifier',38170000,12,N'Supro1696RTHBlackMagick25WGuitarReverbHeadAmplifier.gif',N'Black Magick Reverb Head sở hữu sự ngọt ngào và tiếng gầm của amp all-tube, vốn định hình chất âm của Supro. Có spring reverb analog, EQ 2-band và nút vặn âm lượng, Black Magick Reverb được thiết kế để mang đến sự linh hoạt tối đa. Hai kênh preamp độc lập có thể được kết nối với nhau bằng cách sử dụng "1 + 2" input jack để sở hữu chất âm dày dặn, trong khi tận dụng chỉ một input 2 sẽ mang đến chất âm nhanh hơn. Reverb e-spring của Black Magick Reverb hoạt động 2 kênh và hợp nhất với tín hiệu khô ngay trước điều khiển master volume. Mạch tube LFO được nâng cấp mang đến tube tremolo được điều chỉnh bias với cặp tốc độ của Black Magick nguyên bản. Có bán theo bộ.', 1)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'ZT Lunchbox Reverb Combo Amp',11110000,7,N'ZTLunchboxReverbComboAmp.gif',N'ZT Lunchbox nguyên bản đã đặt tiêu chuẩn cho hiệu suất amp mạnh mẽ trong một thiết kế thực sự nhỏ gọn. Lunchbox Reverb là sự cải tiến của chính nó - 100W công suất dành riêng cho sân khấu, âm thanh đẳng cấp thế giới và khả năng đáp ứng thực sự khiến người dùng hài lòng, tất cả chỉ với trọng lượng không đến 10 pound.', 1)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Victory RK50 Richie Kotzen Combo Guitar Amplifier',62920000,50,N'VictoryRK50RichieKotzenComboGuitarAmplifier.gif',N'Việc hợp tác với Richie Kotzen là sự nối lại tình bạn lâu năm giữa rocker nổi tiếng người Mỹ và nhà thiết kế chính của Victory Amplification, Martin Kidd. Có cực nhiều gain từ một kênh đơn lẻ và chức năng boost có thể chuyển đổi bằng chân. Tone pot giúp việc chuyển đổi dễ dàng, trong khi đó reverb và tremolo onboard giữ niềm hứng khởi khi chơi nhạc. Chúng tôi vô cùng tự hào được đồng hành cùng người nghệ sĩ tài hoa và có một không hai như vậy.', 1)

--danh mục 2. B-Stock

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Fender American Professional II Fretless Jazz Bass Electric Guitar, RW FB, 3-Tone Sunburst (B-Stock)',38390000,8,N'LesPaulCustomReissueBSock.gif',N'American Professional II Jazz Bass® Fretless trải dài từ hơn 60 năm sáng tạo, truyền cảm hứng và phát triển nhằm đáp ứng nhu cầu của người chơi hiện nay.', 2)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Ibanez Premium RG927WZCZ-NTF Exotic Premium 7-String Electric Guitar, Natural Flat (B-Stock)',22880000,7,N'IbanezPremiumRG927WZCZ.gif',N'Dòng Ibanez Premium thể hiện hiệu suất high-end và sự tin cậy chiến binh đường phố ở mức giá tầm trung. Được sản xuất từ chất liệu đã qua chọn lọc, kỹ năng của tay nghề chuyên biệt và sự lưu tâm đến từng chi tiết, cùng electronics cũng như hardware trứ danh, guitars và basses Ibanez Premium cho bạn khả năng không thể ngờ và mang đến cho bạn "Hiệu Suất Vượt Xa Mong Đợi.', 2)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'PRS SE Custom 24-08 Electric Guitar w/Bag, Vintage Sunburst (B-Stock)',19800000,4,N'PRSSECustom2408ElectricGuitarwVintageSunburst.gif',N'SE Custom 24 đem thiết kế PRS ban đầu vào dòng SE chất lượng cao nhưng với mức giá phải chăng hơn. Được các nghệ sĩ thường xuyên đi lưu diễn khắp thế giới, những nhạc sĩ tài năng và những tay guitarist đầy tham vọng sử dụng, SE Custom 24 có mặt trước bằng gỗ maple, mặt lưng bằng gỗ mahogany, cần đàn mỏng, rộng bằng gỗ maple, mặt cần bằng gỗ rosewood với inlay hình chim và ngựa nhún PRS được cấp bằng sáng chế. Âm thanh linh hoạt của nó đến từ các pickup “S” 85/15 kết hợp với điều khiển âm lượng, push/pull tone và bộ chọn 3-way blade pickup.', 2)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Fender American Original 60s Precision Bass Guitar, RW FB, Surf Green (B-Stock)',47740000,6,N'FenderAmericanOriginal60sPrecisionBassGuitarRWFBSurfGreen.gif',N'Trước thập niên 1960s, Precision Bass là cây bass electric chiến mã; từ các club ở Detroit đến các bãi biển tại Nam Cali, âm thanh của cây đàn đã đặt nền tảng cho nền âm nhạc hiện đại. American Original ‘60s Precision Bass sở hữu đầy đủ đặc tính mà P Bass đã chinh phục thế giới nhạc—đơn giản trang nhã, âm thanh, phong cách và cảm giác đàn kết hợp cùng độ nhạy đàn hiện đại.', 2)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'PRS SE Tremonti Standard Electric Guitar w/Bag, Black (B-Stock)',15840000,8,N'PRSSETremontiStandardElectricGuitarwBagBlack.gif',N'Chất âm mạnh mẽ của PRS Mark Tremonti Standard rất phù hợp để bạn chơi heavy rock và những đoạn lead bay bổng. Các pickup Tremonti "S” và cặp điều khiển âm lượng, âm sắc mang đến nhiều lựa chọn âm sắc khác nhau và không bao giờ bị mất chất aggressive đặc trưng của model này.', 2)

--danh mục 3. Keyboards & Pianos

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Novation 61SL MKIII 61-Key Keyboards Controller with Sequencer',19140000,4,N'Novation61SLMKIII61-KeyKeyboardsControllerwithSequencer.gif',N'Novation SL MKIII là thiết bị quan trọng hoạt động hoàn hảo cùng DAW giúp bạn điều khiển toàn bộ phòng thu của mình. Nhạc cụ này hỗ trợ làm việc với hardware dễ dàng, bộ sequencer polyphonic 8 track với mọi thứ được đồng bộ giúp bạn sáng tác các ca khúc mới một cách sáng tạo.', 3)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Yamaha YDP-103 Digital Home Piano, Rosewood',19140000,4,N'YamahaYDP-103DigitalHomePiano,Rosewood.gif',N'YDP-103 cũng đã cải tiến hệ thống synthesis AWM (Advanced Wave Memory) truyền thống để mang đến âm thanh chân thực. AWM là công nghệ sử dụng bản ghi âm kỹ thuật số tiếng đàn piano thật, giúp bạn thưởng thức âm thanh của những cây grand piano dù bạn ở bất cứ nơi đâu. 88 phím GHS (Graded Hammer Standard) cho cảm nhận nặng hơn ở các phím low-end và nhẹ hơn ở các phím high-end tương tự như búa đàn trong những cây piano acoustic. GHS phù hợp cho người chơi piano đầy tham vọng vì luyện tập với bàn phím GHS sẽ giúp xây dựng các kỹ năng đi ngón phù hợp để chơi trên những cây piano acoustic. Ngoài ra, finish matte trên các phím màu đen giúp phím không bị trơn trượt khi chơi nhiều giờ liền', 3)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Arturia KeyLab mkII 61 Keyboard Controller, Black',14850000,9,N'ArturiaKeyLabmkII61KeyboardController,Black.gif',N'KeyLab MkII kết hợp kiểm soát toàn diện của KeyLab nguyên bản cổ điển của Arturia với quy trình làm việc hợp lý và các tính năng thông minh của KeyLab Essential, đồng thời thêm các tính năng mới thú vị và nâng tầm chất lượng, biểu hiện và sự hoành tráng. KeyLab MkII là controller bắt buộc đối với người làm nhạc chuyên nghiệp.', 3)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Nord Stage 3 88 Stage Keyboard',120120000,3,N'NordStage388StageKeyboard.gif',N'Nord Stage 3 là thế hệ thứ năm của series Stage rất thành công của hãng. Tiếp tục theo đuổi nguyện vọng của chính Nord là tạo ra nhạc cụ tối ưu cho nghệ sĩ biểu diễn. Dòng nhạc cụ chủ chốt mới và ưu tú này có ba model: Compact, HP 76 và HP88. Cả ba đều sở hữu công nghệ đoạt được giải thưởng mới nhất của Nord gồm Nord Lead A1 Synth Engine có sample playback, Nord C2D organ đình đám, Piano Section được nâng cấp và Hiệu ứng thực hành rộng rãi - tất cả đều có trong keyboard hiệu suất đặc biệt. Hai màn hình hiển thị OLED cực rõ hỗ trợ rõ nét trên sân khấu, chuyển tiếp liền mạch khi thay đổi chương trình / âm thanh, chức năng chia tách mở rộng với tính năng chuyển đổi tuỳ chọn và bổ sung Song List Mode mới giúp Nord Stage 3 trở nên nhạy hơn, linh hoạt hơn tạo điều kiện cho nghệ sỹ diễn live.', 3)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Novation Launchkey 49 MK3 Keyboard Controller',5390000,12,N'NovationLaunchkey49MK3KeyboardController.gif',N'Launchkey là MIDI keyboard controller tích hợp đầy đủ phục vụ việc tạo track bằng Ableton Live, cho bạn mọi thứ bạn cần để sáng tạo và chơi nhạc. Dành cho nhà sáng tạo với mọi khả năng, Launchkey cho bạn nhiều công cụ đầy cảm hứng để mở rộng phạm vi âm nhạc của mình. Chế độ Scale và Chord và arpeggiator mạnh mẽ thúc đẩy sự sáng tạo và mở ra những ý tưởng mới. Chế độ Custom và output MIDI full-size biến Launchkey thành vật trang trí mang năng lượng mạnh mẽ trong mọi thiết lập.', 3)

--danh mục 4. Thiết bị DJ

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Native Instruments Maschine Mikro MK2 Groove Production, Black',10340000,15,N'NativeInstrumentsMaschineMikroMK2GrooveProduction,Black.gif',N'Maschine Mikro là một studio sản xuất âm thanh nhỏ gọn và là bước khởi đầu hoàn hảo trong lĩnh vực tạo beat.', 4)


insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Behringer Pro Mixer DJX900USB 4-channel DJ Mixer',7260000,21,N'BehringerProMixerDJX900USB4-channelDJMixer.gif',N'PRO MIXER DJX900USB DJ Mixer kết hợp khả năng vận hành nhạy bén với các hiệu ứng kỹ thuật số tích hợp để tạo ra âm thanh trong suốt, rõ nét, làm bừng cháy cả sàn nhảy! Bộ mixer 5 kênh ít tiếng ồn có crossfader quang học “Contact-Free” 45mm vô cực để có tuổi thọ vượt trội; các hiệu ứng kỹ thuật số 24-bit hiện đại với điều khiển thông số nâng cao; tích hợp kết nối USB để giao tiếp trực tiếp với PC hoặc Mac - cùng nhiều thiết bị thực sự chuyên nghiệp khác.', 4)


insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Novation Circuit Rhythm',9570000,19,N'NovationCircuitRhythm.gif',N'Circuit Rhythm là một bộ sampler đa năng để tạo và biểu diễn beat. Ghi lại các sample trực tiếp vào phần cứng, sau đó cắt, điêu khắc và tái tạo ca khúc của bạn một cách dễ dàng. Đưa các beat đã được định lượng hoặc off-grid của bạn vào bộ sequencer và tạo lớp trên tám track mẫu. Tiếp thêm năng lượng cho live set của bạn với FX hiệu suất: nắm bắt sự thiếu hoàn hảo với lo-fi tape, lặp bản mix của bạn với beat repeat và nhiều tính năng khác. Kết nối Circuit Rhythm cùng các thiết bị trong studio của bạn hoặc sáng tạo ở bất cứ nơi đâu bằng cách sử dụng pin sạc tích hợp.', 4)


insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Numark N-Wave 360 Powered Desktop DJ Monitors',2860000,18,N'NumarkNWave360PoweredDesktopDJMonitors.gif',N'Được thành lập tại Edison, New Jersey vào năm 1971, Numark là một trong số ít các thương hiệu DJ chính gốc. Ngay từ đầu, họ đã nhanh chóng gây được tiếng vang với các mixers, turntables cùng nhiều dạng cabin loa và trở thành một trong những đơn vị dẫn đầu trong ngành công nghiệp DJ thời kỳ Disco. Trong hơn 45 năm, Numark vẫn luôn là người tiên phong tiếp nhận và phát triển công nghệ mới và thông qua sự đổi mới không ngừng này, họ đã trở thành thương hiệu sản xuất thiết bị DJ lớn nhất thế giới, với sự phân phối và bán hàng toàn cầu gấp đôi so với đối thủ cạnh tranh gần nhất.', 4)


insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Denon MC6000MK2 Professional DJ Controller And Digital Mixer',19100000,13,N'DenonMC6000MK2ProfessionalDJControllerAndDigitalMixer.gif',N'MC6000Mk2 là thế hệ tiếp theo của Denon DJ, bộ đánh DJ và đầu mix kỹ thuật số chuyên nghiệp hàng đầu. Khung máy bằng thép nằm ngang có một đầu mix kỹ thuật số 4 kênh/8 nguồn với giao diện âm thanh analog và âm thanh số 24 bit lừng danh thế giới.', 4)


--danh mục 5. Trống & Bộ gõ

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'TAMA ST50H6C-BNS Stagestar 5-Piece Drum Kit w/ Hardware+Throne+Cymbals, Black Night Sparkle',18370000,8,N'TAMAST50H6C-BNSStagestar5-PieceDrumKitw,Hardware+Throne+Cymbals,BlackNightSparkle.gif',N'Với hơn 40 năm kinh nghiệm, TAMA hiểu rõ điều tay trống thực sự muốn. Đó là lý do vì sao TAMA quyết tâm ra mắt bộ trống bạn muốn, bạn cần, và bạn có thể mua được dù bạn đã chơi trống bao lâu hoặc khả năng tài chính thế nào. Giờ đây TAMA đã cho ra đời bộ trống tuyệt vời với mức giá tốt nhất trong phân khúc - STAGESTAR. Bộ kit STAGESTAR mới này có chân tom Omni-ball, hardware giúp bộ trống đứng vững vàng và ổn định khi đánh.', 5)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Remo DJ-FEMD-13 10Inch Festival Djembe, Medium, Fabric Twinings',7040000,6,N'RemoDJ-FEMD-1310InchFestivalDjembe,Medium,FabricTwinings.gif',N'Năm 1957, Remo Belli đã phát minh ra mặt trống Mylar tổng hợp thành công đầu tiên, ngày nay đã trở thành tiêu chuẩn trong ngành. Sáu thập kỷ trôi qua, các tay trống trên toàn thế giới đều tin tưởng vào độ bền chắc và phản hồi âm thanh của mặt trống Remo.', 5)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Latin Percussion LP201AX-2RRB LP Raul Reknow NZ Pine Bongos, Black',9130000,4,N'LatinPercussionLP201AX2RRBLPRaulReknowNZPineBongosBlack.gif',N'Để tôn vinh và kỷ niệm một trong những nghệ sĩ được yêu thích nhất, LP xin giới thiệu Raul Rekow Signature Series Congas and Bongos. Được làm từ chất gỗ New Zealand Pine và hoàn thiện với finish Dark Walnut, những trống này tạo nên âm thanh vô cùng du dương và tươi sáng như chính Raul vậy.', 5)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Natal NCSC01R Fibreglass Conga, Red',9020000,5,N'NatalNCSC01RFibreglassConga,Red.gif',N'Tạo beats có sức lan tỏa cùng Natal Classic Conga. Nhạc cụ gõ của Natal nổi tiếng với âm lượng lớn và chất âm khác biệt, và trống Tumba này cũng không phải là ngoại lệ. Đi tiên phong trong việc sử dụng sợi thủy tinh để sản xuất Tumba, chúng tôi sử dụng các khuôn vỏ trống ban đầu để có thiết kế đúng với những phiên bản cũ rất được yêu thích.', 5)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'MEINL Cymbals B13FH 13inch Byzance Brilliant Fast HiHat',7810000,23,N'MEINLCymbalsB13FH13inchByzanceBrilliantFastHiHat.gif',N'Hihat có hai finish khác nhau, cho phản hồi khô và lập tức, chick cực nhanh và sustain ngắn.', 5)

--danh mục 6. Vocals & Microphones

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Aston Spirit Multi-Pattern Condenser Microphone',10120000,17,N'AstonSpiritMulti-PatternCondenserMicrophone.gif',N'Aston Spirit là microphone hiệu suất khủng, có thể thay đổi hướng phân cực, sở hữu capsule (1”) mạ vàng theo phương pháp bay hơi lắng đọng (gold evaporated). Một nút chuyển đổi trên thân mic để bạn thay đổi qua lại giữa các hướng phân cực như Omni, Cardioid hoặc Figure-of-Eight. Đủ linh hoạt để thu tiếng của hầu hết mọi loại nhạc cụ và hiệu quả vượt trội nhất khi dùng để thu tiếng guitar acoustic và giọng hát. Capsule được chọn lựa thủ công, bên trong có mạch điện chất lượng cao, không biến áp, rất cân bằng và các bộ phận khác đạt chất lượng cao nhất.', 6)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Behringer B 906 Supercardioid Dynamic Microphone',1210000,34,N'BehringerB906SupercardioidDynamicMicrophone.gif',N'Bạn cần một chiếc mic đa năng có thể thu tiếng trống, bộ gõ, amp và các nguồn nhạc cụ khác? Câu trả lời của Behringer chính là B 906, một chiếc mic dynamic supercardiod được thiết kế custom để tái tạo âm thanh từ nhạc cụ một cách tuyệt vời! Mic dành cho nhạc cụ B 906 được thiết kế đặc biệt cho amply guitar, và cũng rất tuyệt vời để thu tiếng của bộ gõ, kèn và giọng hát.', 6)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'TC-Helicon VoiceTone Correct XT Vocal Effects Pedal',7700000,7,N'TC-HeliconVoiceToneCorrectXTVocalEffectsPedal.gif',N'TC Helicon là công ty âm thanh chuyên nghiệp duy nhất 100% chuyện dụng với nhu cầu trình diễn của ca sỹ. Đặt trụ sở tại Victoria, Canada, là một nhóm nhiều chuyên gia tâm huyết tin tưởng rằng tiếng phát ra từ người là loại nhạc cụ đẹp nhất và thuần khiết nhất thế giới. TC Helicon không ngừng phát triển vô số các sản phẩm sáng tạo nhằm tạo được cảm hứng, thể hiện lòng tôn trọng và tạo điều kiện cho nhiều giọng hát hiện đại. Có ba vấn đề quan tâm hàng đầu đối với ca sĩ: âm thanh tuyệt vời trong bản mix, hát đúng nhịp và tránh phản hồi. Voicetone Correct XT là stompbox 2 nút hiệu ứng tiếng sáng tạo, đánh dấu cả ba boxes với giai điệu thích ứng cấp độ biểu diễn cho EQ hoàn hảo, độ nén, loại bỏ tiếng huýt và gating, chỉnh âm sắc tự động giúp bạn hát đúng nhịp, và chống phản hồi đa tầng quét sạch phản hồi một cách tự động. Có mic preamp độ nhiễu thấp và chất lượng cao cho vocals thuần chất mọi lúc.', 6)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Behringer BC1500 Premium 7-piece Drum Microphone Set',4950000,14,N'BehringerBC1500Premium7pieceDrumMicrophoneSet.gif',N'Bộ 7 mic chất lượng cao cho dàn trống chuyển tải chính xác âm sắc của toàn bộ bộ trống khi chơi nhạc trên sân khấu hoặc trong phòng thu. Các loại mic chuyên biệt chất lượng cao được chỉnh tiếng để nắm bắt tiếng trống kick, tom/snare và cymbal một cách hiệu quả. Những chiếc mic linh hoạt và nhỏ gọn này phù hợp cho việc thu âm chính xác ở khoảng cách đặt mic gần.', 6)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC)
values(N'Shure SM58S Vocal Dynamic Microphone (w/Switch)',4290000,29,N'ShureSM58SVocalDynamicMicrophone.gif',N'SM58® huyền thoại là mic vocal cardioid dynamic cực kỳ linh hoạt và sở hữu tiêu chuẩn của ngành công nghiệp thu âm và là lựa chọn đầu tiên của các ca sĩ trên khắp địa cầu. Thậm chí cả trong điều kiện khắc nghiệt thì SM58 vẫn được “đo ni đóng giày” để nhận nguồn âm chính trong khi giảm thiểu tối đa tiếng ồn xung quanh, mang đến khả năng tại tạo giọng hát ấm áp và rõ nét.', 6)

-- 7 .Guitars and Basses
insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC) 
values(N'1957 Les Paul Custom Reissue',161885000,3,N'1957LesPaulCustomReissue.gif',N'Với những đường nét tinh tế, guitar Les Paul Custom 1957 là một trong những cây đàn có nét đẹp đặc trưng nhất từ trước đến nay. Thân đàn được làm từ gỗ Mahogany, tạo nên sự khác biệt với các dòng guitar khác của Les Paul.',7)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC) 
values(N'Yamaha PACIFICA611 VFM, Black',16490000,20,N'YamahaPACIFICA611VFM,Black.gif',N'Bộ thu âm Seymour Duncan Custom 5 TB-14 và SP90-1, Cột dây đàn và ốc vít Graph Tech TUSQ, Khóa chỉnh dây đàn Grover, Cần rung Wilkinson VS50, Thân đàn bằng gỗ dương tía với mặt trên bằng gỗ dán phong vân lửa, Cổ đàn bằng gỗ phong với phím đàn bằng gỗ hồng mộc, Bộ chọn thu âm 3 vị trí, Công tắc Push-pull coil-split cho các lựa chọn âm thanh bổ sung.',7)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC) 
values(N'1959 Gibson Les Paul Junior DC, Pelham Blue',155550000,5,N'1959GibsonLesPaulJuniorDC,PelhamBlue.gif',N'Một trong những thương hiệu ghita mang tính biểu tượng nhất thế giới - gia sản kế thừa của Gibson trải dài từ những năm 30 của thế kỷ 20, ghita được ra đời tại nhà xưởng ở Kalamazoo, số 225 Parsons Street, nơi được xem là cái nôi của ghita hiện đại. Năm 1952, Gibson cho ra mắt cây ghita điện đầu tiên, Les Paul, và lịch sử được viết lên từ đó.',7)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC) 
values(N'Fender American Professional 5-String Precision Bass Guitar, RW FB, Olympic White',44500000,20,N'FenderAmericanProfessional5-StringPrecisionBassGuitar,RWFB,OlympicWhite.gif',N'Leo Fender thành lập năm 1964, Fender đã phát triển thành biểu tượng văn hoá trong thế giới âm nhạc. Sử dụng trong nhiều thể loại, từ rock roll đến blues, một số nghệ sỹ đẳng cấp nhất thế giới đã chọn Fender như Eric Clapton, Jimi Hendrix, Stevie Ray Vaughan, và còn nhiều tên tuổi khác.',7)

insert into SANPHAM(TENSANPHAM,DONGIA,SOLUONG,HINHANH,MOTA,MADANHMUC) 
values(N'Ibanez BTB846SC BTB Bass Workshop 6-String Electric Bass Guitar',51000000,20,N'IbanezBTB846SCBTBBassWorkshop6-StringElectricBassGuitar.gif',N'Ibanez là một trong những công ty sản xuất nhạc cụ đầu tiên của Nhật Bản có được vị thế tầm cỡ trong lĩnh vực kinh doanh đàn guitar nhập khẩu tại Hoa Kỳ và Âu châu, cũng như là thương hiệu guitar đầu tiên sản xuất số lượng lớn ghita bảy dây và 8 dây. Công ty sản xuất các dòng sản phẩm đa dạng từ nhạc cụ đến phím đàn, bàn đạp và các loại phụ kiện',7)