struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 22> = array<vec2<i32>, 22>(vec2<i32>(0i, -68542i), vec2<i32>(6434i, 35598i), vec2<i32>(2147483647i, -1i), vec2<i32>(38041i, -1i), vec2<i32>(-40278i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(36278i, 33897i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, 18575i), vec2<i32>(-82041i, -42981i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -3447i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-46544i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(i32(-2147483648), -8192i), vec2<i32>(13093i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(60275i, 5800i), vec2<i32>(-19630i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(-1i, 19369i));

var<private> global1: array<vec4<i32>, 16>;

var<private> global2: array<i32, 1> = array<i32, 1>(-8776i);

var<private> global3: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_2(Struct_1(vec2<u32>(68571u, 21437u), 36464u, vec2<i32>(1i, 2147483647i)), vec3<u32>(4294967295u, 62999u, 21475u), Struct_1(vec2<u32>(2771u, 1u), 21131u, vec2<i32>(10273i, -19403i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), 47540u, vec2<i32>(-7423i, 2147483647i))), Struct_2(Struct_1(vec2<u32>(33257u, 12886u), 4294967295u, vec2<i32>(17240i, 13326i)), vec3<u32>(6763u, 63175u, 0u), Struct_1(vec2<u32>(0u, 4294967295u), 4294967295u, vec2<i32>(1i, 21992i)), Struct_1(vec2<u32>(4294967295u, 40364u), 4294967295u, vec2<i32>(-1i, -1i))), vec4<i32>(i32(-2147483648), -14819i, 36849i, -9570i), Struct_1(vec2<u32>(5448u, 4294967295u), 21472u, vec2<i32>(i32(-2147483648), -29632i))), Struct_4(Struct_2(Struct_1(vec2<u32>(568u, 0u), 4294967295u, vec2<i32>(-24482i, 0i)), vec3<u32>(4294967295u, 0u, 41103u), Struct_1(vec2<u32>(10928u, 1u), 25476u, vec2<i32>(-60113i, 92222i)), Struct_1(vec2<u32>(1u, 1u), 7866u, vec2<i32>(-3936i, 1i))), Struct_2(Struct_1(vec2<u32>(15394u, 1u), 2180u, vec2<i32>(1i, 6189i)), vec3<u32>(18836u, 1u, 4294967295u), Struct_1(vec2<u32>(0u, 1u), 36171u, vec2<i32>(2147483647i, -26543i)), Struct_1(vec2<u32>(28647u, 13266u), 71568u, vec2<i32>(2147483647i, 27468i))), vec4<i32>(-1i, 1i, 1i, -24862i), Struct_1(vec2<u32>(38569u, 1u), 30358u, vec2<i32>(-45314i, -31935i))), Struct_4(Struct_2(Struct_1(vec2<u32>(1872u, 0u), 2230u, vec2<i32>(-61414i, 2147483647i)), vec3<u32>(21716u, 0u, 71178u), Struct_1(vec2<u32>(4294967295u, 1u), 57133u, vec2<i32>(0i, 7068i)), Struct_1(vec2<u32>(10038u, 5402u), 71491u, vec2<i32>(-26797i, 62688i))), Struct_2(Struct_1(vec2<u32>(35370u, 61757u), 0u, vec2<i32>(i32(-2147483648), i32(-2147483648))), vec3<u32>(104482u, 31423u, 53105u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 1u, vec2<i32>(48014i, i32(-2147483648))), Struct_1(vec2<u32>(1u, 20588u), 52910u, vec2<i32>(-1i, i32(-2147483648)))), vec4<i32>(8465i, 48949i, -740i, -23349i), Struct_1(vec2<u32>(4294967295u, 4294967295u), 18345u, vec2<i32>(2147483647i, 19747i))), Struct_4(Struct_2(Struct_1(vec2<u32>(0u, 1u), 1u, vec2<i32>(0i, 0i)), vec3<u32>(23249u, 22521u, 4294967295u), Struct_1(vec2<u32>(0u, 46157u), 24489u, vec2<i32>(-1034i, -10576i)), Struct_1(vec2<u32>(0u, 4526u), 87300u, vec2<i32>(-13191i, -42913i))), Struct_2(Struct_1(vec2<u32>(1u, 1u), 1u, vec2<i32>(1i, -14187i)), vec3<u32>(0u, 4294967295u, 16539u), Struct_1(vec2<u32>(4294967295u, 0u), 4294967295u, vec2<i32>(-4026i, 1i)), Struct_1(vec2<u32>(4294967295u, 0u), 1u, vec2<i32>(38765i, 1i))), vec4<i32>(0i, 44193i, i32(-2147483648), 0i), Struct_1(vec2<u32>(17130u, 4147u), 0u, vec2<i32>(-47046i, -1i))), Struct_4(Struct_2(Struct_1(vec2<u32>(1u, 39595u), 0u, vec2<i32>(1i, -38819i)), vec3<u32>(25318u, 0u, 78526u), Struct_1(vec2<u32>(0u, 31748u), 84466u, vec2<i32>(-19680i, -12396i)), Struct_1(vec2<u32>(14211u, 41614u), 15781u, vec2<i32>(1526i, -1i))), Struct_2(Struct_1(vec2<u32>(27439u, 0u), 29785u, vec2<i32>(26342i, 65184i)), vec3<u32>(0u, 4294967295u, 0u), Struct_1(vec2<u32>(4294967295u, 44640u), 99765u, vec2<i32>(-1i, 18905i)), Struct_1(vec2<u32>(4294967295u, 1u), 73192u, vec2<i32>(0i, -35264i))), vec4<i32>(-45372i, 2147483647i, 1742i, i32(-2147483648)), Struct_1(vec2<u32>(24334u, 48946u), 4294967295u, vec2<i32>(78833i, -13445i))), Struct_4(Struct_2(Struct_1(vec2<u32>(106135u, 0u), 23511u, vec2<i32>(1i, 16095i)), vec3<u32>(0u, 34925u, 14064u), Struct_1(vec2<u32>(1u, 0u), 0u, vec2<i32>(1i, 1i)), Struct_1(vec2<u32>(35008u, 34010u), 27120u, vec2<i32>(12079i, -48115i))), Struct_2(Struct_1(vec2<u32>(1u, 53997u), 4294967295u, vec2<i32>(56432i, 0i)), vec3<u32>(1u, 0u, 1u), Struct_1(vec2<u32>(18449u, 1u), 16626u, vec2<i32>(1i, 1i)), Struct_1(vec2<u32>(0u, 4294967295u), 4294967295u, vec2<i32>(1i, -10754i))), vec4<i32>(2850i, 2432i, -109606i, 3453i), Struct_1(vec2<u32>(4294967295u, 70442u), 0u, vec2<i32>(2147483647i, -14175i))), Struct_4(Struct_2(Struct_1(vec2<u32>(389u, 0u), 61110u, vec2<i32>(-19062i, i32(-2147483648))), vec3<u32>(32376u, 4692u, 0u), Struct_1(vec2<u32>(24063u, 0u), 38523u, vec2<i32>(0i, 0i)), Struct_1(vec2<u32>(0u, 16554u), 30821u, vec2<i32>(i32(-2147483648), 1i))), Struct_2(Struct_1(vec2<u32>(47041u, 4294967295u), 92252u, vec2<i32>(-57992i, 1i)), vec3<u32>(68628u, 37021u, 67778u), Struct_1(vec2<u32>(0u, 28555u), 4294967295u, vec2<i32>(11981i, 2147483647i)), Struct_1(vec2<u32>(26359u, 0u), 50931u, vec2<i32>(-33116i, -1i))), vec4<i32>(11i, -1i, 2147483647i, 0i), Struct_1(vec2<u32>(73146u, 1u), 70846u, vec2<i32>(2147483647i, 30257i))), Struct_4(Struct_2(Struct_1(vec2<u32>(1u, 30435u), 0u, vec2<i32>(-1i, i32(-2147483648))), vec3<u32>(0u, 0u, 1u), Struct_1(vec2<u32>(44181u, 0u), 47896u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_1(vec2<u32>(100646u, 76302u), 4294967295u, vec2<i32>(22901i, 2147483647i))), Struct_2(Struct_1(vec2<u32>(1u, 1u), 85409u, vec2<i32>(1i, 16684i)), vec3<u32>(0u, 0u, 53723u), Struct_1(vec2<u32>(32064u, 0u), 0u, vec2<i32>(-19605i, 1i)), Struct_1(vec2<u32>(1u, 45982u), 8686u, vec2<i32>(-29901i, 0i))), vec4<i32>(0i, 1i, 1i, 4254i), Struct_1(vec2<u32>(7793u, 62856u), 1u, vec2<i32>(17997i, 13595i))), Struct_4(Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), 1u, vec2<i32>(-29545i, 2792i)), vec3<u32>(0u, 4294967295u, 72377u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 2988u, vec2<i32>(0i, -1i)), Struct_1(vec2<u32>(50550u, 0u), 25602u, vec2<i32>(-24035i, -20430i))), Struct_2(Struct_1(vec2<u32>(99747u, 4294967295u), 1u, vec2<i32>(59507i, 1i)), vec3<u32>(57885u, 1u, 515u), Struct_1(vec2<u32>(1u, 1u), 57344u, vec2<i32>(1i, 0i)), Struct_1(vec2<u32>(11077u, 15666u), 82102u, vec2<i32>(8459i, -10138i))), vec4<i32>(i32(-2147483648), -23658i, 700i, 54100i), Struct_1(vec2<u32>(4294967295u, 1u), 0u, vec2<i32>(12335i, -30058i))), Struct_4(Struct_2(Struct_1(vec2<u32>(50792u, 0u), 4294967295u, vec2<i32>(1i, 46253i)), vec3<u32>(38269u, 32160u, 1u), Struct_1(vec2<u32>(0u, 1u), 18862u, vec2<i32>(2147483647i, 31971i)), Struct_1(vec2<u32>(4294967295u, 4294967295u), 4294967295u, vec2<i32>(1i, 1i))), Struct_2(Struct_1(vec2<u32>(1758u, 37140u), 35031u, vec2<i32>(6485i, 96734i)), vec3<u32>(10628u, 71831u, 69890u), Struct_1(vec2<u32>(37026u, 1u), 0u, vec2<i32>(-5010i, i32(-2147483648))), Struct_1(vec2<u32>(13628u, 54452u), 101495u, vec2<i32>(i32(-2147483648), -39057i))), vec4<i32>(55254i, 0i, -35112i, 63883i), Struct_1(vec2<u32>(0u, 34213u), 1u, vec2<i32>(i32(-2147483648), 1i))), Struct_4(Struct_2(Struct_1(vec2<u32>(1052u, 1u), 0u, vec2<i32>(57605i, 0i)), vec3<u32>(1u, 28932u, 4294967295u), Struct_1(vec2<u32>(108854u, 0u), 46663u, vec2<i32>(-65667i, -1i)), Struct_1(vec2<u32>(4294967295u, 14846u), 17170u, vec2<i32>(1i, 2147483647i))), Struct_2(Struct_1(vec2<u32>(4429u, 27138u), 15778u, vec2<i32>(4101i, -1i)), vec3<u32>(25209u, 19003u, 49823u), Struct_1(vec2<u32>(0u, 6610u), 1u, vec2<i32>(47717i, i32(-2147483648))), Struct_1(vec2<u32>(92874u, 4294967295u), 42932u, vec2<i32>(0i, -52841i))), vec4<i32>(1i, 0i, -53935i, 8311i), Struct_1(vec2<u32>(34752u, 6641u), 1u, vec2<i32>(-53727i, -69431i))), Struct_4(Struct_2(Struct_1(vec2<u32>(1u, 0u), 63550u, vec2<i32>(-67980i, -45949i)), vec3<u32>(26130u, 28512u, 1u), Struct_1(vec2<u32>(4294967295u, 9760u), 5190u, vec2<i32>(i32(-2147483648), 1612i)), Struct_1(vec2<u32>(34326u, 4294967295u), 1u, vec2<i32>(-10068i, 60575i))), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), 47899u, vec2<i32>(54700i, 51975i)), vec3<u32>(1u, 49190u, 4294967295u), Struct_1(vec2<u32>(84656u, 75309u), 4294967295u, vec2<i32>(1i, -13853i)), Struct_1(vec2<u32>(1u, 53101u), 1u, vec2<i32>(2147483647i, 42386i))), vec4<i32>(30953i, 21073i, -1i, -1708i), Struct_1(vec2<u32>(1u, 59760u), 7493u, vec2<i32>(i32(-2147483648), -7248i))), Struct_4(Struct_2(Struct_1(vec2<u32>(45404u, 15926u), 0u, vec2<i32>(1i, 55101i)), vec3<u32>(6936u, 45053u, 87805u), Struct_1(vec2<u32>(0u, 18970u), 28815u, vec2<i32>(33191i, 1i)), Struct_1(vec2<u32>(47487u, 20623u), 9184u, vec2<i32>(1i, 26053i))), Struct_2(Struct_1(vec2<u32>(28463u, 4294967295u), 1u, vec2<i32>(0i, 0i)), vec3<u32>(2223u, 13770u, 0u), Struct_1(vec2<u32>(38170u, 0u), 4294967295u, vec2<i32>(21477i, 0i)), Struct_1(vec2<u32>(18296u, 34270u), 1u, vec2<i32>(24900i, 15789i))), vec4<i32>(i32(-2147483648), 12378i, -66i, 41734i), Struct_1(vec2<u32>(1u, 31046u), 4294967295u, vec2<i32>(16698i, -1i))), Struct_4(Struct_2(Struct_1(vec2<u32>(0u, 34245u), 74190u, vec2<i32>(-5623i, 2147483647i)), vec3<u32>(4093u, 29104u, 1u), Struct_1(vec2<u32>(97406u, 1514u), 10732u, vec2<i32>(-3886i, i32(-2147483648))), Struct_1(vec2<u32>(4294967295u, 4294967295u), 0u, vec2<i32>(0i, 48115i))), Struct_2(Struct_1(vec2<u32>(1u, 45899u), 1u, vec2<i32>(i32(-2147483648), 0i)), vec3<u32>(115486u, 1u, 7067u), Struct_1(vec2<u32>(30345u, 80257u), 31269u, vec2<i32>(-1i, 14829i)), Struct_1(vec2<u32>(17298u, 1u), 1u, vec2<i32>(-47392i, -50856i))), vec4<i32>(0i, 21490i, -16589i, 2147483647i), Struct_1(vec2<u32>(4294967295u, 4294967295u), 17363u, vec2<i32>(-75378i, 51665i))), Struct_4(Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), 4294967295u, vec2<i32>(13905i, 2147483647i)), vec3<u32>(44673u, 0u, 0u), Struct_1(vec2<u32>(86396u, 36267u), 52158u, vec2<i32>(-1550i, i32(-2147483648))), Struct_1(vec2<u32>(38970u, 32064u), 1u, vec2<i32>(-2993i, -53227i))), Struct_2(Struct_1(vec2<u32>(41386u, 15509u), 4294967295u, vec2<i32>(2147483647i, i32(-2147483648))), vec3<u32>(39627u, 30875u, 4294967295u), Struct_1(vec2<u32>(5865u, 0u), 1u, vec2<i32>(-4314i, 0i)), Struct_1(vec2<u32>(1u, 0u), 0u, vec2<i32>(-17055i, 2147483647i))), vec4<i32>(-38201i, -1i, 1i, 30186i), Struct_1(vec2<u32>(29764u, 9181u), 0u, vec2<i32>(19396i, 1i))), Struct_4(Struct_2(Struct_1(vec2<u32>(87659u, 4294967295u), 0u, vec2<i32>(-12635i, i32(-2147483648))), vec3<u32>(4294967295u, 1u, 1u), Struct_1(vec2<u32>(36975u, 56411u), 0u, vec2<i32>(-1i, 1i)), Struct_1(vec2<u32>(1u, 4294967295u), 26389u, vec2<i32>(-39446i, 2147483647i))), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), 17728u, vec2<i32>(10120i, -1i)), vec3<u32>(1u, 0u, 22333u), Struct_1(vec2<u32>(87232u, 45080u), 67003u, vec2<i32>(2147483647i, 1116i)), Struct_1(vec2<u32>(32516u, 1u), 1u, vec2<i32>(2147483647i, 2147483647i))), vec4<i32>(i32(-2147483648), -9638i, 71136i, 2147483647i), Struct_1(vec2<u32>(3016u, 1u), 0u, vec2<i32>(2147483647i, -136i))), Struct_4(Struct_2(Struct_1(vec2<u32>(36157u, 63201u), 41694u, vec2<i32>(0i, -2363i)), vec3<u32>(0u, 4294967295u, 1277u), Struct_1(vec2<u32>(1u, 1u), 0u, vec2<i32>(14198i, -63682i)), Struct_1(vec2<u32>(4294967295u, 16976u), 1u, vec2<i32>(-1i, -13557i))), Struct_2(Struct_1(vec2<u32>(8096u, 4294967295u), 17701u, vec2<i32>(-1i, -4997i)), vec3<u32>(17878u, 0u, 4294967295u), Struct_1(vec2<u32>(1u, 0u), 1u, vec2<i32>(0i, -65288i)), Struct_1(vec2<u32>(94986u, 0u), 20905u, vec2<i32>(-62224i, -19665i))), vec4<i32>(2147483647i, 41679i, 0i, -17124i), Struct_1(vec2<u32>(4294967295u, 1u), 0u, vec2<i32>(0i, 10979i))), Struct_4(Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), 0u, vec2<i32>(i32(-2147483648), 1i)), vec3<u32>(7539u, 1u, 1u), Struct_1(vec2<u32>(41075u, 1u), 18198u, vec2<i32>(-21380i, 2147483647i)), Struct_1(vec2<u32>(27338u, 9650u), 40300u, vec2<i32>(8523i, -17996i))), Struct_2(Struct_1(vec2<u32>(16376u, 53882u), 42979u, vec2<i32>(-11131i, 0i)), vec3<u32>(1257u, 35940u, 1u), Struct_1(vec2<u32>(34730u, 24224u), 65973u, vec2<i32>(-12526i, 4178i)), Struct_1(vec2<u32>(0u, 4294967295u), 4688u, vec2<i32>(-1i, i32(-2147483648)))), vec4<i32>(59822i, 40286i, -20699i, -17997i), Struct_1(vec2<u32>(7485u, 0u), 2098u, vec2<i32>(0i, 1i))), Struct_4(Struct_2(Struct_1(vec2<u32>(24485u, 4294967295u), 4294967295u, vec2<i32>(11904i, i32(-2147483648))), vec3<u32>(12145u, 31081u, 4294967295u), Struct_1(vec2<u32>(1u, 83896u), 0u, vec2<i32>(-36831i, -1i)), Struct_1(vec2<u32>(1u, 81902u), 89036u, vec2<i32>(2147483647i, -18660i))), Struct_2(Struct_1(vec2<u32>(1u, 80079u), 1u, vec2<i32>(95640i, -1i)), vec3<u32>(0u, 3880u, 0u), Struct_1(vec2<u32>(4294967295u, 4294967295u), 1u, vec2<i32>(-1i, 9024i)), Struct_1(vec2<u32>(15937u, 51510u), 30867u, vec2<i32>(0i, 1i))), vec4<i32>(i32(-2147483648), 14106i, 10133i, i32(-2147483648)), Struct_1(vec2<u32>(4294967295u, 12698u), 514u, vec2<i32>(1i, -23081i))), Struct_4(Struct_2(Struct_1(vec2<u32>(0u, 1u), 2160u, vec2<i32>(-15231i, -1i)), vec3<u32>(0u, 10539u, 0u), Struct_1(vec2<u32>(53678u, 0u), 0u, vec2<i32>(0i, 32485i)), Struct_1(vec2<u32>(1u, 15381u), 0u, vec2<i32>(-23346i, i32(-2147483648)))), Struct_2(Struct_1(vec2<u32>(1u, 0u), 91171u, vec2<i32>(2147483647i, -17908i)), vec3<u32>(87266u, 0u, 0u), Struct_1(vec2<u32>(58161u, 37550u), 43776u, vec2<i32>(-53548i, 0i)), Struct_1(vec2<u32>(1531u, 8938u), 55337u, vec2<i32>(75828i, -26964i))), vec4<i32>(-44519i, -14126i, 27563i, 2147483647i), Struct_1(vec2<u32>(83876u, 0u), 74521u, vec2<i32>(0i, 8743i))));

var<private> global4: array<Struct_1, 11>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: vec3<u32>) -> u32 {
    var var_0 = 1u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(141f + _wgslsmith_f_op_f32(select(1224f, 1f, true))) * 1773f);
    var var_2 = _wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(reverseBits(4386u), arg_2.x, u_input.a, arg_0.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_0.x, 60071u, arg_1, arg_0.x), vec4<u32>(arg_1, arg_1, arg_1, arg_1))), ~abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.x, u_input.b.x, arg_2.x, 1617u), vec4<u32>(arg_2.x, arg_0.x, 27028u, 72079u))));
    var_0 = _wgslsmith_mult_u32(var_2.x, u_input.a) ^ u_input.a;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-359f, 945f, -784f, 1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, 1051f, -2572f, -607f)))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -319f), -112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-961f + -445f) + _wgslsmith_f_op_f32(2354f * 1473f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1803f))))));
    return u_input.a;
}

fn func_2(arg_0: i32, arg_1: Struct_4) -> bool {
    var var_0 = Struct_4(Struct_2(Struct_1(arg_1.b.b.zx, u_input.a, u_input.c.yx), arg_1.a.b ^ vec3<u32>(1u, 10817u, 1u), global4[_wgslsmith_index_u32(u_input.a, 11u)], global4[_wgslsmith_index_u32(arg_1.b.b.x, 11u)]), Struct_2(arg_1.d, vec3<u32>(select(_wgslsmith_mod_u32(1u, arg_1.a.d.b), func_3(u_input.b, u_input.a, vec3<u32>(25924u, 15950u, u_input.b.x)), true), ~countOneBits(arg_1.d.b), abs(arg_1.d.b)), Struct_1(arg_1.d.a << (vec2<u32>(4294967295u, 30218u) % vec2<u32>(32u)), _wgslsmith_dot_vec3_u32(arg_1.a.b >> (arg_1.b.b % vec3<u32>(32u)), ~arg_1.a.b), -(~u_input.c.zy)), Struct_1(arg_1.a.c.a, arg_1.d.b ^ ~1u, -(vec2<i32>(-2147483647i, 2147483647i) & arg_1.a.c.c))), max(arg_1.c, ~select(arg_1.c, vec4<i32>(arg_1.d.c.x, -33528i, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], -592i), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false)))), arg_1.a.c);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1775f)) - -755f))), 1071f);
    global1 = array<vec4<i32>, 16>();
    var var_2 = Struct_2(Struct_1(vec2<u32>(~(~arg_1.d.a.x), _wgslsmith_mod_u32(u_input.a, arg_1.d.a.x)), reverseBits(~arg_1.d.a.x), firstTrailingBit(firstLeadingBit(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.c.x, 11978i), vec2<i32>(arg_1.b.d.c.x, 0i))))), vec3<u32>(countOneBits(var_0.d.a.x), 0u, 30801u), global4[_wgslsmith_index_u32(4294967295u, 11u)], Struct_1(vec2<u32>(44108u, ~(~var_0.d.a.x)), ~(~arg_1.a.d.b), vec2<i32>(1i, u_input.c.x)));
    global0 = array<vec2<i32>, 22>();
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: bool) -> Struct_1 {
    var var_0 = vec3<i32>(u_input.c.x & abs(2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) & ~vec2<i32>(-2147483647i, u_input.d), ~global0[_wgslsmith_index_u32(12762u, 22u)]), firstTrailingBit(global2[_wgslsmith_index_u32(~u_input.b.x, 1u)]));
    let var_1 = 1059f;
    let var_2 = u_input.a;
    global0 = array<vec2<i32>, 22>();
    global3 = array<Struct_4, 20>();
    return global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(countOneBits(firstTrailingBit(vec3<u32>(var_2, var_2, 4294967295u))), ~(abs(vec3<u32>(0u, 4294967295u, u_input.b.x)) ^ (vec3<u32>(55405u, var_2, var_2) << (vec3<u32>(41209u, var_2, 12347u) % vec3<u32>(32u)))))), 11u)];
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = Struct_2(global4[_wgslsmith_index_u32(1765u, 11u)], vec3<u32>((_wgslsmith_mod_u32(u_input.a, u_input.a) ^ u_input.a) ^ ~(u_input.a | 32242u), ~4294967295u, 6042u), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1241f, 411f)) - vec2<f32>(411f, -3004f))), any(vec3<bool>(func_2(-33997i, global3[_wgslsmith_index_u32(4294967295u, 20u)]), all(vec3<bool>(true, true, false)), false)), false), Struct_1(vec2<u32>(~_wgslsmith_div_u32(1u, 1972u), ~36449u), firstLeadingBit(~u_input.a), global0[_wgslsmith_index_u32(59557u, 22u)]));
    global0 = array<vec2<i32>, 22>();
    var var_1 = var_0;
    let var_2 = var_1.d.b;
    var_1 = var_0;
    return func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-1090f - 1281f)), -777f) + vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(948f, 1262f))), 1000f)), false, any(select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true), all(vec3<bool>(true, true, false)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec2<i32>, 22>();
    var var_0 = ~_wgslsmith_clamp_u32(arg_1.b, u_input.b.x, arg_1.a.x << (_wgslsmith_sub_u32(u_input.a << (1u % 32u), u_input.b.x) % 32u));
    global1 = array<vec4<i32>, 16>();
    global1 = array<vec4<i32>, 16>();
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    return func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(286f, -793f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1084f, -859f))))), vec2<f32>(_wgslsmith_f_op_f32(-319f - _wgslsmith_f_op_f32(select(1634f, -671f, true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-536f, -1147f)), -931f))))), _wgslsmith_sub_i32(~countOneBits(arg_1.c.x), -14976i) <= -min(arg_1.c.x, 0i), func_2(-min(1i, arg_1.c.x), global3[_wgslsmith_index_u32(~max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, arg_0.x), vec2<u32>(29048u, 4294967295u)), 0u), 20u)]));
}

fn func_6(arg_0: i32, arg_1: Struct_3, arg_2: vec3<i32>) -> vec4<bool> {
    let var_0 = arg_1.b.x;
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.yz >> ((~vec2<u32>(0u, 4294967295u) << (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(arg_1.a.c, reverseBits(vec2<i32>(2147483647i, -2147483647i)) ^ vec2<i32>(u_input.d, -37351i))), vec2<i32>(_wgslsmith_mod_i32(0i, ~(-global2[_wgslsmith_index_u32(u_input.b.x, 1u)])), 1i));
    let var_2 = countOneBits(global2[_wgslsmith_index_u32(~u_input.a, 1u)]);
    var var_3 = arg_1.b.x;
    let var_4 = ~(~(countOneBits(abs(1i)) >> (u_input.a % 32u)));
    return select(vec4<bool>(!func_2(arg_2.x, Struct_4(Struct_2(Struct_1(u_input.b, 1u, arg_2.xz), vec3<u32>(4294967295u, arg_1.c.a.x, 27492u), global4[_wgslsmith_index_u32(arg_1.a.a.x, 11u)], Struct_1(vec2<u32>(0u, 36772u), arg_1.c.b, vec2<i32>(var_4, arg_1.c.c.x))), Struct_2(global4[_wgslsmith_index_u32(arg_1.a.a.x, 11u)], vec3<u32>(1u, 59818u, arg_1.c.a.x), global4[_wgslsmith_index_u32(u_input.a, 11u)], global4[_wgslsmith_index_u32(u_input.b.x, 11u)]), vec4<i32>(9526i, -1i, 25898i, -2147483647i), Struct_1(vec2<u32>(arg_1.c.a.x, 4294967295u), 4294967295u, vec2<i32>(-29779i, arg_2.x)))), select((var_4 == u_input.c.x) | true, true, any(vec4<bool>(true, true, true, true))), !(true && (var_0 >= var_0)), any(vec2<bool>(true, true)) || select(false, false, true)), vec4<bool>(!(all(vec4<bool>(true, true, false, true)) || all(vec2<bool>(true, true))), false, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1112f * _wgslsmith_f_op_f32(arg_1.b.x - var_0))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))), 1000f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_6(1i, Struct_3(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, u_input.b.x), 11u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-377f, -257f, -1000f))) - vec3<f32>(-722f, 622f, 469f)), func_5(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 1u, 6741u), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x)), func_1(global1[_wgslsmith_index_u32(u_input.a, 16u)]))), ~select(~u_input.c, _wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b.x, 1u)], -10047i, global2[_wgslsmith_index_u32(u_input.b.x, 1u)]), u_input.c), vec3<bool>(true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(u_input.a, 39655u, u_input.b.x) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, u_input.a) << (vec3<u32>(1u, 4294967295u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.a), vec3<u32>(1165u, u_input.b.x, 0u)), vec3<u32>(1u, 87077u, 5877u) << (vec3<u32>(u_input.a, u_input.a, 736u) % vec3<u32>(32u)))), u_input.d, u_input.a, 2147483647i, abs(~_wgslsmith_clamp_vec2_i32(u_input.c.xz, u_input.c.xy, abs(u_input.c.yx))));
}

