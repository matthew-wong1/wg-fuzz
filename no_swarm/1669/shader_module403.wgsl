struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec4<bool>(true, true, false, true), vec3<bool>(true, true, true), vec3<f32>(-1000f, -1156f, -2530f), Struct_1(305f, vec3<f32>(-125f, -570f, 1000f), vec4<u32>(2032u, 8411u, 18793u, 1u), vec4<bool>(true, false, true, true), vec2<i32>(1i, 0i))), Struct_2(vec4<bool>(false, false, true, false), vec3<bool>(true, false, false), vec3<f32>(355f, 495f, 1181f), Struct_1(1161f, vec3<f32>(-1000f, -1040f, -368f), vec4<u32>(66417u, 104933u, 35375u, 28340u), vec4<bool>(true, false, false, false), vec2<i32>(-1i, -1i))), Struct_2(vec4<bool>(true, false, false, true), vec3<bool>(false, true, false), vec3<f32>(-1157f, -1054f, -1452f), Struct_1(-614f, vec3<f32>(-962f, 269f, 1520f), vec4<u32>(30523u, 19399u, 1u, 7579u), vec4<bool>(false, true, true, true), vec2<i32>(1i, 1i))), Struct_2(vec4<bool>(false, true, true, true), vec3<bool>(false, true, true), vec3<f32>(757f, 1550f, 268f), Struct_1(-132f, vec3<f32>(463f, -132f, -384f), vec4<u32>(8490u, 1u, 4294967295u, 77160u), vec4<bool>(false, false, true, true), vec2<i32>(2147483647i, 26529i))), Struct_2(vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), vec3<f32>(968f, -371f, 1598f), Struct_1(313f, vec3<f32>(-427f, -1000f, -1652f), vec4<u32>(1u, 84796u, 0u, 4294967295u), vec4<bool>(true, true, true, true), vec2<i32>(-1i, 1i))));

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(Struct_2(vec4<bool>(true, false, true, true), vec3<bool>(true, true, false), vec3<f32>(282f, 1000f, -1150f), Struct_1(-578f, vec3<f32>(-2563f, 726f, 596f), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<bool>(true, false, true, true), vec2<i32>(i32(-2147483648), 43760i))), vec3<i32>(1i, i32(-2147483648), 1i), Struct_1(-223f, vec3<f32>(-594f, -1000f, 1174f), vec4<u32>(36808u, 0u, 25035u, 4832u), vec4<bool>(false, true, true, true), vec2<i32>(-1i, 3448i)), -1i, vec2<i32>(-1i, -63049i)), Struct_3(Struct_2(vec4<bool>(true, true, true, true), vec3<bool>(true, false, false), vec3<f32>(1664f, 1610f, -129f), Struct_1(1000f, vec3<f32>(1000f, 1203f, -1310f), vec4<u32>(39927u, 8471u, 55132u, 1u), vec4<bool>(true, false, true, true), vec2<i32>(27310i, i32(-2147483648)))), vec3<i32>(i32(-2147483648), -32851i, 7638i), Struct_1(-587f, vec3<f32>(-1000f, -564f, 868f), vec4<u32>(42018u, 1393u, 4294967295u, 12591u), vec4<bool>(true, false, true, true), vec2<i32>(-22472i, -47498i)), i32(-2147483648), vec2<i32>(1i, 39397i)), Struct_3(Struct_2(vec4<bool>(true, true, true, false), vec3<bool>(true, false, false), vec3<f32>(360f, -1746f, 240f), Struct_1(388f, vec3<f32>(-683f, -313f, 1364f), vec4<u32>(26225u, 5372u, 4294967295u, 0u), vec4<bool>(true, false, false, false), vec2<i32>(47078i, 1i))), vec3<i32>(-2621i, -9206i, -51614i), Struct_1(321f, vec3<f32>(-2511f, 446f, 720f), vec4<u32>(1517u, 4294967295u, 4294967295u, 1u), vec4<bool>(false, true, false, true), vec2<i32>(1i, -27318i)), -48120i, vec2<i32>(-17458i, i32(-2147483648))), Struct_3(Struct_2(vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), vec3<f32>(-1000f, -886f, 469f), Struct_1(1467f, vec3<f32>(-809f, 1000f, 480f), vec4<u32>(221u, 109515u, 62135u, 4294967295u), vec4<bool>(true, false, true, false), vec2<i32>(1i, -73718i))), vec3<i32>(75931i, 21734i, i32(-2147483648)), Struct_1(-1000f, vec3<f32>(-2773f, 142f, -778f), vec4<u32>(14644u, 1u, 79283u, 14684u), vec4<bool>(true, true, true, false), vec2<i32>(-42051i, -9962i)), -1i, vec2<i32>(-1i, 1i)), Struct_3(Struct_2(vec4<bool>(false, true, false, false), vec3<bool>(false, false, true), vec3<f32>(397f, 1030f, 330f), Struct_1(681f, vec3<f32>(775f, 1000f, 791f), vec4<u32>(13496u, 43628u, 4294967295u, 3044u), vec4<bool>(false, false, false, false), vec2<i32>(1i, -87192i))), vec3<i32>(20391i, 43745i, -13422i), Struct_1(816f, vec3<f32>(-3141f, 1000f, -632f), vec4<u32>(15527u, 1u, 4294967295u, 10653u), vec4<bool>(false, false, false, true), vec2<i32>(2147483647i, 41603i)), 25967i, vec2<i32>(-10678i, -28558i)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), vec3<bool>(false, true, true), vec3<f32>(640f, -1000f, -694f), Struct_1(-182f, vec3<f32>(-865f, 1827f, -1048f), vec4<u32>(4294967295u, 59688u, 0u, 47263u), vec4<bool>(true, true, true, true), vec2<i32>(23073i, -3418i))), vec3<i32>(i32(-2147483648), 2147483647i, -1i), Struct_1(993f, vec3<f32>(1000f, 956f, -677f), vec4<u32>(72370u, 71881u, 16663u, 5046u), vec4<bool>(false, false, true, true), vec2<i32>(-14235i, 39834i)), 0i, vec2<i32>(1i, -22276i)), Struct_3(Struct_2(vec4<bool>(false, true, false, true), vec3<bool>(false, true, true), vec3<f32>(1000f, -1600f, -913f), Struct_1(1000f, vec3<f32>(-807f, -365f, 333f), vec4<u32>(0u, 22813u, 0u, 53673u), vec4<bool>(true, true, false, true), vec2<i32>(39973i, -22506i))), vec3<i32>(-31890i, i32(-2147483648), 1i), Struct_1(-197f, vec3<f32>(-123f, 596f, -1045f), vec4<u32>(90505u, 5346u, 1u, 4294967295u), vec4<bool>(true, true, false, true), vec2<i32>(i32(-2147483648), -1i)), -1i, vec2<i32>(-30953i, 2147483647i)), Struct_3(Struct_2(vec4<bool>(true, true, false, true), vec3<bool>(false, false, false), vec3<f32>(722f, 1118f, -539f), Struct_1(1000f, vec3<f32>(850f, -1734f, 787f), vec4<u32>(4294967295u, 29057u, 20730u, 4294967295u), vec4<bool>(false, false, true, true), vec2<i32>(43230i, i32(-2147483648)))), vec3<i32>(-1i, 15958i, i32(-2147483648)), Struct_1(219f, vec3<f32>(139f, 1000f, 2602f), vec4<u32>(1u, 44890u, 0u, 38278u), vec4<bool>(false, false, false, false), vec2<i32>(57469i, -21034i)), 75366i, vec2<i32>(29189i, 60255i)), Struct_3(Struct_2(vec4<bool>(false, false, false, true), vec3<bool>(false, true, false), vec3<f32>(-1000f, 1067f, -973f), Struct_1(-1206f, vec3<f32>(885f, 903f, -948f), vec4<u32>(33626u, 0u, 8769u, 1u), vec4<bool>(false, true, true, true), vec2<i32>(0i, 27576i))), vec3<i32>(-9321i, 57468i, -34197i), Struct_1(130f, vec3<f32>(1000f, -2690f, 508f), vec4<u32>(61741u, 1u, 41250u, 4294967295u), vec4<bool>(true, true, true, false), vec2<i32>(-2098i, 58955i)), -1i, vec2<i32>(-872i, 3366i)), Struct_3(Struct_2(vec4<bool>(true, true, false, false), vec3<bool>(false, false, true), vec3<f32>(1000f, 1057f, -303f), Struct_1(799f, vec3<f32>(-1036f, -1599f, 1863f), vec4<u32>(0u, 19629u, 1u, 0u), vec4<bool>(false, false, false, false), vec2<i32>(1i, -19149i))), vec3<i32>(-9204i, 0i, -34698i), Struct_1(1792f, vec3<f32>(1542f, -1000f, -855f), vec4<u32>(41398u, 1u, 23529u, 0u), vec4<bool>(true, true, false, true), vec2<i32>(-30461i, -32981i)), 2147483647i, vec2<i32>(2147483647i, -1i)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), vec3<bool>(false, false, true), vec3<f32>(611f, 1270f, 727f), Struct_1(313f, vec3<f32>(1662f, -1421f, 558f), vec4<u32>(4294967295u, 0u, 4294967295u, 9845u), vec4<bool>(false, true, true, false), vec2<i32>(2147483647i, 23340i))), vec3<i32>(i32(-2147483648), 14321i, -6790i), Struct_1(1259f, vec3<f32>(-833f, 481f, 1000f), vec4<u32>(59256u, 47651u, 41464u, 0u), vec4<bool>(false, false, true, true), vec2<i32>(1i, 3794i)), 9720i, vec2<i32>(-1i, i32(-2147483648))), Struct_3(Struct_2(vec4<bool>(true, true, true, true), vec3<bool>(true, true, false), vec3<f32>(593f, 273f, 274f), Struct_1(-1000f, vec3<f32>(751f, -1663f, 1105f), vec4<u32>(36997u, 0u, 7405u, 29308u), vec4<bool>(true, true, false, false), vec2<i32>(-24115i, -26633i))), vec3<i32>(0i, -1i, 2032i), Struct_1(-692f, vec3<f32>(635f, 719f, -1000f), vec4<u32>(24200u, 0u, 27849u, 0u), vec4<bool>(true, true, true, true), vec2<i32>(-16306i, 2147483647i)), i32(-2147483648), vec2<i32>(1i, 6501i)), Struct_3(Struct_2(vec4<bool>(true, false, true, false), vec3<bool>(false, false, false), vec3<f32>(180f, 406f, 860f), Struct_1(-1065f, vec3<f32>(-861f, -423f, 238f), vec4<u32>(4294967295u, 61277u, 1u, 48348u), vec4<bool>(true, true, true, true), vec2<i32>(5693i, 2147483647i))), vec3<i32>(16429i, 0i, 2147483647i), Struct_1(210f, vec3<f32>(973f, 494f, 743f), vec4<u32>(4294967295u, 39969u, 1u, 22253u), vec4<bool>(true, false, true, false), vec2<i32>(0i, 2147483647i)), -8709i, vec2<i32>(i32(-2147483648), -19800i)), Struct_3(Struct_2(vec4<bool>(true, true, false, false), vec3<bool>(false, true, false), vec3<f32>(1013f, -1000f, -371f), Struct_1(-1000f, vec3<f32>(-1538f, 864f, 534f), vec4<u32>(1u, 0u, 55189u, 0u), vec4<bool>(true, true, true, true), vec2<i32>(-532i, -19063i))), vec3<i32>(-3098i, 40984i, 21766i), Struct_1(-2049f, vec3<f32>(718f, 1363f, -1026f), vec4<u32>(46570u, 46350u, 65381u, 7328u), vec4<bool>(false, true, true, true), vec2<i32>(-32776i, 8014i)), 2147483647i, vec2<i32>(47398i, -7072i)), Struct_3(Struct_2(vec4<bool>(false, true, true, true), vec3<bool>(true, true, false), vec3<f32>(1000f, 1048f, 189f), Struct_1(-640f, vec3<f32>(-791f, -498f, -708f), vec4<u32>(88561u, 1u, 65038u, 43920u), vec4<bool>(true, true, true, true), vec2<i32>(48149i, 1i))), vec3<i32>(12327i, -21049i, 15273i), Struct_1(546f, vec3<f32>(-798f, -1171f, -1025f), vec4<u32>(1u, 1u, 4294967295u, 4294967295u), vec4<bool>(true, false, false, true), vec2<i32>(i32(-2147483648), -1i)), 13529i, vec2<i32>(i32(-2147483648), 2147483647i)), Struct_3(Struct_2(vec4<bool>(true, false, false, false), vec3<bool>(true, true, true), vec3<f32>(719f, -247f, 219f), Struct_1(139f, vec3<f32>(476f, 970f, -230f), vec4<u32>(1u, 0u, 43882u, 0u), vec4<bool>(true, false, false, true), vec2<i32>(0i, 1i))), vec3<i32>(37941i, i32(-2147483648), -9572i), Struct_1(-624f, vec3<f32>(1553f, -1486f, 740f), vec4<u32>(4294967295u, 74297u, 87674u, 98374u), vec4<bool>(true, false, false, true), vec2<i32>(i32(-2147483648), -38606i)), 0i, vec2<i32>(60455i, 0i)), Struct_3(Struct_2(vec4<bool>(true, true, false, false), vec3<bool>(true, false, false), vec3<f32>(1000f, -470f, -1000f), Struct_1(-1322f, vec3<f32>(430f, -142f, -125f), vec4<u32>(14298u, 1u, 1u, 690u), vec4<bool>(true, true, true, true), vec2<i32>(i32(-2147483648), -36744i))), vec3<i32>(-43822i, 51744i, -26098i), Struct_1(-1672f, vec3<f32>(687f, 2054f, -769f), vec4<u32>(4294967295u, 81615u, 46603u, 20318u), vec4<bool>(false, true, true, false), vec2<i32>(2147483647i, 1i)), 0i, vec2<i32>(13453i, 2147483647i)), Struct_3(Struct_2(vec4<bool>(false, false, true, true), vec3<bool>(true, true, true), vec3<f32>(-1724f, -938f, 736f), Struct_1(-902f, vec3<f32>(325f, -119f, -459f), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<bool>(true, true, false, false), vec2<i32>(-46976i, 2147483647i))), vec3<i32>(4032i, 1i, -18232i), Struct_1(-1524f, vec3<f32>(-386f, -531f, 280f), vec4<u32>(43136u, 4294967295u, 0u, 61967u), vec4<bool>(true, false, true, false), vec2<i32>(0i, 2147483647i)), 20755i, vec2<i32>(0i, 1i)), Struct_3(Struct_2(vec4<bool>(false, false, true, true), vec3<bool>(true, true, false), vec3<f32>(-324f, -2836f, 1242f), Struct_1(1354f, vec3<f32>(-1337f, -476f, -785f), vec4<u32>(0u, 1u, 38722u, 0u), vec4<bool>(false, false, true, true), vec2<i32>(i32(-2147483648), i32(-2147483648)))), vec3<i32>(59626i, -1i, 27423i), Struct_1(-937f, vec3<f32>(-283f, 1000f, 355f), vec4<u32>(6782u, 1u, 91u, 1259u), vec4<bool>(true, true, true, false), vec2<i32>(-22464i, 16007i)), 5516i, vec2<i32>(-1i, -8505i)), Struct_3(Struct_2(vec4<bool>(true, false, true, true), vec3<bool>(false, false, true), vec3<f32>(863f, 738f, 836f), Struct_1(402f, vec3<f32>(-915f, -744f, 786f), vec4<u32>(17410u, 110883u, 1u, 1599u), vec4<bool>(false, true, true, false), vec2<i32>(-22237i, 0i))), vec3<i32>(0i, -41128i, 1i), Struct_1(-443f, vec3<f32>(513f, -1239f, 1440f), vec4<u32>(37514u, 44827u, 1u, 4476u), vec4<bool>(true, false, true, false), vec2<i32>(2147483647i, -1i)), -25221i, vec2<i32>(0i, 2895i)), Struct_3(Struct_2(vec4<bool>(false, false, true, true), vec3<bool>(true, false, false), vec3<f32>(2040f, -1000f, -1006f), Struct_1(-1445f, vec3<f32>(1751f, -1871f, -641f), vec4<u32>(4294967295u, 44718u, 33957u, 0u), vec4<bool>(false, false, false, false), vec2<i32>(0i, i32(-2147483648)))), vec3<i32>(-1i, -30786i, 2147483647i), Struct_1(1200f, vec3<f32>(392f, -882f, 1000f), vec4<u32>(46427u, 19011u, 1u, 1u), vec4<bool>(true, true, true, true), vec2<i32>(-23473i, 0i)), 16152i, vec2<i32>(8941i, 14320i)));

var<private> global3: Struct_2 = Struct_2(vec4<bool>(false, false, true, false), vec3<bool>(false, false, true), vec3<f32>(-790f, -712f, 376f), Struct_1(2359f, vec3<f32>(541f, -1040f, 641f), vec4<u32>(7355u, 48309u, 13606u, 56291u), vec4<bool>(true, true, true, false), vec2<i32>(2147483647i, i32(-2147483648))));

var<private> global4: array<i32, 17>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> u32 {
    return ~(u_input.b.x & _wgslsmith_add_u32(min(u_input.a.x, _wgslsmith_mult_u32(74064u, 0u)), _wgslsmith_mult_u32(abs(24427u), global1.x)));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec2<u32> {
    global3 = global0[_wgslsmith_index_u32(1u, 5u)];
    global2 = array<Struct_3, 21>();
    var var_0 = vec4<u32>(global3.d.c.x & 0u, 81932u, ~_wgslsmith_add_u32(global1.x ^ func_3(global3.d.d.x), global1.x), _wgslsmith_mod_u32(abs(22007u), u_input.a.x));
    global1 = ~vec2<u32>(_wgslsmith_div_u32(~(arg_1.x << (arg_1.x % 32u)), ~2859u), _wgslsmith_add_u32(~arg_1.x, 4294967295u));
    let var_1 = global2[_wgslsmith_index_u32(countOneBits(global3.d.c.x), 21u)];
    return vec2<u32>(_wgslsmith_dot_vec3_u32(arg_1 >> (~vec3<u32>(1275u, global1.x, 19374u) % vec3<u32>(32u)), arg_1), _wgslsmith_dot_vec4_u32(~abs(~u_input.a), var_1.c.c));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec4<u32>) -> i32 {
    global2 = array<Struct_3, 21>();
    var var_0 = 1u;
    global1 = ~(~((max(global3.d.c.ww, vec2<u32>(arg_2.a.d.c.x, 0u)) >> (select(vec2<u32>(1u, global1.x), vec2<u32>(global3.d.c.x, 1u), vec2<bool>(true, global3.a.x)) % vec2<u32>(32u))) | _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(arg_2.c.c.x, 56915u)), func_2(-1703f, vec3<u32>(global1.x, arg_3.x, arg_3.x), Struct_1(arg_2.c.a, arg_2.c.b, vec4<u32>(41946u, 22640u, u_input.b.x, arg_2.a.d.c.x), vec4<bool>(arg_2.a.b.x, true, arg_2.a.a.x, global3.b.x), arg_1)))));
    let var_1 = arg_3.zxw;
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_div_f32(global3.c.x, 110f)), _wgslsmith_f_op_f32(trunc(-1205f)), -239f)), vec4<f32>(_wgslsmith_f_op_f32(abs(-1625f)), _wgslsmith_f_op_f32(global3.d.a - 1607f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -701f)))), -492f));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(~u_input.a.x, 77836u);
    let var_1 = ~(~countOneBits(vec4<i32>(1i, 1i, 1i, global3.d.e.x) << (global3.d.c % vec4<u32>(32u))) & vec4<i32>(global3.d.e.x, reverseBits(-26130i), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d.b.x, global3.c.x, 412f, global3.d.b.x) + vec4<f32>(global3.d.b.x, global3.c.x, global3.c.x, -1594f)), vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 17u)], global3.d.e.x), Struct_3(global0[_wgslsmith_index_u32(var_0, 5u)], vec3<i32>(1i, global4[_wgslsmith_index_u32(4294967295u, 17u)], 1i), global3.d, global3.d.e.x, vec2<i32>(global3.d.e.x, 57449i)), ~vec4<u32>(3541u, var_0, u_input.a.x, 17480u)), _wgslsmith_dot_vec2_i32(vec2<i32>(61245i, -2147483647i) ^ vec2<i32>(0i, global4[_wgslsmith_index_u32(0u, 17u)]), -global3.d.e)));
    var var_2 = false;
    global1 = vec2<u32>(~(~(_wgslsmith_add_u32(global1.x, global3.d.c.x) >> (7433u % 32u))), global3.d.c.x);
    global1 = global3.d.c.zz;
    global1 = countOneBits(vec2<u32>(global3.d.c.x, var_0));
    let x = u_input.a;
    s_output = StorageBuffer(global3.d.c.wy);
}

