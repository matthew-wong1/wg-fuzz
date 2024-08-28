// {"0:0":[181,12,216,133,217,170,103,229]}
// Seed: 471443092710442495

struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: i32,
    d: Struct_3,
    e: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: Struct_2,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-866f, -265f, 1624f, -1838f), vec4<f32>(-1000f, 636f, 1208f, 1000f), vec4<f32>(-744f, 196f, 1142f, 413f), vec4<f32>(-2093f, -600f, -139f, 304f), vec4<f32>(-1000f, 1000f, 447f, -460f), vec4<f32>(434f, 1549f, 1059f, -858f), vec4<f32>(1157f, 626f, -371f, -1010f), vec4<f32>(1077f, 264f, 534f, -1433f), vec4<f32>(-176f, -1864f, -1694f, -1567f), vec4<f32>(1030f, -1251f, 411f, -1222f), vec4<f32>(1135f, -778f, 434f, -1996f), vec4<f32>(263f, -489f, 1550f, -999f), vec4<f32>(819f, -1547f, 1283f, 293f), vec4<f32>(-392f, 585f, 649f, -871f), vec4<f32>(-273f, 517f, 705f, 664f), vec4<f32>(307f, 1620f, 1480f, 300f), vec4<f32>(-1000f, 447f, 353f, 253f), vec4<f32>(-634f, 277f, -882f, -616f), vec4<f32>(-1000f, 602f, 1838f, -1000f), vec4<f32>(239f, -412f, 2177f, -171f), vec4<f32>(-315f, -1592f, -2220f, 666f), vec4<f32>(1000f, -1000f, 1388f, 765f), vec4<f32>(-1000f, 561f, 788f, -1000f), vec4<f32>(-2334f, 2025f, 120f, -456f), vec4<f32>(600f, 346f, 1380f, -440f), vec4<f32>(-353f, -308f, 298f, -1447f), vec4<f32>(-811f, -180f, -1000f, 463f), vec4<f32>(236f, 259f, -455f, 1797f), vec4<f32>(-468f, 1135f, 594f, 1579f), vec4<f32>(-1000f, 269f, -382f, 850f), vec4<f32>(825f, -1000f, 833f, 695f));

var<private> global2: i32 = 10221i;

var<private> global3: array<u32, 11>;

var<private> global4: array<Struct_5, 31> = array<Struct_5, 31>(Struct_5(i32(-2147483648), Struct_4(948f, true, -36822i, Struct_3(21917i), Struct_1(vec3<u32>(0u, 1u, 0u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 50463u, 0u)), vec4<bool>(false, false, true, true), -755f, vec4<u32>(34195u, 13062u, 1u, 102749u)), Struct_1(vec3<u32>(0u, 62246u, 64283u)), Struct_3(1i)), Struct_5(-31589i, Struct_4(-1358f, false, 1i, Struct_3(-1i), Struct_1(vec3<u32>(22168u, 24023u, 22860u))), Struct_2(Struct_1(vec3<u32>(0u, 17482u, 1u)), vec4<bool>(false, true, true, true), 1000f, vec4<u32>(34761u, 66601u, 1u, 45665u)), Struct_1(vec3<u32>(4294967295u, 28217u, 0u)), Struct_3(2147483647i)), Struct_5(1833i, Struct_4(-403f, false, 1i, Struct_3(759i), Struct_1(vec3<u32>(1u, 4294967295u, 0u))), Struct_2(Struct_1(vec3<u32>(28573u, 4294967295u, 4294967295u)), vec4<bool>(true, true, true, true), 450f, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 47807u)), Struct_1(vec3<u32>(7423u, 1u, 1u)), Struct_3(0i)), Struct_5(-1i, Struct_4(-799f, true, -1i, Struct_3(-25360i), Struct_1(vec3<u32>(32437u, 2376u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(74538u, 98595u, 4294967295u)), vec4<bool>(true, false, true, true), -366f, vec4<u32>(0u, 49519u, 0u, 54354u)), Struct_1(vec3<u32>(4294967295u, 20941u, 8557u)), Struct_3(26507i)), Struct_5(38006i, Struct_4(499f, false, 28146i, Struct_3(i32(-2147483648)), Struct_1(vec3<u32>(25248u, 0u, 0u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 1u)), vec4<bool>(false, false, false, true), 366f, vec4<u32>(34459u, 4294967295u, 4294967295u, 13263u)), Struct_1(vec3<u32>(4294967295u, 10530u, 4294967295u)), Struct_3(0i)), Struct_5(-42721i, Struct_4(1000f, false, -14536i, Struct_3(1i), Struct_1(vec3<u32>(29686u, 1u, 11798u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 22770u, 17287u)), vec4<bool>(true, true, true, false), 863f, vec4<u32>(29924u, 4294967295u, 1u, 14175u)), Struct_1(vec3<u32>(1u, 4294967295u, 1u)), Struct_3(-22676i)), Struct_5(2147483647i, Struct_4(188f, false, 59743i, Struct_3(-42599i), Struct_1(vec3<u32>(0u, 32171u, 72017u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 24725u, 16934u)), vec4<bool>(true, true, true, true), -832f, vec4<u32>(19003u, 0u, 65142u, 3429u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_3(1i)), Struct_5(-1i, Struct_4(262f, true, 2147483647i, Struct_3(-1i), Struct_1(vec3<u32>(1u, 4294967295u, 43898u))), Struct_2(Struct_1(vec3<u32>(0u, 0u, 1u)), vec4<bool>(false, false, false, false), 1000f, vec4<u32>(53672u, 1u, 1094u, 34386u)), Struct_1(vec3<u32>(0u, 1u, 0u)), Struct_3(71658i)), Struct_5(-1i, Struct_4(492f, true, -40715i, Struct_3(5144i), Struct_1(vec3<u32>(0u, 28041u, 2358u))), Struct_2(Struct_1(vec3<u32>(28505u, 0u, 30719u)), vec4<bool>(false, false, true, false), 575f, vec4<u32>(4294967295u, 1u, 35705u, 9021u)), Struct_1(vec3<u32>(1u, 129792u, 18138u)), Struct_3(-42634i)), Struct_5(55408i, Struct_4(-876f, false, 2147483647i, Struct_3(i32(-2147483648)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 82054u))), Struct_2(Struct_1(vec3<u32>(12295u, 4294967295u, 87135u)), vec4<bool>(true, false, true, false), 1000f, vec4<u32>(25309u, 0u, 0u, 28426u)), Struct_1(vec3<u32>(4477u, 4294967295u, 4294967295u)), Struct_3(-14159i)), Struct_5(22083i, Struct_4(867f, true, -1i, Struct_3(-51008i), Struct_1(vec3<u32>(13246u, 0u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(31582u, 68484u, 13669u)), vec4<bool>(false, false, true, true), -748f, vec4<u32>(4294967295u, 885u, 27582u, 53342u)), Struct_1(vec3<u32>(0u, 3286u, 18144u)), Struct_3(1i)), Struct_5(40004i, Struct_4(319f, false, -23499i, Struct_3(1i), Struct_1(vec3<u32>(4294967295u, 1u, 25642u))), Struct_2(Struct_1(vec3<u32>(27093u, 26866u, 22992u)), vec4<bool>(true, true, true, true), -853f, vec4<u32>(43296u, 40072u, 1u, 4294967295u)), Struct_1(vec3<u32>(66764u, 1u, 0u)), Struct_3(-1i)), Struct_5(1i, Struct_4(1133f, true, 0i, Struct_3(4159i), Struct_1(vec3<u32>(4294967295u, 138433u, 41976u))), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 1u)), vec4<bool>(true, false, true, false), -188f, vec4<u32>(20215u, 58814u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_3(-21404i)), Struct_5(52411i, Struct_4(-505f, true, 1i, Struct_3(i32(-2147483648)), Struct_1(vec3<u32>(1u, 61507u, 46474u))), Struct_2(Struct_1(vec3<u32>(48022u, 37161u, 38946u)), vec4<bool>(false, false, false, true), -883f, vec4<u32>(4294967295u, 5640u, 4294967295u, 17154u)), Struct_1(vec3<u32>(0u, 1u, 1u)), Struct_3(-22969i)), Struct_5(2147483647i, Struct_4(675f, true, -1i, Struct_3(18757i), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u)), vec4<bool>(false, true, false, false), 325f, vec4<u32>(11351u, 1u, 39449u, 1u)), Struct_1(vec3<u32>(1u, 108395u, 1u)), Struct_3(i32(-2147483648))), Struct_5(-1i, Struct_4(183f, false, 1i, Struct_3(31961i), Struct_1(vec3<u32>(91110u, 0u, 37673u))), Struct_2(Struct_1(vec3<u32>(16065u, 7738u, 0u)), vec4<bool>(true, false, true, true), 785f, vec4<u32>(4294967295u, 0u, 0u, 0u)), Struct_1(vec3<u32>(4294967295u, 0u, 18894u)), Struct_3(7686i)), Struct_5(0i, Struct_4(861f, false, 29292i, Struct_3(16228i), Struct_1(vec3<u32>(0u, 9204u, 0u))), Struct_2(Struct_1(vec3<u32>(9413u, 52028u, 0u)), vec4<bool>(false, false, false, true), 225f, vec4<u32>(47355u, 12870u, 4294967295u, 30241u)), Struct_1(vec3<u32>(1u, 79668u, 69678u)), Struct_3(2147483647i)), Struct_5(i32(-2147483648), Struct_4(-348f, false, 1i, Struct_3(2147483647i), Struct_1(vec3<u32>(0u, 4294967295u, 17824u))), Struct_2(Struct_1(vec3<u32>(12213u, 7551u, 4294967295u)), vec4<bool>(false, true, false, false), -107f, vec4<u32>(15672u, 1u, 10356u, 115190u)), Struct_1(vec3<u32>(19109u, 51317u, 62824u)), Struct_3(1i)), Struct_5(-1i, Struct_4(-1000f, false, 2147483647i, Struct_3(31794i), Struct_1(vec3<u32>(4294967295u, 1u, 1u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 1u, 0u)), vec4<bool>(false, false, false, true), -1634f, vec4<u32>(4294967295u, 0u, 13470u, 21737u)), Struct_1(vec3<u32>(4294967295u, 0u, 0u)), Struct_3(1i)), Struct_5(-59108i, Struct_4(397f, false, 37254i, Struct_3(91940i), Struct_1(vec3<u32>(4294967295u, 33876u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(0u, 56338u, 39556u)), vec4<bool>(true, false, false, true), 461f, vec4<u32>(1u, 0u, 25714u, 0u)), Struct_1(vec3<u32>(0u, 123260u, 4294967295u)), Struct_3(2147483647i)), Struct_5(-44978i, Struct_4(-2089f, true, 19587i, Struct_3(26203i), Struct_1(vec3<u32>(0u, 0u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(62405u, 11025u, 0u)), vec4<bool>(true, false, false, false), -367f, vec4<u32>(3096u, 1u, 44788u, 4294967295u)), Struct_1(vec3<u32>(38095u, 1u, 24386u)), Struct_3(0i)), Struct_5(-11228i, Struct_4(-1098f, false, 0i, Struct_3(1i), Struct_1(vec3<u32>(53337u, 0u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(1u, 62651u, 4294967295u)), vec4<bool>(true, true, true, false), -1058f, vec4<u32>(1u, 0u, 1u, 4294967295u)), Struct_1(vec3<u32>(1u, 71859u, 4294967295u)), Struct_3(22647i)), Struct_5(i32(-2147483648), Struct_4(-925f, true, 2147483647i, Struct_3(-12236i), Struct_1(vec3<u32>(59655u, 50150u, 62789u))), Struct_2(Struct_1(vec3<u32>(92617u, 1u, 54431u)), vec4<bool>(false, false, true, false), 204f, vec4<u32>(4294967295u, 0u, 1u, 18909u)), Struct_1(vec3<u32>(51063u, 0u, 50424u)), Struct_3(2147483647i)), Struct_5(-19081i, Struct_4(-447f, false, 36300i, Struct_3(-1i), Struct_1(vec3<u32>(44356u, 21714u, 77u))), Struct_2(Struct_1(vec3<u32>(0u, 5071u, 53759u)), vec4<bool>(false, true, false, false), 1350f, vec4<u32>(2445u, 56622u, 1u, 26334u)), Struct_1(vec3<u32>(23116u, 63279u, 4294967295u)), Struct_3(-21947i)), Struct_5(0i, Struct_4(-495f, false, -1i, Struct_3(1i), Struct_1(vec3<u32>(0u, 73272u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(78326u, 47509u, 2401u)), vec4<bool>(true, false, true, true), -1097f, vec4<u32>(43432u, 34838u, 29821u, 56855u)), Struct_1(vec3<u32>(4294967295u, 38160u, 1u)), Struct_3(i32(-2147483648))), Struct_5(0i, Struct_4(141f, false, 2147483647i, Struct_3(-67086i), Struct_1(vec3<u32>(69042u, 1u, 26303u))), Struct_2(Struct_1(vec3<u32>(22092u, 78977u, 2799u)), vec4<bool>(false, true, false, false), -383f, vec4<u32>(0u, 31342u, 4294967295u, 5361u)), Struct_1(vec3<u32>(0u, 49808u, 0u)), Struct_3(7950i)), Struct_5(-33857i, Struct_4(378f, true, -1019i, Struct_3(-71230i), Struct_1(vec3<u32>(4294967295u, 0u, 1u))), Struct_2(Struct_1(vec3<u32>(0u, 0u, 7645u)), vec4<bool>(true, true, false, false), 532f, vec4<u32>(116518u, 32830u, 0u, 1u)), Struct_1(vec3<u32>(30871u, 1u, 66108u)), Struct_3(i32(-2147483648))), Struct_5(-1i, Struct_4(1517f, true, 1i, Struct_3(17161i), Struct_1(vec3<u32>(4294967295u, 13047u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 35456u)), vec4<bool>(true, false, false, false), -1499f, vec4<u32>(4294967295u, 1u, 62425u, 17331u)), Struct_1(vec3<u32>(4294967295u, 40277u, 33977u)), Struct_3(25622i)), Struct_5(1i, Struct_4(861f, false, 96864i, Struct_3(2147483647i), Struct_1(vec3<u32>(79272u, 53496u, 3866u))), Struct_2(Struct_1(vec3<u32>(65980u, 0u, 4294967295u)), vec4<bool>(true, true, false, true), 315f, vec4<u32>(23180u, 16301u, 4294967295u, 1u)), Struct_1(vec3<u32>(47567u, 1u, 2873u)), Struct_3(-15914i)), Struct_5(20671i, Struct_4(-488f, false, 12334i, Struct_3(0i), Struct_1(vec3<u32>(56663u, 4294967295u, 34563u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 17673u, 17424u)), vec4<bool>(false, true, false, true), -1355f, vec4<u32>(5467u, 28083u, 0u, 1u)), Struct_1(vec3<u32>(4294967295u, 1u, 44120u)), Struct_3(i32(-2147483648))), Struct_5(-22537i, Struct_4(-824f, false, 2147483647i, Struct_3(-18956i), Struct_1(vec3<u32>(15106u, 20466u, 46329u))), Struct_2(Struct_1(vec3<u32>(14684u, 34198u, 69320u)), vec4<bool>(false, true, true, false), 745f, vec4<u32>(2077u, 4294967295u, 4294967295u, 5764u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_3(8616i)));

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    global0 = vec4<i32>(dot(vec3<i32>(-(u_input.a.x * u_input.a.x), -27223i, u_input.a.x / 2147483647i), global0.xzx), arg_0.a, arg_0.a, u_input.a.x);
    var var_0 = arg_3.a.x;
    let var_1 = Struct_2(arg_3, vec4<bool>(any(vec4<bool>(0u == arg_2.x, true, arg_0.a < 1i, false)), true && !(true & true), !true, !(false || false) || !any(vec2<bool>(true, true))), -(sign(round(699f)) * 1891f), ~(max(clamp(vec4<u32>(arg_2.x, global3[global3[arg_3.a.x]], arg_2.x, arg_2.x), arg_2, arg_2), arg_2) << arg_2));
    global0 = -(-vec4<i32>(global0.x >> global3[global3[arg_3.a.x]], -arg_0.a, 31627i | arg_0.a, u_input.a.x) >> var_1.d);
    var var_2 = vec4<f32>(1646f, arg_1 + arg_1, -select(-arg_1, abs(var_1.c) * 1000f, false), -(-(var_1.c + -437f)));
    return 2147483647i;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_5) -> bool {
    let var_0 = arg_1;
    var var_1 = (~((arg_2 ^ vec4<i32>(arg_2.x, u_input.a.x, global0.x, 8185i)) + arg_2) + -select(vec4<i32>(2147483647i, 2147483647i, -191i, 8715i), countOneBits(arg_2), false)) - vec4<i32>(reverseBits((arg_3.a ^ var_0.a) & arg_3.a), ((global0.x * var_0.a) | ~arg_1.a) - (0i / dot(arg_2, vec4<i32>(u_input.a.x, arg_0.d.a, arg_2.x, u_input.a.x))), global0.x, select(arg_3.e.a % -global0.x, -3563i, arg_0.a <= -arg_3.c.c));
    let var_2 = ~global3[arg_0.e.a.x];
    global4 = array<Struct_5, 31>();
    let var_3 = -(arg_0.a / 659f);
    return !false;
}

fn func_2() -> Struct_3 {
    var var_0 = func_4(Struct_4(-(-1093f) + (ceil(416f) * 1317f), true, min(6153i, u_input.a.x), Struct_3(func_3(Struct_3(u_input.a.x), select(988f, -1116f, false), vec4<u32>(global3[global3[25200u]], 0u, global3[54489u], global3[global3[global3[0u]]]), Struct_1(vec3<u32>(30081u, 4294967295u, global3[global3[1u]])))), Struct_1(~reverseBits(vec3<u32>(1u, 0u, global3[120u])))), Struct_3(global0.x), vec4<i32>(select(max(~global0.x, -3545i), 3701i, !(!false)), i32(-2147483648) & ((u_input.a.x / 7956i) * -1i), u_input.a.x & dot(vec2<i32>(global0.x, 31517i) * global0.zx, u_input.a), -1i % reverseBits(0i)), global4[select(global3[24092u], select(4294967295u, dot(vec4<u32>(global3[10591u], global3[43073u], global3[1u], 46534u) + vec4<u32>(global3[107404u], global3[global3[15063u]], 78855u, 29u), vec4<u32>(global3[global3[4294967295u]], global3[24770u], 30114u, 4294967295u) & vec4<u32>(global3[3391u], 0u, 27349u, global3[12905u])), !any(vec2<bool>(true, false))), !((-209f - 497f) < ceil(1000f)))]);
    let var_1 = Struct_1(reverseBits(~vec3<u32>(16388u, global3[0u % 70722u], global3[83940u])));
    global2 = countOneBits(~u_input.a.x);
    let var_2 = select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), !(!vec2<bool>(false, true)), true), vec2<bool>(select(true, false && false, !false), all(vec4<bool>(true, true, true, false)) == !false), !(!all(vec2<bool>(false, false)))), select(!(!(!vec2<bool>(true, true))), select(vec2<bool>(true, !true), vec2<bool>(any(vec2<bool>(false, true)), all(vec2<bool>(true, true))), vec2<bool>(4294967295u >= 1u, !false)), !all(vec3<bool>(true, false, false))), !select(!vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true), false), false));
    var var_3 = ~var_1.a.x;
    return Struct_3(global0.x);
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>) -> i32 {
    var var_0 = Struct_1(vec3<u32>(~93101u, ~dot(vec2<u32>(1u, arg_2.x), arg_2.yy) % global3[global3[~52040u] % arg_2.x], ~(firstTrailingBit(4294967295u) << dot(arg_2, arg_2))));
    var_0 = Struct_1(~vec3<u32>(arg_2.x, reverseBits(2809u - var_0.a.x), 0u));
    var var_1 = vec4<u32>(0u >> arg_2.x, ~var_0.a.x, countOneBits(~global3[global3[0u]]), global3[arg_2.x]);
    var var_2 = Struct_4(1181f, any(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), !vec3<bool>(false, true, true), !all(vec3<bool>(true, true, true)))), u_input.a.x, Struct_3(u_input.a.x), Struct_1(firstLeadingBit(vec3<u32>(var_1.x, var_1.x, 75370u) | (vec3<u32>(var_1.x, 1u, global3[var_0.a.x]) + vec3<u32>(global3[17473u], global3[global3[var_0.a.x]], 49084u)))));
    let var_3 = var_2.a;
    return arg_1.a;
}

fn func_1() -> i32 {
    global3 = array<u32, 11>();
    let var_0 = -firstLeadingBit(global0.yxy % select(-global0.zwy, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), select(false, true, true)));
    let var_1 = (-1162f / -(-1370f)) * trunc(120f);
    var var_2 = abs(vec3<i32>(var_0.x, 1i, -func_5(abs(i32(-2147483648)), func_2(), ~vec3<u32>(global3[4294967295u], global3[global3[global3[77022u]]], global3[83825u]))));
    let var_3 = Struct_2(Struct_1(clamp(vec3<u32>(global3[52314u], 59798u, 11601u) >> vec3<u32>(1u, global3[global3[2384u]], global3[92745u]), select(vec3<u32>(global3[global3[1u]], global3[4294967295u], 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<bool>(true, true, true)), vec3<u32>(global3[global3[1u]], global3[17405u], 3940u)) * vec3<u32>(1u, 4294967295u, global3[~global3[122649u]])), vec4<bool>(func_4(Struct_4(-1000f, true, global0.x, Struct_3(u_input.a.x), Struct_1(vec3<u32>(global3[global3[9068u]], global3[global3[1u]], global3[global3[74852u]]))), func_2(), vec4<i32>(global0.x, 2147483647i, var_2.x, -1i) >> vec4<u32>(13323u, 26580u, global3[global3[global3[global3[global3[30346u]]]]], global3[global3[global3[global3[2506u]]]]), global4[4294967295u]) & !any(vec4<bool>(false, true, true, false)), all(!vec4<bool>(false, false, true, true)), true, true), -((-141f * -1627f) * ((var_1 * 260f) - var_1)), min(~(~vec4<u32>(53762u, global3[3815u], 1u, 23372u)) >> (~vec4<u32>(global3[0u], 3370u, global3[444u], global3[global3[1u]]) - ~vec4<u32>(45558u, global3[4294967295u], global3[27541u], global3[0u])), ~(vec4<u32>(global3[46990u], global3[global3[4294967295u]], global3[global3[0u]], 47613u) + vec4<u32>(global3[4294967295u], 0u, global3[24034u], 0u)) % ~vec4<u32>(global3[70187u], 0u, 1u, 5657u)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(firstLeadingBit(vec4<i32>(-1i, 6160i, 1i, global0.x) + vec4<i32>(global0.x, i32(-2147483648), u_input.a.x, u_input.a.x)) >> vec4<u32>(1u, 41709u, min(global3[global3[global3[global3[global3[global3[global3[global3[global3[82391u]]]]]]]]], global3[50493u]), firstTrailingBit(global3[0u])), (countOneBits(vec4<i32>(global0.x, u_input.a.x, u_input.a.x, global0.x)) / (vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<i32>(global0.x, 53457i, u_input.a.x, global0.x))) | vec4<i32>(firstLeadingBit(u_input.a.x), -36336i - 0i, u_input.a.x + -68531i, global0.x >> 4294967295u)) / ~vec4<i32>(func_1(), 0i, -(0i | u_input.a.x), u_input.a.x);
    var var_1 = Struct_1(~((vec3<u32>(4294967295u, global3[global3[18453u]], global3[global3[global3[50517u]]]) - vec3<u32>(4294967295u, 0u, global3[56420u])) << (vec3<u32>(global3[63790u], 0u, global3[4294967295u]) << vec3<u32>(63213u, global3[83671u], 96620u))) >> abs(~(vec3<u32>(global3[12174u], global3[15524u], global3[global3[global3[1u]]]) ^ vec3<u32>(global3[1u], global3[global3[global3[global3[1u]]]], global3[1u]))));
    global0 = select(~countOneBits(firstLeadingBit(min(var_0, vec4<i32>(global0.x, u_input.a.x, -42824i, -5850i)))), -vec4<i32>(global0.x, var_0.x, abs(47666i & u_input.a.x), var_0.x - u_input.a.x), vec4<bool>(!false, !all(vec3<bool>(true, true, false)), (true || !false) & true, false));
    let var_2 = Struct_2(Struct_1(vec3<u32>(min(11243u, global3[global3[var_1.a.x]]) + countOneBits(var_1.a.x), 1u, 41369u)), select(select(!(!vec4<bool>(true, false, true, false)), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, false, true), all(vec4<bool>(false, false, true, true))), true), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(16165i < var_0.x, all(vec4<bool>(true, true, true, false)), !false, all(vec4<bool>(false, true, true, false))), vec4<bool>(!true, 2517f <= -157f, false, all(vec4<bool>(true, true, true, true)))), !((461f * 528f) <= 240f)), -sign(-533f), countOneBits(~vec4<u32>(~var_1.a.x, global3[var_1.a.x], ~var_1.a.x, global3[0u ^ global3[14837u]])));
    var var_3 = ~var_2.d.xz;
    global0 = vec4<i32>(2147483647i, -1i, global0.x, -36736i | global0.x);
    let var_4 = -48509i;
    global2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(7555u, dot(var_1.a, var_2.a.a), 4294967295u >> ((var_2.a.a.x * var_3.x) % abs(var_3.x))));
}

