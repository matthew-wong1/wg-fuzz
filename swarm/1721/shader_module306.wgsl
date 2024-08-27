struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(318f, 239f, -710f, -378f, 1000f, -547f, 950f, -231f, -111f, 1000f, -802f, 791f, 455f, -285f, 527f, -670f, -1000f, 315f, -1387f, -404f, -366f, 382f, -1511f, 481f, -951f, -853f);

var<private> global1: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(vec4<u32>(53064u, 55258u, 1u, 0u), vec3<f32>(351f, -574f, 129f), Struct_1(vec4<u32>(68871u, 0u, 134338u, 0u), false), -25783i, Struct_2(vec3<u32>(13121u, 0u, 1u), Struct_1(vec4<u32>(19185u, 36267u, 67354u, 4294967295u), true), Struct_1(vec4<u32>(0u, 0u, 0u, 37279u), true), vec4<i32>(i32(-2147483648), 1i, -10854i, 3748i), 0u)), Struct_4(vec4<u32>(3429u, 4294967295u, 95388u, 4294967295u), vec3<f32>(-995f, 1902f, -1068f), Struct_1(vec4<u32>(702u, 5648u, 56020u, 0u), true), -1i, Struct_2(vec3<u32>(1u, 84707u, 61493u), Struct_1(vec4<u32>(46148u, 23338u, 57664u, 4294967295u), true), Struct_1(vec4<u32>(0u, 31885u, 1u, 45643u), true), vec4<i32>(1i, 19464i, 2832i, -1i), 96243u)), Struct_4(vec4<u32>(4294967295u, 40351u, 6499u, 1920u), vec3<f32>(-530f, 1123f, -114f), Struct_1(vec4<u32>(0u, 23377u, 94920u, 4294967295u), true), 2147483647i, Struct_2(vec3<u32>(31256u, 26365u, 8002u), Struct_1(vec4<u32>(0u, 1u, 8256u, 0u), true), Struct_1(vec4<u32>(1u, 25043u, 4294967295u, 56036u), true), vec4<i32>(0i, -9628i, 2147483647i, 1i), 42808u)), Struct_4(vec4<u32>(0u, 27988u, 0u, 124384u), vec3<f32>(942f, -249f, -758f), Struct_1(vec4<u32>(4294967295u, 7058u, 4294967295u, 46727u), false), i32(-2147483648), Struct_2(vec3<u32>(43506u, 24719u, 29462u), Struct_1(vec4<u32>(1u, 722u, 0u, 1u), true), Struct_1(vec4<u32>(4294967295u, 4294967295u, 13700u, 1u), true), vec4<i32>(-1i, 0i, -1i, -33954i), 4294967295u)), Struct_4(vec4<u32>(4294967295u, 1u, 44132u, 7434u), vec3<f32>(718f, -352f, 1279f), Struct_1(vec4<u32>(39626u, 53501u, 0u, 31918u), true), -14164i, Struct_2(vec3<u32>(1u, 29018u, 30558u), Struct_1(vec4<u32>(86598u, 52216u, 4294967295u, 1u), true), Struct_1(vec4<u32>(0u, 20951u, 20152u, 0u), false), vec4<i32>(0i, -56411i, 56078i, 0i), 86412u)), Struct_4(vec4<u32>(1u, 28532u, 10716u, 84481u), vec3<f32>(-987f, -239f, 304f), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), false), 2147483647i, Struct_2(vec3<u32>(1u, 0u, 0u), Struct_1(vec4<u32>(10351u, 10986u, 14388u, 4294967295u), true), Struct_1(vec4<u32>(0u, 0u, 13905u, 16751u), false), vec4<i32>(-1i, -35506i, -5332i, -47954i), 0u)), Struct_4(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec3<f32>(1536f, -186f, -752f), Struct_1(vec4<u32>(1u, 52994u, 19090u, 0u), true), 27752i, Struct_2(vec3<u32>(32251u, 1u, 37200u), Struct_1(vec4<u32>(1u, 4294967295u, 26334u, 53305u), true), Struct_1(vec4<u32>(8792u, 4294967295u, 67622u, 90066u), true), vec4<i32>(i32(-2147483648), -1i, 28305i, 2147483647i), 39491u)), Struct_4(vec4<u32>(17019u, 0u, 4294967295u, 0u), vec3<f32>(1329f, 949f, 441f), Struct_1(vec4<u32>(32487u, 4294967295u, 4294967295u, 13415u), false), 19854i, Struct_2(vec3<u32>(31661u, 1726u, 0u), Struct_1(vec4<u32>(1u, 4294967295u, 11944u, 67703u), false), Struct_1(vec4<u32>(1u, 0u, 0u, 0u), true), vec4<i32>(1921i, 2147483647i, -1i, 30449i), 4294967295u)), Struct_4(vec4<u32>(66431u, 4294967295u, 45473u, 30674u), vec3<f32>(-1229f, -921f, 1089f), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 1u), false), -26755i, Struct_2(vec3<u32>(71146u, 1u, 0u), Struct_1(vec4<u32>(9743u, 59421u, 81884u, 60757u), true), Struct_1(vec4<u32>(29875u, 1u, 9770u, 1u), false), vec4<i32>(-19287i, 0i, 2147483647i, -48475i), 1u)), Struct_4(vec4<u32>(4294967295u, 1092u, 0u, 62883u), vec3<f32>(-1053f, 487f, -466f), Struct_1(vec4<u32>(37654u, 15665u, 69821u, 4294967295u), true), -20751i, Struct_2(vec3<u32>(5819u, 4294967295u, 4294967295u), Struct_1(vec4<u32>(0u, 15313u, 1u, 63495u), true), Struct_1(vec4<u32>(1u, 1u, 3958u, 67069u), false), vec4<i32>(i32(-2147483648), -10892i, 1i, 7486i), 3755u)), Struct_4(vec4<u32>(1u, 55928u, 70209u, 22488u), vec3<f32>(-1204f, -828f, 857f), Struct_1(vec4<u32>(9329u, 4294967295u, 0u, 77330u), false), 29228i, Struct_2(vec3<u32>(4294967295u, 4294967295u, 0u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 6213u, 0u), true), Struct_1(vec4<u32>(4294967295u, 66617u, 4294967295u, 31232u), false), vec4<i32>(25044i, 2147483647i, 8249i, 35179i), 0u)), Struct_4(vec4<u32>(31808u, 24611u, 31228u, 1u), vec3<f32>(871f, -1418f, -846f), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 4349u), false), 1i, Struct_2(vec3<u32>(43191u, 55247u, 13066u), Struct_1(vec4<u32>(30313u, 43355u, 0u, 1u), false), Struct_1(vec4<u32>(0u, 10595u, 0u, 70455u), true), vec4<i32>(2147483647i, 1i, 1i, -49439i), 75378u)), Struct_4(vec4<u32>(0u, 47190u, 2104u, 124449u), vec3<f32>(-344f, 573f, 1685f), Struct_1(vec4<u32>(68011u, 2106u, 4294967295u, 1u), true), 73118i, Struct_2(vec3<u32>(1u, 4294967295u, 1u), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 43852u), false), Struct_1(vec4<u32>(4294967295u, 1u, 2761u, 1u), false), vec4<i32>(11835i, 24986i, 0i, -2851i), 25182u)), Struct_4(vec4<u32>(29509u, 7559u, 0u, 0u), vec3<f32>(-196f, -127f, 466f), Struct_1(vec4<u32>(0u, 37442u, 1u, 0u), true), i32(-2147483648), Struct_2(vec3<u32>(4294967295u, 57655u, 28581u), Struct_1(vec4<u32>(1u, 1u, 25091u, 94598u), false), Struct_1(vec4<u32>(0u, 41403u, 0u, 1u), true), vec4<i32>(61334i, i32(-2147483648), i32(-2147483648), 13870i), 4294967295u)), Struct_4(vec4<u32>(4294967295u, 0u, 73868u, 21184u), vec3<f32>(163f, 339f, 1765f), Struct_1(vec4<u32>(0u, 4294967295u, 39177u, 17544u), false), -1i, Struct_2(vec3<u32>(41547u, 4294967295u, 97049u), Struct_1(vec4<u32>(1u, 1u, 17307u, 1u), false), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 12745u), false), vec4<i32>(0i, 0i, 40922i, -1i), 60749u)), Struct_4(vec4<u32>(1u, 39908u, 4294967295u, 51853u), vec3<f32>(334f, -1000f, -1430f), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 0u), false), 0i, Struct_2(vec3<u32>(33044u, 17995u, 0u), Struct_1(vec4<u32>(55504u, 75018u, 28506u, 4294967295u), false), Struct_1(vec4<u32>(14698u, 0u, 1u, 1u), false), vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i), 25780u)), Struct_4(vec4<u32>(1u, 31953u, 4294967295u, 21582u), vec3<f32>(-512f, -343f, 510f), Struct_1(vec4<u32>(5197u, 1u, 50818u, 0u), true), 2147483647i, Struct_2(vec3<u32>(0u, 20416u, 0u), Struct_1(vec4<u32>(46180u, 1u, 69419u, 20673u), true), Struct_1(vec4<u32>(20808u, 0u, 0u, 8378u), false), vec4<i32>(-1i, -1i, 0i, i32(-2147483648)), 4294967295u)), Struct_4(vec4<u32>(4294967295u, 0u, 38108u, 127175u), vec3<f32>(-1438f, 1335f, 1515f), Struct_1(vec4<u32>(4404u, 1u, 4294967295u, 37072u), false), -1i, Struct_2(vec3<u32>(1u, 1u, 0u), Struct_1(vec4<u32>(0u, 0u, 14328u, 58899u), false), Struct_1(vec4<u32>(656u, 55246u, 68615u, 22409u), false), vec4<i32>(-51345i, 2147483647i, -26386i, 0i), 8452u)), Struct_4(vec4<u32>(0u, 9133u, 112230u, 0u), vec3<f32>(-145f, -1582f, -625f), Struct_1(vec4<u32>(930u, 0u, 1u, 4294967295u), false), 2147483647i, Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(vec4<u32>(5512u, 1u, 0u, 4294967295u), false), Struct_1(vec4<u32>(4294967295u, 38293u, 0u, 0u), true), vec4<i32>(-1248i, i32(-2147483648), 12391i, -9874i), 103319u)));

var<private> global2: array<Struct_5, 21> = array<Struct_5, 21>(Struct_5(Struct_4(vec4<u32>(0u, 56636u, 0u, 77478u), vec3<f32>(-1244f, 2193f, 334f), Struct_1(vec4<u32>(23016u, 55286u, 33062u, 1u), true), 0i, Struct_2(vec3<u32>(31797u, 37676u, 3148u), Struct_1(vec4<u32>(1u, 1u, 53656u, 1u), false), Struct_1(vec4<u32>(4294967295u, 19134u, 1u, 4294967295u), true), vec4<i32>(15181i, 45432i, i32(-2147483648), -12024i), 4294967295u)), 1152f, vec4<f32>(607f, 717f, -1077f, 354f), -1i), Struct_5(Struct_4(vec4<u32>(4294967295u, 8233u, 40476u, 4294967295u), vec3<f32>(-1068f, -366f, -223f), Struct_1(vec4<u32>(18220u, 1u, 1u, 36060u), false), -16261i, Struct_2(vec3<u32>(4294967295u, 3722u, 1633u), Struct_1(vec4<u32>(0u, 41277u, 4294967295u, 30838u), true), Struct_1(vec4<u32>(43978u, 1u, 4294967295u, 4294967295u), true), vec4<i32>(0i, -42198i, -28646i, -50638i), 1u)), 1363f, vec4<f32>(257f, -752f, 1464f, 192f), 1i), Struct_5(Struct_4(vec4<u32>(4294967295u, 0u, 11781u, 2083u), vec3<f32>(651f, -1773f, -207f), Struct_1(vec4<u32>(752u, 4294967295u, 4294967295u, 1533u), true), -1137i, Struct_2(vec3<u32>(0u, 21806u, 25381u), Struct_1(vec4<u32>(36982u, 1u, 4294967295u, 1u), false), Struct_1(vec4<u32>(0u, 1u, 6648u, 72965u), true), vec4<i32>(-28059i, -1i, -1i, -66486i), 4294967295u)), -1528f, vec4<f32>(-221f, -1448f, 342f, -448f), -68774i), Struct_5(Struct_4(vec4<u32>(119u, 52889u, 0u, 4294967295u), vec3<f32>(801f, 584f, -380f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 9701u, 18440u), false), -239i, Struct_2(vec3<u32>(117869u, 4294967295u, 41506u), Struct_1(vec4<u32>(96730u, 13916u, 43872u, 57184u), false), Struct_1(vec4<u32>(1u, 45525u, 0u, 21908u), true), vec4<i32>(2147483647i, 0i, -48163i, -38180i), 4294967295u)), 637f, vec4<f32>(-384f, 128f, -1610f, -483f), 15320i), Struct_5(Struct_4(vec4<u32>(25355u, 0u, 1u, 4294967295u), vec3<f32>(1243f, 656f, 1197f), Struct_1(vec4<u32>(0u, 19395u, 52455u, 33406u), true), 0i, Struct_2(vec3<u32>(4294967295u, 50542u, 1u), Struct_1(vec4<u32>(34683u, 4294967295u, 1u, 89033u), false), Struct_1(vec4<u32>(3776u, 79365u, 4294967295u, 4294967295u), false), vec4<i32>(-1i, 4149i, i32(-2147483648), 0i), 0u)), 1509f, vec4<f32>(-1343f, -437f, -616f, -141f), i32(-2147483648)), Struct_5(Struct_4(vec4<u32>(22060u, 4294967295u, 4602u, 1u), vec3<f32>(880f, -952f, -895f), Struct_1(vec4<u32>(52037u, 4294967295u, 1u, 33745u), true), 19791i, Struct_2(vec3<u32>(59569u, 1u, 24293u), Struct_1(vec4<u32>(59044u, 4294967295u, 1u, 4294967295u), true), Struct_1(vec4<u32>(4294967295u, 10903u, 4294967295u, 4294967295u), false), vec4<i32>(2147483647i, -64907i, 1i, 2147483647i), 1u)), 1230f, vec4<f32>(408f, -547f, 112f, -1395f), -20171i), Struct_5(Struct_4(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec3<f32>(-195f, 1283f, 2319f), Struct_1(vec4<u32>(31930u, 69514u, 22688u, 0u), false), 0i, Struct_2(vec3<u32>(4294967295u, 11119u, 71876u), Struct_1(vec4<u32>(4294967295u, 33037u, 1u, 27586u), true), Struct_1(vec4<u32>(0u, 25282u, 19080u, 4294967295u), true), vec4<i32>(-27012i, 23743i, 2147483647i, -5502i), 10728u)), 912f, vec4<f32>(-1011f, 136f, -271f, -1247f), 17584i), Struct_5(Struct_4(vec4<u32>(13738u, 27760u, 1u, 1u), vec3<f32>(476f, 278f, -1050f), Struct_1(vec4<u32>(33842u, 12125u, 12528u, 1u), false), 1i, Struct_2(vec3<u32>(0u, 20797u, 0u), Struct_1(vec4<u32>(1u, 37553u, 4294967295u, 100138u), false), Struct_1(vec4<u32>(33375u, 0u, 17719u, 32989u), true), vec4<i32>(-15546i, 0i, 0i, -30997i), 13103u)), -1000f, vec4<f32>(-1363f, 1343f, 1105f, -2093f), 2147483647i), Struct_5(Struct_4(vec4<u32>(42572u, 10130u, 4971u, 77693u), vec3<f32>(622f, -506f, -1269f), Struct_1(vec4<u32>(1u, 0u, 74236u, 0u), true), i32(-2147483648), Struct_2(vec3<u32>(1u, 0u, 0u), Struct_1(vec4<u32>(0u, 1u, 0u, 75119u), false), Struct_1(vec4<u32>(31877u, 22883u, 1u, 71720u), true), vec4<i32>(-21304i, -1i, -24400i, i32(-2147483648)), 42047u)), 1623f, vec4<f32>(787f, 1282f, -1212f, 1122f), -83294i), Struct_5(Struct_4(vec4<u32>(4294967295u, 1u, 63568u, 0u), vec3<f32>(-275f, 280f, 889f), Struct_1(vec4<u32>(12800u, 31803u, 3309u, 10566u), true), -50995i, Struct_2(vec3<u32>(63911u, 31346u, 0u), Struct_1(vec4<u32>(0u, 7566u, 16560u, 23101u), true), Struct_1(vec4<u32>(0u, 38784u, 112205u, 4294967295u), false), vec4<i32>(i32(-2147483648), 1547i, 2147483647i, -1i), 57681u)), -569f, vec4<f32>(800f, 1000f, 1000f, 1341f), -11079i), Struct_5(Struct_4(vec4<u32>(1u, 4294967295u, 4294967295u, 29769u), vec3<f32>(-2268f, 3219f, 804f), Struct_1(vec4<u32>(9281u, 0u, 1u, 54954u), true), 31039i, Struct_2(vec3<u32>(17016u, 98327u, 4586u), Struct_1(vec4<u32>(4294967295u, 26618u, 79790u, 1u), true), Struct_1(vec4<u32>(4870u, 4819u, 95176u, 1u), true), vec4<i32>(2147483647i, -12589i, 34987i, -1i), 1u)), 1366f, vec4<f32>(1472f, -346f, -270f, -2318f), -3213i), Struct_5(Struct_4(vec4<u32>(36162u, 4294967295u, 1u, 24382u), vec3<f32>(-664f, -713f, -411f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 21574u, 15739u), false), 26968i, Struct_2(vec3<u32>(1u, 2366u, 7862u), Struct_1(vec4<u32>(0u, 10454u, 4294967295u, 4294967295u), true), Struct_1(vec4<u32>(4294967295u, 8607u, 90386u, 0u), false), vec4<i32>(1i, 2147483647i, 6409i, 1i), 15283u)), 1049f, vec4<f32>(993f, 495f, 2106f, -622f), -12234i), Struct_5(Struct_4(vec4<u32>(73250u, 39026u, 0u, 54551u), vec3<f32>(405f, -185f, -1000f), Struct_1(vec4<u32>(1u, 1u, 28806u, 114662u), true), -1i, Struct_2(vec3<u32>(25839u, 1u, 11989u), Struct_1(vec4<u32>(61881u, 65819u, 0u, 48623u), false), Struct_1(vec4<u32>(1u, 16977u, 16669u, 7568u), true), vec4<i32>(-1i, -58873i, 1i, 1536i), 0u)), 1184f, vec4<f32>(-1331f, -291f, -1371f, 1000f), 2147483647i), Struct_5(Struct_4(vec4<u32>(53704u, 25950u, 36261u, 58690u), vec3<f32>(-1150f, 1600f, 198f), Struct_1(vec4<u32>(0u, 1u, 0u, 8473u), false), 2147483647i, Struct_2(vec3<u32>(1u, 1u, 0u), Struct_1(vec4<u32>(34575u, 71394u, 1u, 1u), false), Struct_1(vec4<u32>(1u, 42122u, 23099u, 4294967295u), true), vec4<i32>(-21900i, i32(-2147483648), -1i, 62798i), 51028u)), 952f, vec4<f32>(325f, -1910f, 2484f, 1841f), 2095i), Struct_5(Struct_4(vec4<u32>(24306u, 68494u, 27605u, 0u), vec3<f32>(-535f, -1002f, -1064f), Struct_1(vec4<u32>(0u, 1u, 57908u, 4294967295u), true), -17068i, Struct_2(vec3<u32>(0u, 0u, 362u), Struct_1(vec4<u32>(0u, 4269u, 85144u, 0u), false), Struct_1(vec4<u32>(86545u, 35873u, 15319u, 0u), true), vec4<i32>(i32(-2147483648), 2329i, 0i, -1i), 98025u)), -1935f, vec4<f32>(451f, -1466f, 764f, 2452f), 1i), Struct_5(Struct_4(vec4<u32>(42559u, 1u, 20148u, 44481u), vec3<f32>(-377f, -119f, -276f), Struct_1(vec4<u32>(1u, 2391u, 1u, 73940u), true), 31394i, Struct_2(vec3<u32>(14786u, 0u, 1u), Struct_1(vec4<u32>(5309u, 373u, 19545u, 14363u), false), Struct_1(vec4<u32>(53459u, 1u, 37784u, 4294967295u), false), vec4<i32>(2044i, i32(-2147483648), -1302i, 2147483647i), 5903u)), 892f, vec4<f32>(665f, -870f, -754f, -1219f), 40971i), Struct_5(Struct_4(vec4<u32>(4294967295u, 0u, 18914u, 15275u), vec3<f32>(864f, -201f, -628f), Struct_1(vec4<u32>(1u, 0u, 502u, 3229u), true), 0i, Struct_2(vec3<u32>(47638u, 1u, 42689u), Struct_1(vec4<u32>(0u, 110866u, 72512u, 6857u), true), Struct_1(vec4<u32>(19521u, 0u, 0u, 4294967295u), false), vec4<i32>(4904i, i32(-2147483648), -1i, 24919i), 90u)), 360f, vec4<f32>(-913f, -1014f, -1137f, -1000f), 30304i), Struct_5(Struct_4(vec4<u32>(30820u, 0u, 36384u, 21813u), vec3<f32>(1000f, 495f, -850f), Struct_1(vec4<u32>(0u, 4294967295u, 50112u, 4294967295u), true), -5100i, Struct_2(vec3<u32>(0u, 0u, 1u), Struct_1(vec4<u32>(14711u, 1u, 96910u, 1u), true), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 92327u), false), vec4<i32>(1i, 12232i, -39612i, 2147483647i), 0u)), -659f, vec4<f32>(241f, -726f, -302f, -894f), -1i), Struct_5(Struct_4(vec4<u32>(7912u, 1u, 0u, 91086u), vec3<f32>(-747f, 2213f, 1274f), Struct_1(vec4<u32>(34732u, 1u, 4918u, 5297u), false), 0i, Struct_2(vec3<u32>(1u, 1u, 25002u), Struct_1(vec4<u32>(46133u, 10650u, 44713u, 28878u), true), Struct_1(vec4<u32>(0u, 12477u, 86663u, 10174u), true), vec4<i32>(2147483647i, -19779i, -1i, 2147483647i), 0u)), 1224f, vec4<f32>(-1009f, -1741f, 213f, 418f), 0i), Struct_5(Struct_4(vec4<u32>(72944u, 43659u, 24938u, 14851u), vec3<f32>(548f, -155f, -1000f), Struct_1(vec4<u32>(0u, 62984u, 0u, 30815u), true), i32(-2147483648), Struct_2(vec3<u32>(32625u, 0u, 38800u), Struct_1(vec4<u32>(50713u, 37647u, 0u, 25062u), true), Struct_1(vec4<u32>(2305u, 18667u, 12145u, 0u), false), vec4<i32>(-1i, -20082i, 0i, 46015i), 0u)), 887f, vec4<f32>(-630f, 526f, 1294f, 915f), 62519i), Struct_5(Struct_4(vec4<u32>(23776u, 1u, 44066u, 6204u), vec3<f32>(-219f, -943f, 155f), Struct_1(vec4<u32>(54270u, 4294967295u, 0u, 24771u), true), -1i, Struct_2(vec3<u32>(4294967295u, 0u, 74310u), Struct_1(vec4<u32>(1u, 17708u, 11774u, 4294967295u), true), Struct_1(vec4<u32>(47584u, 45119u, 1u, 3286u), true), vec4<i32>(-11789i, -57193i, -21557i, 25819i), 95500u)), -1199f, vec4<f32>(1109f, 241f, -374f, -1333f), 2147483647i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<i32> {
    let var_0 = -503f;
    var var_1 = Struct_1(~vec4<u32>(~u_input.a.x, 0u << (u_input.b.x % 32u), ~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 70341u, 1u), vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.b.x))), false);
    var var_2 = Struct_3(Struct_2(firstTrailingBit(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x) << (abs(var_1.a.ywx) % vec3<u32>(32u))), Struct_1(vec4<u32>(4294967295u, _wgslsmith_sub_u32(u_input.b.x, 67838u), 1u, var_1.a.x), var_1.b), Struct_1(vec4<u32>(10944u, 1u, ~1326u, 4294967295u | u_input.c), true), select(abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -45534i, u_input.d, 2147483647i), vec4<i32>(u_input.d, -14690i, 1i, u_input.d), vec4<i32>(7003i, u_input.d, 1i, u_input.d))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.d, -1i, -9942i, u_input.d), vec4<i32>(u_input.d, -2147483647i, -531i, u_input.d)) | -vec4<i32>(u_input.d, 2147483647i, 1i, 2147483647i), vec4<bool>(any(vec4<bool>(false, var_1.b, true, var_1.b)), false, true, var_1.b)), 8128u), var_1.a.x, -13291i);
    global0 = array<f32, 26>();
    var_1 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, var_2.a.e, u_input.b.x, u_input.a.x), vec4<u32>(var_2.b, 82956u, u_input.c, u_input.c))) | (1u & ~var_2.a.b.a.x), var_1.a.x, u_input.c, firstLeadingBit(var_1.a.x)), var_1.b);
    return -_wgslsmith_div_vec4_i32(vec4<i32>(abs(~(-2147483647i)), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_2.c, 0i), countOneBits(-2147483647i)), var_2.c, min(u_input.d, u_input.d)), vec4<i32>(_wgslsmith_dot_vec2_i32(select(var_2.a.d.ww, var_2.a.d.wx, true), vec2<i32>(-37618i, 1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.c, -1i, -2147483647i, -46524i), ~vec4<i32>(var_2.a.d.x, u_input.d, 0i, -5654i)), var_2.a.d.x, u_input.d));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec2<f32>) -> Struct_5 {
    var var_0 = func_3();
    var var_1 = !(!vec3<bool>(_wgslsmith_dot_vec3_i32(var_0.zxw, vec3<i32>(var_0.x, u_input.d, var_0.x)) < 53716i, false, true));
    global0 = array<f32, 26>();
    var var_2 = vec4<u32>(_wgslsmith_clamp_u32(arg_1, 55008u, ~(65602u << (firstLeadingBit(4294967295u) % 32u))), 0u, ~arg_1, u_input.a.x);
    var var_3 = abs(_wgslsmith_div_u32(arg_1 | u_input.b.x, _wgslsmith_dot_vec3_u32(~var_2.yxw, ~vec3<u32>(var_2.x, arg_1, 0u))));
    return Struct_5(global1[_wgslsmith_index_u32(arg_1, 19u)], arg_0, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 26u)])), -2290f, _wgslsmith_f_op_f32(-484f - _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2251f, arg_2.x) * arg_2.x)))), 36986i);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_1.a;
    let var_1 = Struct_1(abs(min(~u_input.a, ~vec4<u32>(var_0.x, 0u, u_input.b.x, arg_0.a.a.x))), arg_1.c.b);
    global0 = array<f32, 26>();
    let var_2 = true;
    global0 = array<f32, 26>();
    return Struct_1(select(~(countOneBits(vec4<u32>(var_1.a.x, 19753u, arg_0.a.a.x, u_input.b.x)) & select(vec4<u32>(0u, var_1.a.x, var_0.x, 65830u), var_1.a, vec4<bool>(arg_0.a.c.b, false, arg_1.b.b, true))), vec4<u32>(abs(~arg_0.a.e.c.a.x), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(var_1.a.www, vec3<u32>(97129u, var_1.a.x, u_input.c), arg_1.b.a.wzw), arg_1.b.a.zxx), ~min(0u, 0u), _wgslsmith_add_u32(arg_0.a.e.a.x, ~arg_1.b.a.x)), vec4<bool>(true, true, true, true)), var_1.b);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_1 {
    return func_4(func_2(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 58199u), u_input.b), 4294967295u), 26u)]), ~(~arg_0) << ((select(u_input.a.x, u_input.c, true) | firstLeadingBit(45671u)) % 32u), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-323f, global0[_wgslsmith_index_u32(1u, 26u)]), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(arg_0, 26u)], -412f))), false))), Struct_2(vec3<u32>((u_input.a.x & arg_0) << (1u % 32u), firstLeadingBit(u_input.c), (12323u >> (u_input.c % 32u)) << (~3294u % 32u)), Struct_1(~u_input.a, false), func_2(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 26u)], 20887u, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0[_wgslsmith_index_u32(u_input.c, 26u)]))))).a.e.c, abs(vec4<i32>(arg_2, -1i, u_input.d, u_input.d) ^ vec4<i32>(4952i, -1i, 22622i, u_input.d)) << (firstLeadingBit(abs(vec4<u32>(u_input.a.x, u_input.c, arg_0, u_input.c))) % vec4<u32>(32u)), ~(~arg_0 >> (~4294967295u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 26>();
    let var_0 = Struct_4(vec4<u32>(reverseBits(_wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, u_input.b.x)), ~select(23834u, 13794u, false) & u_input.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, u_input.a.x, u_input.b.x, 7333u) & ~vec4<u32>(u_input.b.x, u_input.a.x, u_input.c, 4294967295u), abs(~u_input.a)), ~20215u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(24308u, 26u)], 431f, -749f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.c, 26u)], global0[_wgslsmith_index_u32(16437u, 26u)], 473f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(0u, 26u)], -438f), vec3<f32>(427f, 360f, global0[_wgslsmith_index_u32(64942u, 26u)]))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 522f, global0[_wgslsmith_index_u32(1u, 26u)]))))), func_1(_wgslsmith_add_u32(_wgslsmith_mult_u32(abs(0u), _wgslsmith_clamp_u32(u_input.a.x, 14317u, u_input.c)), 57953u), u_input.d, u_input.d), -_wgslsmith_add_i32(u_input.d, -1i), func_2(global0[_wgslsmith_index_u32(~func_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(8046u, u_input.a.x), 26u)], ~105535u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-130f, global0[_wgslsmith_index_u32(118984u, 26u)]) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 26u)], -845f))).a.c.a.x, 26u)], func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.c, 15932u) >> (u_input.a.wyw % vec3<u32>(32u)), vec3<u32>(13367u, 64763u, u_input.c)), -12258i, 1i).a.x, func_2(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~0u, 26u)])), ~u_input.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-575f, global0[_wgslsmith_index_u32(u_input.a.x, 26u)])) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], -952f))).c.zz).a.e);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(131f + 573f) * 1000f))));
    let var_2 = _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(select(~u_input.a.zw, ~(vec2<u32>(var_0.c.a.x, 2308u) & u_input.b), true), max(var_0.e.c.a.wx, (u_input.a.wy << (var_0.a.yz % vec2<u32>(32u))) | countOneBits(var_0.e.a.xy))), u_input.a.ww, countOneBits(var_0.e.b.a.zx));
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~u_input.a.yzz, vec3<u32>(~var_2.x, max(113956u, ~_wgslsmith_mult_u32(21573u, 62557u)), _wgslsmith_dot_vec4_u32(reverseBits(var_0.e.b.a >> (vec4<u32>(69362u, u_input.c, 1u, 6130u) % vec4<u32>(32u))), ~vec4<u32>(4294967295u, 0u, var_0.a.x, 15647u))), var_0.a.wxy);
}

