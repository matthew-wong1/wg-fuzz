struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: i32;

var<private> global2: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(56251u, Struct_2(Struct_1(vec4<u32>(0u, 1u, 1u, 1u)), vec4<f32>(-260f, -1710f, -1591f, -1222f), Struct_1(vec4<u32>(4294967295u, 0u, 32888u, 35805u))), true, Struct_2(Struct_1(vec4<u32>(56560u, 72300u, 51411u, 37056u)), vec4<f32>(-359f, -1253f, -866f, -1302f), Struct_1(vec4<u32>(1u, 47941u, 84462u, 4294967295u)))), Struct_3(79625u, Struct_2(Struct_1(vec4<u32>(31067u, 0u, 0u, 4294967295u)), vec4<f32>(1413f, -672f, 353f, -1230f), Struct_1(vec4<u32>(34809u, 4294967295u, 60540u, 0u))), true, Struct_2(Struct_1(vec4<u32>(19719u, 9470u, 40677u, 1u)), vec4<f32>(527f, 1192f, -187f, -1185f), Struct_1(vec4<u32>(16527u, 4294967295u, 4294967295u, 0u)))), Struct_3(68906u, Struct_2(Struct_1(vec4<u32>(3042u, 4294967295u, 0u, 29053u)), vec4<f32>(-941f, -1716f, 436f, -398f), Struct_1(vec4<u32>(4294967295u, 51021u, 4294967295u, 41549u))), false, Struct_2(Struct_1(vec4<u32>(20005u, 28614u, 36296u, 11380u)), vec4<f32>(1402f, 3050f, -971f, 2024f), Struct_1(vec4<u32>(55883u, 1u, 0u, 100020u)))), Struct_3(9026u, Struct_2(Struct_1(vec4<u32>(0u, 1u, 1664u, 42553u)), vec4<f32>(-605f, 353f, -1285f, 750f), Struct_1(vec4<u32>(0u, 1u, 0u, 0u))), false, Struct_2(Struct_1(vec4<u32>(4294967295u, 44717u, 7312u, 83236u)), vec4<f32>(427f, 937f, 481f, -833f), Struct_1(vec4<u32>(1u, 0u, 6001u, 11026u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(4294967295u, 74197u, 0u, 4294967295u)), vec4<f32>(579f, 1000f, 1616f, -568f), Struct_1(vec4<u32>(23370u, 62803u, 23695u, 10472u))), true, Struct_2(Struct_1(vec4<u32>(77465u, 4294967295u, 1u, 13117u)), vec4<f32>(-1301f, 354f, 1493f, 447f), Struct_1(vec4<u32>(1u, 41092u, 4294967295u, 34212u)))), Struct_3(0u, Struct_2(Struct_1(vec4<u32>(56074u, 124859u, 4294967295u, 55393u)), vec4<f32>(1837f, -831f, 385f, -679f), Struct_1(vec4<u32>(0u, 16313u, 4294967295u, 4294967295u))), false, Struct_2(Struct_1(vec4<u32>(2593u, 1558u, 87902u, 55664u)), vec4<f32>(-230f, -1048f, 1349f, -1257f), Struct_1(vec4<u32>(1u, 0u, 34968u, 1u)))), Struct_3(36737u, Struct_2(Struct_1(vec4<u32>(17510u, 8568u, 4294967295u, 10462u)), vec4<f32>(773f, -238f, -1000f, 1330f), Struct_1(vec4<u32>(4294967295u, 39345u, 1u, 0u))), true, Struct_2(Struct_1(vec4<u32>(51842u, 7196u, 24770u, 1u)), vec4<f32>(-970f, 1095f, 290f, -1366f), Struct_1(vec4<u32>(62530u, 0u, 1u, 0u)))), Struct_3(9562u, Struct_2(Struct_1(vec4<u32>(1u, 8350u, 24925u, 0u)), vec4<f32>(1604f, 871f, 619f, -351f), Struct_1(vec4<u32>(60955u, 4294967295u, 0u, 29260u))), false, Struct_2(Struct_1(vec4<u32>(46256u, 0u, 4294967295u, 0u)), vec4<f32>(-1421f, 528f, 1630f, -247f), Struct_1(vec4<u32>(62257u, 0u, 0u, 4294967295u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(17387u, 39307u, 0u, 639u)), vec4<f32>(-592f, -240f, 495f, 148f), Struct_1(vec4<u32>(4600u, 52982u, 4294967295u, 13333u))), false, Struct_2(Struct_1(vec4<u32>(39437u, 0u, 1u, 11865u)), vec4<f32>(-467f, -224f, -1085f, -1847f), Struct_1(vec4<u32>(33402u, 4294967295u, 1u, 4294967295u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(42733u, 4294967295u, 29549u, 10345u)), vec4<f32>(295f, -831f, 799f, -1854f), Struct_1(vec4<u32>(20091u, 32416u, 0u, 1u))), true, Struct_2(Struct_1(vec4<u32>(1u, 37054u, 0u, 7176u)), vec4<f32>(-827f, 1136f, 364f, 1195f), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 0u)))), Struct_3(80645u, Struct_2(Struct_1(vec4<u32>(1u, 1u, 4294967295u, 51004u)), vec4<f32>(-596f, -413f, -944f, 1010f), Struct_1(vec4<u32>(18669u, 0u, 87729u, 1u))), true, Struct_2(Struct_1(vec4<u32>(4294967295u, 22497u, 56550u, 15451u)), vec4<f32>(-682f, -696f, 482f, 329f), Struct_1(vec4<u32>(0u, 55921u, 25867u, 1u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(4294967295u, 51147u, 20310u, 28527u)), vec4<f32>(-401f, 648f, -1894f, 922f), Struct_1(vec4<u32>(1u, 1u, 1u, 4294967295u))), true, Struct_2(Struct_1(vec4<u32>(49763u, 4294967295u, 50488u, 42374u)), vec4<f32>(-386f, 1080f, -755f, -567f), Struct_1(vec4<u32>(11446u, 47203u, 15654u, 0u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 18864u)), vec4<f32>(1601f, -578f, -200f, 345f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 60963u))), true, Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), vec4<f32>(-497f, 118f, 149f, 377f), Struct_1(vec4<u32>(1105u, 52307u, 0u, 0u)))), Struct_3(9890u, Struct_2(Struct_1(vec4<u32>(37475u, 1u, 0u, 45680u)), vec4<f32>(420f, 738f, -623f, -470f), Struct_1(vec4<u32>(4294967295u, 71900u, 31623u, 1u))), false, Struct_2(Struct_1(vec4<u32>(14861u, 1u, 0u, 40991u)), vec4<f32>(927f, -1000f, -212f, 566f), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 8758u)))), Struct_3(0u, Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 64202u, 4294967295u)), vec4<f32>(-197f, -257f, 272f, 879f), Struct_1(vec4<u32>(0u, 27063u, 1u, 1u))), false, Struct_2(Struct_1(vec4<u32>(45356u, 7020u, 7128u, 44037u)), vec4<f32>(1391f, -895f, -387f, -613f), Struct_1(vec4<u32>(0u, 45475u, 4294967295u, 1u)))), Struct_3(46179u, Struct_2(Struct_1(vec4<u32>(76441u, 1u, 4294967295u, 4294967295u)), vec4<f32>(-2000f, 1748f, 465f, -612f), Struct_1(vec4<u32>(46341u, 4294967295u, 62233u, 0u))), false, Struct_2(Struct_1(vec4<u32>(102694u, 4294967295u, 4294967295u, 59797u)), vec4<f32>(525f, 460f, -274f, -1350f), Struct_1(vec4<u32>(41147u, 4294967295u, 35277u, 0u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(0u, 0u, 4294967295u, 0u)), vec4<f32>(-518f, 216f, 1855f, 2049f), Struct_1(vec4<u32>(86579u, 1u, 0u, 1u))), false, Struct_2(Struct_1(vec4<u32>(10331u, 78278u, 1731u, 1u)), vec4<f32>(-1644f, 287f, -993f, 406f), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 25967u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(0u, 1u, 33375u, 41928u)), vec4<f32>(307f, -853f, -641f, -264f), Struct_1(vec4<u32>(73706u, 1u, 0u, 1u))), true, Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 29695u)), vec4<f32>(178f, 1000f, -1482f, -689f), Struct_1(vec4<u32>(63325u, 8267u, 11687u, 4294967295u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(23354u, 1u, 25777u, 13384u)), vec4<f32>(-1000f, -220f, 266f, -621f), Struct_1(vec4<u32>(5109u, 34096u, 0u, 0u))), true, Struct_2(Struct_1(vec4<u32>(1u, 0u, 4294967295u, 4294967295u)), vec4<f32>(-379f, 131f, -512f, -1631f), Struct_1(vec4<u32>(15586u, 4294967295u, 1u, 4294967295u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(4294967295u, 58249u, 1u, 55492u)), vec4<f32>(399f, 608f, 492f, 607f), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 34427u))), false, Struct_2(Struct_1(vec4<u32>(50020u, 1u, 0u, 40862u)), vec4<f32>(-447f, 755f, -1243f, 113f), Struct_1(vec4<u32>(0u, 247u, 12952u, 29503u)))));

var<private> global3: u32;

var<private> global4: array<Struct_3, 32> = array<Struct_3, 32>(Struct_3(9755u, Struct_2(Struct_1(vec4<u32>(36127u, 1u, 0u, 1u)), vec4<f32>(-1017f, -1000f, 974f, 1000f), Struct_1(vec4<u32>(37355u, 77721u, 1u, 0u))), false, Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 22886u)), vec4<f32>(213f, 507f, 876f, 1191f), Struct_1(vec4<u32>(25996u, 4294967295u, 44184u, 1u)))), Struct_3(85104u, Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 13777u, 18111u)), vec4<f32>(-377f, -352f, -1894f, -1020f), Struct_1(vec4<u32>(9366u, 48640u, 1u, 0u))), false, Struct_2(Struct_1(vec4<u32>(0u, 14764u, 0u, 1u)), vec4<f32>(-805f, -1872f, 640f, 1457f), Struct_1(vec4<u32>(43743u, 0u, 4294967295u, 1u)))), Struct_3(58707u, Struct_2(Struct_1(vec4<u32>(16178u, 1u, 20700u, 0u)), vec4<f32>(116f, -1830f, -1339f, -831f), Struct_1(vec4<u32>(0u, 4294967295u, 2864u, 0u))), true, Struct_2(Struct_1(vec4<u32>(45080u, 26030u, 4294967295u, 6340u)), vec4<f32>(352f, -954f, -2197f, 844f), Struct_1(vec4<u32>(0u, 46218u, 10492u, 56369u)))), Struct_3(0u, Struct_2(Struct_1(vec4<u32>(1u, 45626u, 64860u, 70389u)), vec4<f32>(-1166f, -511f, -1000f, -1718f), Struct_1(vec4<u32>(1u, 29776u, 35096u, 4294967295u))), true, Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 64812u, 0u)), vec4<f32>(853f, -856f, 1000f, -796f), Struct_1(vec4<u32>(83184u, 4294967295u, 4294967295u, 0u)))), Struct_3(107929u, Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 62185u)), vec4<f32>(1442f, 298f, -715f, -1000f), Struct_1(vec4<u32>(4294967295u, 0u, 18952u, 30988u))), false, Struct_2(Struct_1(vec4<u32>(13762u, 40709u, 1u, 30139u)), vec4<f32>(543f, -1524f, 637f, 1314f), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 36053u)))), Struct_3(35439u, Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 1u, 1u)), vec4<f32>(-220f, 126f, 492f, 713f), Struct_1(vec4<u32>(54173u, 4294967295u, 0u, 46363u))), true, Struct_2(Struct_1(vec4<u32>(27947u, 9478u, 4294967295u, 10117u)), vec4<f32>(-1388f, 1233f, -1200f, -1336f), Struct_1(vec4<u32>(29328u, 1u, 4294967295u, 4294967295u)))), Struct_3(19506u, Struct_2(Struct_1(vec4<u32>(1u, 1u, 4294967295u, 111680u)), vec4<f32>(1382f, -537f, -652f, 1153f), Struct_1(vec4<u32>(7859u, 24016u, 0u, 1u))), false, Struct_2(Struct_1(vec4<u32>(0u, 28028u, 0u, 44486u)), vec4<f32>(-1073f, 857f, -525f, 1276f), Struct_1(vec4<u32>(1u, 1u, 39532u, 1u)))), Struct_3(88545u, Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 9842u, 4294967295u)), vec4<f32>(-543f, -759f, -1074f, -330f), Struct_1(vec4<u32>(31365u, 4294967295u, 4294967295u, 38266u))), true, Struct_2(Struct_1(vec4<u32>(4294967295u, 26051u, 40291u, 24792u)), vec4<f32>(-222f, -1321f, 166f, -589f), Struct_1(vec4<u32>(17390u, 0u, 78069u, 1u)))), Struct_3(51644u, Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), vec4<f32>(1676f, -921f, 784f, -768f), Struct_1(vec4<u32>(28234u, 4294967295u, 16002u, 4294967295u))), true, Struct_2(Struct_1(vec4<u32>(26024u, 8433u, 16415u, 20975u)), vec4<f32>(-1001f, -724f, 415f, 1679f), Struct_1(vec4<u32>(24901u, 29957u, 1u, 1u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(4294967295u, 39413u, 34586u, 29321u)), vec4<f32>(723f, 243f, 1772f, -166f), Struct_1(vec4<u32>(4294967295u, 10494u, 1u, 1u))), true, Struct_2(Struct_1(vec4<u32>(36897u, 4294967295u, 33575u, 61658u)), vec4<f32>(-1000f, -1660f, -112f, -309f), Struct_1(vec4<u32>(13113u, 3830u, 4294967295u, 16934u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(0u, 0u, 43791u, 18363u)), vec4<f32>(614f, 1342f, -1828f, -673f), Struct_1(vec4<u32>(0u, 28973u, 27781u, 39501u))), true, Struct_2(Struct_1(vec4<u32>(105114u, 97768u, 0u, 112898u)), vec4<f32>(-641f, -620f, -1526f, 1270f), Struct_1(vec4<u32>(43723u, 10851u, 128349u, 6365u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(3772u, 1u, 1u, 26358u)), vec4<f32>(1170f, -1073f, -596f, -498f), Struct_1(vec4<u32>(0u, 55489u, 1u, 0u))), true, Struct_2(Struct_1(vec4<u32>(31487u, 35869u, 0u, 4294967295u)), vec4<f32>(-1068f, -1000f, -1446f, -395f), Struct_1(vec4<u32>(1u, 1u, 46960u, 0u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 123141u, 1u)), vec4<f32>(960f, 694f, -1500f, 174f), Struct_1(vec4<u32>(56535u, 2934u, 71289u, 4294967295u))), false, Struct_2(Struct_1(vec4<u32>(0u, 6822u, 1u, 37293u)), vec4<f32>(-250f, -592f, -109f, 1000f), Struct_1(vec4<u32>(42089u, 50401u, 56437u, 1u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(0u, 70859u, 0u, 4294967295u)), vec4<f32>(-737f, -546f, -472f, -147f), Struct_1(vec4<u32>(24812u, 15359u, 1u, 16302u))), true, Struct_2(Struct_1(vec4<u32>(1u, 0u, 1u, 25717u)), vec4<f32>(-456f, -853f, -144f, -1000f), Struct_1(vec4<u32>(30543u, 1u, 36666u, 52713u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(30826u, 57440u, 4294967295u, 0u)), vec4<f32>(-1061f, 562f, -317f, -1764f), Struct_1(vec4<u32>(45294u, 6043u, 30585u, 30790u))), true, Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 0u, 3814u)), vec4<f32>(363f, -220f, -190f, -381f), Struct_1(vec4<u32>(19603u, 11757u, 87830u, 0u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(1198u, 1u, 95113u, 0u)), vec4<f32>(-872f, 886f, -1540f, 1000f), Struct_1(vec4<u32>(0u, 0u, 0u, 4294967295u))), true, Struct_2(Struct_1(vec4<u32>(1558u, 0u, 0u, 0u)), vec4<f32>(1854f, -764f, 734f, 1000f), Struct_1(vec4<u32>(4294967295u, 28592u, 49002u, 4294967295u)))), Struct_3(11298u, Struct_2(Struct_1(vec4<u32>(39691u, 0u, 0u, 45303u)), vec4<f32>(-1007f, 1042f, 1185f, 341f), Struct_1(vec4<u32>(24147u, 1u, 65708u, 64557u))), true, Struct_2(Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 0u)), vec4<f32>(-289f, 1582f, 233f, -1560f), Struct_1(vec4<u32>(0u, 4294967295u, 4294967295u, 13039u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), vec4<f32>(-1710f, 783f, 241f, 432f), Struct_1(vec4<u32>(7811u, 1u, 0u, 12720u))), false, Struct_2(Struct_1(vec4<u32>(53179u, 1u, 42073u, 9026u)), vec4<f32>(214f, 1584f, 348f, -587f), Struct_1(vec4<u32>(1u, 9411u, 95613u, 2660u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 27958u)), vec4<f32>(-126f, -1000f, -759f, -1646f), Struct_1(vec4<u32>(24481u, 17727u, 76574u, 1u))), true, Struct_2(Struct_1(vec4<u32>(27043u, 15857u, 115169u, 0u)), vec4<f32>(2082f, -140f, 1939f, -538f), Struct_1(vec4<u32>(42578u, 1u, 1u, 1u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(33331u, 0u, 4228u, 27252u)), vec4<f32>(557f, -1000f, -831f, -371f), Struct_1(vec4<u32>(44629u, 41435u, 4294967295u, 1u))), false, Struct_2(Struct_1(vec4<u32>(1u, 14931u, 7811u, 86005u)), vec4<f32>(262f, 917f, 178f, -2055f), Struct_1(vec4<u32>(13560u, 18218u, 1u, 73399u)))), Struct_3(29012u, Struct_2(Struct_1(vec4<u32>(0u, 32915u, 53509u, 13772u)), vec4<f32>(181f, -2187f, -575f, 836f), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 0u))), false, Struct_2(Struct_1(vec4<u32>(32900u, 4294967295u, 27056u, 4294967295u)), vec4<f32>(322f, 1445f, -2977f, 373f), Struct_1(vec4<u32>(0u, 0u, 24709u, 4294967295u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(1u, 1u, 86792u, 4294967295u)), vec4<f32>(1324f, 856f, 482f, 884f), Struct_1(vec4<u32>(21665u, 73273u, 16614u, 1u))), true, Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 105651u, 1u)), vec4<f32>(-760f, -1246f, -215f, -2069f), Struct_1(vec4<u32>(0u, 49807u, 30168u, 83464u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 24406u, 0u)), vec4<f32>(395f, 1258f, -1101f, -1039f), Struct_1(vec4<u32>(4294967295u, 27274u, 18964u, 0u))), false, Struct_2(Struct_1(vec4<u32>(1u, 62554u, 0u, 0u)), vec4<f32>(725f, 152f, 106f, 273f), Struct_1(vec4<u32>(16958u, 57652u, 25966u, 31568u)))), Struct_3(1154u, Struct_2(Struct_1(vec4<u32>(120721u, 0u, 0u, 0u)), vec4<f32>(1577f, -986f, -1988f, -376f), Struct_1(vec4<u32>(1u, 12796u, 52112u, 0u))), true, Struct_2(Struct_1(vec4<u32>(4294967295u, 56387u, 1u, 5361u)), vec4<f32>(628f, 233f, 736f, -207f), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 4294967295u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(34617u, 16217u, 39029u, 2468u)), vec4<f32>(1257f, -149f, -1000f, 893f), Struct_1(vec4<u32>(5579u, 30183u, 18575u, 27644u))), true, Struct_2(Struct_1(vec4<u32>(4294967295u, 20427u, 4294967295u, 14548u)), vec4<f32>(-1204f, -543f, -190f, -346f), Struct_1(vec4<u32>(51708u, 53211u, 0u, 0u)))), Struct_3(1u, Struct_2(Struct_1(vec4<u32>(67251u, 13149u, 60984u, 110140u)), vec4<f32>(665f, -1492f, -852f, -1123f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1373u, 1u))), false, Struct_2(Struct_1(vec4<u32>(4294967295u, 61862u, 0u, 0u)), vec4<f32>(1223f, 1008f, 346f, 1689f), Struct_1(vec4<u32>(1u, 5114u, 0u, 48111u)))), Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(4294967295u, 84536u, 115331u, 4294967295u)), vec4<f32>(-790f, 264f, 1527f, 1526f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u))), true, Struct_2(Struct_1(vec4<u32>(25230u, 3231u, 8526u, 0u)), vec4<f32>(-1667f, -667f, -734f, -283f), Struct_1(vec4<u32>(1u, 1u, 14398u, 4294967295u)))), Struct_3(38574u, Struct_2(Struct_1(vec4<u32>(4294967295u, 41922u, 129072u, 4294967295u)), vec4<f32>(-1266f, -1294f, 442f, -415f), Struct_1(vec4<u32>(60224u, 0u, 0u, 34443u))), true, Struct_2(Struct_1(vec4<u32>(17265u, 30612u, 51308u, 1u)), vec4<f32>(731f, -446f, -2377f, -522f), Struct_1(vec4<u32>(14184u, 52652u, 27318u, 1u)))), Struct_3(66220u, Struct_2(Struct_1(vec4<u32>(0u, 1u, 0u, 89206u)), vec4<f32>(685f, 601f, 2466f, 737f), Struct_1(vec4<u32>(9111u, 0u, 36973u, 1u))), false, Struct_2(Struct_1(vec4<u32>(1u, 4294967295u, 1u, 66999u)), vec4<f32>(1395f, -1108f, -392f, 1850f), Struct_1(vec4<u32>(8680u, 1u, 4294967295u, 88194u)))), Struct_3(34879u, Struct_2(Struct_1(vec4<u32>(1u, 29827u, 13492u, 0u)), vec4<f32>(1873f, 1349f, -626f, -1415f), Struct_1(vec4<u32>(0u, 49994u, 1u, 17695u))), false, Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, 73845u, 23655u)), vec4<f32>(-474f, 131f, 503f, -358f), Struct_1(vec4<u32>(24843u, 0u, 1u, 1u)))), Struct_3(2355u, Struct_2(Struct_1(vec4<u32>(6018u, 4294967295u, 9472u, 4294967295u)), vec4<f32>(324f, 793f, -1000f, -1287f), Struct_1(vec4<u32>(88190u, 52507u, 45276u, 0u))), false, Struct_2(Struct_1(vec4<u32>(33032u, 98241u, 56426u, 71851u)), vec4<f32>(536f, 1000f, 1831f, 1000f), Struct_1(vec4<u32>(4294967295u, 1u, 19469u, 11580u)))), Struct_3(81614u, Struct_2(Struct_1(vec4<u32>(89474u, 1u, 4294967295u, 1u)), vec4<f32>(423f, 1170f, 1287f, 1649f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 4294967295u))), true, Struct_2(Struct_1(vec4<u32>(17973u, 1u, 1u, 0u)), vec4<f32>(1337f, -2304f, 210f, 778f), Struct_1(vec4<u32>(4294967295u, 2581u, 0u, 18307u)))));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> f32 {
    var var_0 = arg_1;
    var_0 = arg_1;
    global0 = u_input.a.x;
    let var_1 = vec2<f32>(910f, -1317f);
    var var_2 = 1u;
    return var_1.x;
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(Struct_1(vec4<u32>(4294967295u, ~u_input.b.x, ~arg_0.a.x | ~4294967295u, ~u_input.b.x ^ arg_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1012f, -316f, -960f, 1100f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-556f, -737f, 1999f, -2355f))))), Struct_1(arg_0.a));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(arg_0.a.x, u_input.b.x, arg_0.a.x, 4294967295u)), _wgslsmith_mod_vec4_u32(~var_0.a.a, ~arg_0.a))), var_0.b, Struct_1(abs(abs(vec4<u32>(var_0.c.a.x, 1u, 0u, 1u)))));
    var var_2 = _wgslsmith_f_op_f32(-var_1.b.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.b.x * 365f), _wgslsmith_f_op_f32(-var_1.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))));
    var var_4 = _wgslsmith_add_i32(u_input.a.x, _wgslsmith_add_i32(-1i, u_input.a.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(arg_0.a.x, var_1.a, vec2<u32>(59243u, 1u)))))) - var_1.b.x);
}

fn func_3() -> bool {
    global0 = u_input.a.x;
    let var_0 = global2[_wgslsmith_index_u32(~(~u_input.b.x), 20u)];
    var var_1 = var_0.d;
    var var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.b.x, var_1.b.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.b.xy + _wgslsmith_f_op_vec2_f32(abs(var_0.d.b.ww))), _wgslsmith_f_op_vec2_f32(round(var_0.d.b.xw))));
    let var_3 = vec2<i32>(u_input.a.x, -8243i);
    return true;
}

fn func_4(arg_0: f32, arg_1: vec4<bool>) -> Struct_2 {
    global0 = _wgslsmith_mod_i32(~firstTrailingBit(countOneBits(u_input.a.x)), ~1i) << (firstTrailingBit(_wgslsmith_clamp_u32(~countOneBits(u_input.b.x), 4294967295u, u_input.b.x)) % 32u);
    global1 = -22999i;
    global0 = 5567i;
    let var_0 = vec2<bool>(arg_1.x, all(select(arg_1.zx, select(select(arg_1.zw, arg_1.xz, true), select(vec2<bool>(true, false), arg_1.yy, arg_1.x), false), select(vec2<bool>(false, true), vec2<bool>(true, true), !arg_1.x))));
    global2 = array<Struct_3, 20>();
    return Struct_2(Struct_1(select(vec4<u32>(u_input.b.x, 4294967295u, ~0u, ~u_input.b.x), ~countOneBits(vec4<u32>(72908u, 76158u, 41299u, u_input.b.x)), false)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, -571f, arg_0, -243f), vec4<f32>(-450f, arg_0, -1000f, arg_0))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -1889f, -661f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(arg_0)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + arg_0))), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(320f - arg_0) - arg_0)))), Struct_1(~(~(vec4<u32>(52415u, u_input.b.x, u_input.b.x, 65871u) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 20>();
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(1u, u_input.b.x), 44944u | u_input.b.x, ~17127u);
    var var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(var_0.x, Struct_1(vec4<u32>(0u, 1u, 22890u, 1u)), u_input.b)) - -2572f), _wgslsmith_f_op_f32(max(-1526f, -1737f)))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(u_input.b.x, 13532u, var_0.x, var_0.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -632f))))), vec4<bool>(true, true, true, func_3() || (true && (-45686i == u_input.a.x))));
    global2 = array<Struct_3, 20>();
    let var_2 = all(select(vec4<bool>(true, any(vec2<bool>(true, true)), var_1.b.x < 441f, false), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), any(vec2<bool>(false, false)))) == any(vec3<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_dot_vec3_u32(var_0, vec3<u32>(var_0.x, 4294967295u, u_input.b.x)) == _wgslsmith_sub_u32(var_1.c.a.x, var_1.a.a.x), any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true))));
    global0 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(abs(vec3<u32>(29365u, 35949u, 1u))), abs(max(abs(34601u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53602u, 49546u, 1u), ~var_1.c.a))));
}

