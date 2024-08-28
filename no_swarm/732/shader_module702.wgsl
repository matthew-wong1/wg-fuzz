// {"0:0":[169,110,191,76,3,182,202,253,40,21,99,125,214,232,95,233,91,137,204,31,188,54,100,224,176,106,195,97,105,117,102,63]}
// Seed: 14926584520612770978

struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(1i, 2147483647i, -52944i, 5369i, -39582i, -6139i, -30629i, 37279i, -21959i, -24728i, 6303i, i32(-2147483648), 0i, -2852i, -27893i, 0i, 1i, -26465i);

var<private> global1: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false));

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    let var_0 = Struct_5(select(select(global1[firstLeadingBit(dot(vec3<u32>(arg_0, u_input.b.x, 0u), vec3<u32>(0u, u_input.b.x, 78583u)))], !select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(false, false, arg_1.x, true), true), vec4<bool>(-382f <= -1178f, !false, arg_1.x, -695f < 817f)), global1[max(arg_0, reverseBits(arg_0) + arg_0)], any(global1[~(~arg_0)])), Struct_4(Struct_3(Struct_1(floor(vec4<f32>(543f, -923f, 182f, -1468f)), dot(vec4<i32>(u_input.a.x, 24604i, global0[49934u], 2147483647i), vec4<i32>(1i, 2147483647i, -64260i, u_input.a.x)), u_input.b.x, global1[abs(arg_0)]), -u_input.a, Struct_2(Struct_1(vec4<f32>(-1659f, -1288f, 430f, -385f), global0[u_input.b.x], arg_0, global1[135228u]), ~u_input.a.x)), -(-(2147483647i | 1i)), ~u_input.b, Struct_1(vec4<f32>(885f, -1837f, trunc(277f), 1211f - -2083f), u_input.a.x, arg_0, !select(vec4<bool>(arg_1.x, false, false, arg_1.x), global1[25616u], global1[arg_0])), vec4<bool>(any(select(arg_1, vec2<bool>(true, arg_1.x), arg_1.x)), false, !(!false), (-158f / 2051f) <= (519f - 2344f))));
    let var_1 = Struct_5(!var_0.a, Struct_4(var_0.b.a, -21016i, select(~vec2<u32>(1u, 128007u) >> countOneBits(u_input.b), var_0.b.c, !vec2<bool>(var_0.a.x, true)), Struct_1(-vec4<f32>(458f, var_0.b.a.c.a.a.x, -641f, -662f) - vec4<f32>(var_0.b.d.a.x, 385f, -480f, -897f), 0i, u_input.b.x, var_0.b.e), global1[var_0.b.a.a.c]));
    let var_2 = -exp2(var_0.b.d.a);
    let var_3 = !(!(!vec2<bool>(var_1.b.a.c.a.d.x, false)));
    var var_4 = Struct_4(Struct_3(Struct_1(select(-var_2, vec4<f32>(878f, var_2.x, -411f, -312f), all(global1[var_0.b.d.c])), var_1.b.a.a.b, u_input.b.x, vec4<bool>(4294967295u == 48831u, var_3.x && true, var_3.x && false, 0i == i32(-2147483648))), -var_0.b.a.b, Struct_2(Struct_1(vec4<f32>(178f, -1454f, 545f, 1563f), 28414i, u_input.b.x, !global1[var_0.b.a.c.a.c]), -68486i)), ~min(global0[clamp(36848u, 19804u, 7090u - var_0.b.a.c.a.c)], ~dot(var_0.b.a.b.yz, var_1.b.a.b.yy)), vec2<u32>((var_1.b.d.c & abs(u_input.b.x)) + ~(~61061u), 85614u), var_1.b.a.c.a, var_1.a);
    return round(-251f - -(-870f));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = i32(-2147483648);
    let var_1 = Struct_1(vec4<f32>(-(-996f), round(-1641f + 511f) - -floor(-1000f), -(708f / (450f * -453f)), select(abs(func_3(u_input.b.x, vec2<bool>(false, arg_0))), -step(332f, -613f), !(!arg_0))), select(global0[~129955u], -u_input.a.x | ~global0[91605u], any(!global1[~118928u])), ~abs(~(~u_input.b.x)), !vec4<bool>(true, all(!vec3<bool>(false, arg_0, false)), true, arg_0));
    let var_2 = Struct_4(Struct_3(Struct_1(-trunc(var_1.a), u_input.a.x % u_input.a.x, firstTrailingBit(0u / u_input.b.x), var_1.d), -(select(vec4<i32>(19852i, var_1.b, -6802i, -23803i), u_input.a, global1[4294967295u]) % u_input.a), Struct_2(Struct_1(var_1.a - var_1.a, 1i - -17369i, 1u, select(global1[u_input.b.x], global1[385u], arg_0)), var_1.b)), -17516i ^ abs(global0[select(u_input.b.x, var_1.c, arg_0) >> (var_1.c * 52430u)]), firstTrailingBit(vec2<u32>(u_input.b.x, 87154u) + vec2<u32>(var_1.c, ~0u)), Struct_1(max((vec4<f32>(709f, var_1.a.x, 638f, 700f) / var_1.a) + floor(var_1.a), var_1.a), u_input.a.x << u_input.b.x, (1u / ~u_input.b.x) / 2863u, global1[select(firstTrailingBit(u_input.b.x), dot(vec4<u32>(77581u, u_input.b.x, u_input.b.x, 1u), vec4<u32>(71275u, u_input.b.x, u_input.b.x, 1u)), all(vec4<bool>(var_1.d.x, false, var_1.d.x, true)))]), var_1.d);
    let var_3 = var_1;
    global1 = array<vec4<bool>, 11>();
    return (select(var_1.a.x, 968f, any(!vec3<bool>(false, true, var_3.d.x))) + -(-sign(130f))) * min(-var_1.a.x, exp2((-1365f * 447f) / -2751f));
}

fn func_1(arg_0: u32, arg_1: Struct_5, arg_2: Struct_1, arg_3: f32) -> Struct_5 {
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    let var_0 = round(vec3<f32>(floor(arg_2.a.x - 725f), -func_2(true), func_3(~4294967295u, !arg_1.b.d.d.wx))) * arg_2.a.ywy;
    var var_1 = max(u_input.b, ~select(vec2<u32>(arg_0, 33311u), select(vec2<u32>(63196u, arg_1.b.d.c), u_input.b, vec2<bool>(arg_1.b.d.d.x, arg_2.d.x)) * abs(arg_1.b.c), arg_2.d.zw));
    let var_2 = Struct_4(Struct_3(Struct_1(-select(vec4<f32>(arg_2.a.x, arg_3, -756f, arg_2.a.x), vec4<f32>(-176f, arg_2.a.x, arg_2.a.x, -1000f), arg_1.b.d.d.x), 0i, reverseBits(max(arg_0, 4294967295u)), vec4<bool>(arg_2.d.x, -211f <= var_0.x, !true, !arg_1.b.a.c.a.d.x)), select(max(arg_1.b.a.b * vec4<i32>(arg_1.b.b, 33121i, u_input.a.x, global0[arg_2.c]), ~vec4<i32>(2147483647i, -37483i, arg_1.b.d.b, -1i)), arg_1.b.a.b, (var_1.x | u_input.b.x) >= ~arg_1.b.a.a.c), arg_1.b.a.c), ~(reverseBits(global0[0u] << 4294967295u) | i32(-2147483648)), ~u_input.b, arg_1.b.a.c.a, vec4<bool>(false, false, true, false));
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec4<u32>, arg_3: bool) -> Struct_4 {
    global1 = array<vec4<bool>, 11>();
    return func_1(func_1(1u, Struct_5(arg_1.a, Struct_4(Struct_3(arg_1.b.a.c.a, u_input.a, arg_1.b.a.c), -arg_1.b.d.b, ~vec2<u32>(4294967295u, u_input.b.x), Struct_1(vec4<f32>(arg_1.b.a.c.a.a.x, -996f, arg_1.b.a.c.a.a.x, arg_1.b.d.a.x), global0[arg_2.x], u_input.b.x, vec4<bool>(arg_1.a.x, true, arg_3, arg_1.a.x)), arg_1.b.d.d)), Struct_1((arg_1.b.a.a.a + vec4<f32>(-873f, arg_1.b.a.c.a.a.x, arg_1.b.d.a.x, -626f)) - arg_1.b.a.a.a, 4962i, ~clamp(arg_2.x, 1u, arg_2.x), select(select(global1[15748u], vec4<bool>(true, arg_3, false, false), false), vec4<bool>(true, true, true, false), func_1(0u, arg_1, Struct_1(vec4<f32>(arg_1.b.d.a.x, -1704f, arg_1.b.d.a.x, arg_1.b.d.a.x), global0[arg_2.x], 1u, arg_1.a), -671f).a.x)), arg_1.b.d.a.x).b.d.c, Struct_5(select(arg_1.a, arg_1.b.e, all(arg_1.a)), func_1(~(~arg_1.b.d.c), func_1(u_input.b.x, func_1(arg_1.b.a.c.a.c, arg_1, Struct_1(arg_1.b.a.c.a.a, 17614i, 0u, arg_1.b.d.d), arg_1.b.a.a.a.x), Struct_1(vec4<f32>(arg_1.b.d.a.x, 1713f, arg_1.b.d.a.x, arg_1.b.a.a.a.x), arg_1.b.a.b.x, u_input.b.x, vec4<bool>(arg_3, arg_1.a.x, true, arg_3)), -arg_1.b.d.a.x), func_1(u_input.b.x, func_1(4294967295u, Struct_5(global1[arg_1.b.a.a.c], Struct_4(arg_1.b.a, 1i, vec2<u32>(116217u, arg_1.b.a.a.c), arg_1.b.d, vec4<bool>(false, arg_1.a.x, true, arg_3))), arg_1.b.d, arg_1.b.a.c.a.a.x), arg_1.b.a.c.a, -867f).b.a.a, -step(-322f, arg_1.b.d.a.x)).b), func_1(arg_0, func_1(~4294967295u, Struct_5(func_1(arg_2.x, Struct_5(global1[0u], Struct_4(arg_1.b.a, 61479i, u_input.b, arg_1.b.a.a, vec4<bool>(true, false, arg_1.b.e.x, true))), arg_1.b.a.a, -2179f).a, arg_1.b), arg_1.b.a.c.a, (-370f / -1066f) - -arg_1.b.d.a.x), arg_1.b.a.a, (299f + -arg_1.b.d.a.x) - 123f).b.d, 1676f).b;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_5, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_2.b;
    var var_1 = func_1(89146u >> ~(~reverseBits(68486u)), arg_2, func_1(~abs(~20263u), func_1(u_input.b.x & 7265u, arg_2, Struct_1(vec4<f32>(arg_2.b.a.a.a.x, -390f, var_0.d.a.x, 401f), 1i, func_1(824u, Struct_5(var_0.d.d, arg_2.b), Struct_1(vec4<f32>(-1004f, arg_0.a.a.x, var_0.a.a.a.x, -1000f), arg_2.b.a.c.a.b, arg_1.x, arg_2.a), 113f).b.d.c, arg_3.a.d), -841f), func_1(31046u, arg_2, Struct_1(var_0.d.a, -8287i, max(8461u, arg_3.a.c), vec4<bool>(true, true, arg_0.a.d.x, true)), -348f).b.a.a, round(min(func_4(arg_2.b.a.a.c, arg_2, vec4<u32>(55701u, arg_0.a.c, u_input.b.x, arg_3.a.c), arg_2.b.e.x).a.a.a.x, -266f * var_0.d.a.x))).b.d, arg_3.a.a.x).b.a;
    let var_2 = func_1(arg_3.a.c, Struct_5(!select(!arg_2.a, vec4<bool>(false, var_0.a.a.d.x, arg_3.a.d.x, arg_3.a.d.x), select(vec4<bool>(arg_0.a.d.x, var_0.a.a.d.x, arg_0.a.d.x, true), vec4<bool>(var_1.c.a.d.x, arg_3.a.d.x, arg_2.a.x, true), arg_3.a.d.x)), arg_2.b), func_4(reverseBits(12860u) << (~61202u | (23995u % 0u)), Struct_5(!vec4<bool>(true, false, arg_2.b.e.x, var_0.a.a.d.x), Struct_4(Struct_3(var_1.c.a, u_input.a, arg_3), var_1.b.x ^ -43221i, vec2<u32>(13671u, 25603u), arg_0.a, !var_0.a.a.d)), ~reverseBits(~vec4<u32>(u_input.b.x, u_input.b.x, arg_0.a.c, 1u)), !(!any(arg_3.a.d.zw))).a.a, trunc(arg_0.a.a.x)).b;
    var_1 = func_4(11312u, Struct_5(vec4<bool>(arg_2.a.x, true, any(!var_2.a.c.a.d.xyw), !any(var_2.d.d.ww)), func_4(~8351u / 1u, func_1(var_0.c.x, func_1(83927u, Struct_5(vec4<bool>(var_1.a.d.x, var_2.e.x, var_2.e.x, false), Struct_4(Struct_3(arg_3.a, var_1.b, Struct_2(Struct_1(vec4<f32>(1031f, var_0.a.a.a.x, arg_3.a.a.x, -1300f), u_input.a.x, arg_0.a.c, arg_2.a), 2147483647i)), 0i, vec2<u32>(0u, 0u), Struct_1(vec4<f32>(var_2.a.c.a.a.x, -907f, -650f, 839f), arg_3.a.b, arg_3.a.c, arg_2.a), vec4<bool>(true, false, true, false))), Struct_1(var_0.d.a, -32600i, 3521u, vec4<bool>(var_1.a.d.x, false, true, false)), -815f), Struct_1(var_1.a.a, 31403i, arg_3.a.c, vec4<bool>(true, true, arg_2.b.a.a.d.x, true)), -372f), (vec4<u32>(75450u, 24134u, 42833u, 0u) ^ vec4<u32>(arg_0.a.c, 25650u, 14952u, 5622u)) ^ ~vec4<u32>(arg_2.b.d.c, 1u, var_2.c.x, var_0.a.a.c), !(var_1.a.d.x | var_1.c.a.d.x))), (firstTrailingBit(vec4<u32>(var_1.c.a.c, 1u, arg_3.a.c, var_1.c.a.c)) - vec4<u32>(func_4(var_2.d.c, Struct_5(vec4<bool>(var_1.c.a.d.x, true, arg_2.b.e.x, false), arg_2.b), vec4<u32>(0u, arg_0.a.c, 45724u, 21353u), false).a.c.a.c, 0u >> 29438u, var_2.d.c, var_2.d.c >> 4294967295u)) / (~min(vec4<u32>(arg_2.b.c.x, var_1.c.a.c, var_0.d.c, var_1.c.a.c), vec4<u32>(66637u, var_1.a.c, arg_0.a.c, arg_2.b.c.x)) - clamp(reverseBits(vec4<u32>(arg_1.x, 0u, 1u, var_2.c.x)), vec4<u32>(var_1.c.a.c, 14867u, 0u, arg_1.x) + vec4<u32>(30939u, 0u, arg_1.x, var_2.d.c), vec4<u32>(arg_3.a.c, arg_2.b.c.x, 1u, var_2.d.c) >> vec4<u32>(arg_0.a.c, 1u, 2297u, var_0.d.c))), arg_3.a.d.x).a;
    global0 = array<i32, 18>();
    return arg_2.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_5(Struct_2(Struct_1(vec4<f32>(-727f, 258f, -831f, 1148f), u_input.a.x, clamp(u_input.b.x, 7609u, u_input.b.x), global1[u_input.b.x]), -u_input.a.x - global0[~u_input.b.x]), u_input.b, Struct_5(!vec4<bool>(false, true, false, true), func_4(4294967295u - u_input.b.x, func_1(u_input.b.x, Struct_5(vec4<bool>(true, true, false, true), Struct_4(Struct_3(Struct_1(vec4<f32>(-1806f, -1274f, 1086f, -1379f), u_input.a.x, u_input.b.x, global1[u_input.b.x]), u_input.a, Struct_2(Struct_1(vec4<f32>(-310f, 562f, -1112f, 1225f), u_input.a.x, 1u, vec4<bool>(true, true, false, false)), global0[u_input.b.x])), -1i, u_input.b, Struct_1(vec4<f32>(190f, -711f, 219f, -710f), 1i, 4294967295u, global1[33280u]), vec4<bool>(false, false, false, false))), Struct_1(vec4<f32>(-1000f, -854f, 515f, 433f), u_input.a.x, 0u, global1[0u]), -1344f), max(vec4<u32>(0u, 1u, 4294967295u, u_input.b.x), vec4<u32>(9241u, 0u, 50287u, u_input.b.x)), true)), func_1(0u, Struct_5(func_4(u_input.b.x, Struct_5(global1[u_input.b.x], Struct_4(Struct_3(Struct_1(vec4<f32>(2030f, 580f, -120f, -511f), 72825i, 6458u, global1[u_input.b.x]), vec4<i32>(global0[0u], u_input.a.x, global0[4294967295u], 24353i), Struct_2(Struct_1(vec4<f32>(-2560f, 891f, 1264f, -1566f), -17326i, u_input.b.x, global1[u_input.b.x]), -1i)), 22117i, vec2<u32>(u_input.b.x, u_input.b.x), Struct_1(vec4<f32>(712f, -339f, 2087f, -1341f), 113712i, 4294967295u, vec4<bool>(false, true, false, true)), vec4<bool>(false, true, false, true))), vec4<u32>(u_input.b.x, 0u, u_input.b.x, 82897u), true).a.a.d, func_4(u_input.b.x, Struct_5(vec4<bool>(false, true, false, false), Struct_4(Struct_3(Struct_1(vec4<f32>(1000f, 1278f, 106f, 539f), i32(-2147483648), 8076u, global1[u_input.b.x]), u_input.a, Struct_2(Struct_1(vec4<f32>(239f, 145f, -581f, -115f), global0[70009u], 0u, global1[5311u]), global0[u_input.b.x])), global0[u_input.b.x], vec2<u32>(40374u, u_input.b.x), Struct_1(vec4<f32>(-1148f, -1132f, -1000f, 791f), global0[u_input.b.x], u_input.b.x, global1[1u]), global1[u_input.b.x])), vec4<u32>(u_input.b.x, u_input.b.x, 4228u, 107080u), true)), Struct_1(vec4<f32>(-404f, 179f, -1610f, -246f), -27668i % global0[u_input.b.x], 24864u >> 4294967295u, select(global1[0u], global1[u_input.b.x], global1[u_input.b.x])), trunc(-556f * 2813f)).b.a.c), 1183i, vec2<u32>(~4294967295u, (dot(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 1u, u_input.b.x, 0u)) & 85183u) * ~abs(u_input.b.x)), Struct_1(min(vec4<f32>(2041f, 429f, -1122f, 689f) + vec4<f32>(-795f, 914f, 520f, 723f), vec4<f32>(func_4(1u, Struct_5(global1[4294967295u], Struct_4(Struct_3(Struct_1(vec4<f32>(512f, -1000f, 1000f, 554f), global0[33394u], 0u, global1[50643u]), vec4<i32>(global0[28368u], global0[0u], 1i, 1i), Struct_2(Struct_1(vec4<f32>(-1165f, -1000f, 1400f, -374f), 42713i, u_input.b.x, vec4<bool>(false, false, true, true)), 0i)), global0[0u], vec2<u32>(u_input.b.x, 44412u), Struct_1(vec4<f32>(-249f, -1784f, -1000f, -199f), global0[22243u], u_input.b.x, global1[4294967295u]), vec4<bool>(false, false, false, false))), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), false).a.c.a.a.x, -(-1265f), func_2(true), floor(-282f))), u_input.a.x, abs(~reverseBits(u_input.b.x)), !select(global1[45261u >> 4294967295u], !global1[4294967295u], vec4<bool>(false, true, false, false))), global1[reverseBits(u_input.b.x)]);
    let var_1 = func_5(func_4(~(func_1(1u, Struct_5(vec4<bool>(var_0.d.d.x, var_0.a.a.d.x, false, var_0.d.d.x), Struct_4(Struct_3(Struct_1(var_0.d.a, global0[var_0.a.a.c], u_input.b.x, var_0.e), vec4<i32>(0i, 2582i, 2147483647i, global0[1u]), var_0.a.c), u_input.a.x, vec2<u32>(15564u, 7263u), var_0.a.c.a, var_0.a.c.a.d)), var_0.a.c.a, var_0.d.a.x).b.c.x * 35670u), Struct_5(vec4<bool>(var_0.a.c.a.c < var_0.d.c, all(var_0.a.a.d.ww), var_0.a.c.a.d.x, !var_0.e.x), Struct_4(func_5(var_0.a.c, u_input.b, Struct_5(var_0.e, var_0), Struct_2(var_0.a.c.a, u_input.a.x)), -27408i, vec2<u32>(58231u, u_input.b.x) | vec2<u32>(1u, 0u), Struct_1(var_0.d.a, global0[u_input.b.x], u_input.b.x, vec4<bool>(var_0.d.d.x, false, var_0.d.d.x, var_0.d.d.x)), vec4<bool>(var_0.d.d.x, var_0.e.x, var_0.d.d.x, var_0.e.x))), min(~vec4<u32>(var_0.c.x, 1u, 33555u, 29955u) >> (vec4<u32>(var_0.a.a.c, 4294967295u, var_0.c.x, var_0.a.c.a.c) & vec4<u32>(u_input.b.x, u_input.b.x, 1u, 50347u)), ~vec4<u32>(1u, 28608u, var_0.d.c, 37577u)), func_1(u_input.b.x, func_1(func_5(var_0.a.c, vec2<u32>(1u, 4294967295u), Struct_5(global1[4294967295u], Struct_4(var_0.a, var_0.b, var_0.c, var_0.a.a, var_0.e)), var_0.a.c).a.c, func_1(var_0.a.c.a.c, Struct_5(var_0.a.a.d, Struct_4(var_0.a, 30347i, var_0.c, Struct_1(var_0.a.a.a, global0[40456u], u_input.b.x, global1[4279u]), global1[0u])), var_0.d, -326f), func_1(57007u, Struct_5(global1[u_input.b.x], var_0), var_0.d, var_0.a.c.a.a.x).b.d, var_0.a.a.a.x), func_4(max(4294967295u, 71797u), Struct_5(vec4<bool>(var_0.a.c.a.d.x, var_0.d.d.x, true, false), Struct_4(Struct_3(var_0.a.c.a, vec4<i32>(9069i, u_input.a.x, 1i, u_input.a.x), Struct_2(var_0.d, 0i)), var_0.a.c.a.b, var_0.c, var_0.d, var_0.d.d)), abs(vec4<u32>(0u, u_input.b.x, 17957u, u_input.b.x)), var_0.a.a.d.x | false).d, -step(778f, -1757f)).b.a.a.d.x).a.c, ~(~(select(vec2<u32>(1u, 72055u), vec2<u32>(1u, 6439u), vec2<bool>(true, false)) + vec2<u32>(49782u, var_0.c.x))), Struct_5(var_0.e, func_1(func_4(~0u, func_1(u_input.b.x, Struct_5(var_0.e, var_0), Struct_1(var_0.d.a, u_input.a.x, u_input.b.x, global1[var_0.d.c]), 493f), vec4<u32>(4294967295u, 32792u, 976u, u_input.b.x), func_4(var_0.d.c, Struct_5(var_0.a.a.d, var_0), vec4<u32>(var_0.d.c, 4186u, u_input.b.x, var_0.c.x), true).a.c.a.d.x).a.a.c, func_1(reverseBits(4294967295u), Struct_5(vec4<bool>(var_0.a.a.d.x, var_0.a.a.d.x, var_0.e.x, var_0.d.d.x), var_0), var_0.a.a, var_0.d.a.x), var_0.a.c.a, (306f + 137f) / (1043f + -2405f)).b), var_0.a.c).c.a.a;
    global1 = array<vec4<bool>, 11>();
    global0 = array<i32, 18>();
    let var_2 = -(-(-var_1.x));
    var var_3 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(clamp(u_input.a.x, -var_0.b, var_0.d.b), 11258u, abs(~dot(vec3<u32>(1u, 0u, var_0.d.c), vec3<u32>(41906u, var_3.x, var_0.a.c.a.c))) * func_5(var_0.a.c, countOneBits(reverseBits(vec2<u32>(2978u, var_0.c.x))), func_1(4294967295u, Struct_5(global1[4294967295u], var_0), var_0.d, -685f), Struct_2(func_5(Struct_2(var_0.a.a, global0[var_3.x]), var_0.c, Struct_5(global1[var_0.d.c], Struct_4(var_0.a, 58390i, var_0.c, Struct_1(var_0.a.a.a, -1i, 84882u, vec4<bool>(false, var_0.a.c.a.d.x, false, false)), global1[6356u])), var_0.a.c).c.a, global0[~u_input.b.x])).c.a.c, global0[firstTrailingBit(0u | func_5(Struct_2(var_0.d, 2147483647i), vec2<u32>(var_3.x, var_3.x), Struct_5(var_0.e, Struct_4(var_0.a, 2147483647i, var_0.c, var_0.a.a, var_0.a.c.a.d)), Struct_2(var_0.d, global0[var_3.x])).c.a.c) % var_3.x], dot(var_0.a.b, (vec4<i32>(0i, 55615i, -1i, 4562i) << ~vec4<u32>(var_0.c.x, var_3.x, 0u, u_input.b.x)) >> vec4<u32>(var_0.a.a.c, var_0.c.x & 46018u, u_input.b.x & var_0.a.c.a.c, u_input.b.x)));
}

