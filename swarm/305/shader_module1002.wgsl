struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<f32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(vec3<i32>(0i, 0i, -40876i), 0i, Struct_3(Struct_1(vec2<f32>(1230f, -333f), false, vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(480f, -175f, 1393f), 521f), 88835u, 32568u)), Struct_4(vec3<i32>(-1i, -1387i, i32(-2147483648)), 8067i, Struct_3(Struct_1(vec2<f32>(-1000f, -681f), true, vec3<u32>(0u, 2491u, 4049u), vec3<f32>(516f, 295f, -635f), -676f), 0u, 6436u)), Struct_4(vec3<i32>(38770i, 1i, i32(-2147483648)), -1195i, Struct_3(Struct_1(vec2<f32>(983f, -891f), true, vec3<u32>(11440u, 0u, 4294967295u), vec3<f32>(515f, 641f, 1108f), -1163f), 0u, 83212u)), Struct_4(vec3<i32>(-3696i, i32(-2147483648), -29004i), 65480i, Struct_3(Struct_1(vec2<f32>(949f, 477f), false, vec3<u32>(1u, 1u, 42553u), vec3<f32>(1428f, -1000f, -1000f), 1909f), 3198u, 28255u)), Struct_4(vec3<i32>(-73645i, 29187i, 23998i), 37860i, Struct_3(Struct_1(vec2<f32>(-1026f, 294f), false, vec3<u32>(94559u, 16744u, 52959u), vec3<f32>(670f, -894f, 753f), -172f), 39352u, 4294967295u)), Struct_4(vec3<i32>(-1i, 6258i, 0i), -26086i, Struct_3(Struct_1(vec2<f32>(-622f, -168f), false, vec3<u32>(4294967295u, 68956u, 0u), vec3<f32>(-827f, -979f, -503f), 990f), 1u, 1402u)), Struct_4(vec3<i32>(i32(-2147483648), -33412i, 2147483647i), -24736i, Struct_3(Struct_1(vec2<f32>(1000f, 582f), true, vec3<u32>(56169u, 20985u, 0u), vec3<f32>(220f, 637f, -1946f), -513f), 32864u, 0u)), Struct_4(vec3<i32>(-1i, -1i, 427i), 1i, Struct_3(Struct_1(vec2<f32>(-1121f, 1229f), true, vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(462f, 454f, 229f), -188f), 4294967295u, 58546u)), Struct_4(vec3<i32>(21601i, 47240i, -2786i), -9318i, Struct_3(Struct_1(vec2<f32>(-243f, -815f), false, vec3<u32>(0u, 1u, 33262u), vec3<f32>(731f, -193f, -1364f), 873f), 0u, 54691u)), Struct_4(vec3<i32>(18801i, -17407i, 45344i), -33353i, Struct_3(Struct_1(vec2<f32>(-2058f, 298f), false, vec3<u32>(4294967295u, 4294967295u, 31192u), vec3<f32>(-723f, -602f, -1033f), 672f), 5753u, 17937u)), Struct_4(vec3<i32>(2147483647i, 0i, 1i), 0i, Struct_3(Struct_1(vec2<f32>(-824f, -692f), false, vec3<u32>(1u, 1u, 21281u), vec3<f32>(1132f, 1597f, 944f), 582f), 70056u, 58751u)), Struct_4(vec3<i32>(2147483647i, 1i, i32(-2147483648)), 6681i, Struct_3(Struct_1(vec2<f32>(811f, 1000f), true, vec3<u32>(16211u, 0u, 40454u), vec3<f32>(1059f, -1127f, -1386f), -445f), 1u, 1u)));

var<private> global1: array<f32, 25> = array<f32, 25>(-384f, 340f, -246f, -429f, -358f, 316f, -489f, -862f, -1821f, -655f, -406f, 1577f, 2001f, -150f, -252f, 1059f, 682f, 409f, -965f, 234f, 826f, -1098f, -1000f, 1027f, -125f);

var<private> global2: vec3<u32> = vec3<u32>(12439u, 98240u, 73043u);

var<private> global3: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(Struct_1(vec2<f32>(2319f, 116f), true, vec3<u32>(9970u, 4294967295u, 46608u), vec3<f32>(-1002f, -180f, -754f), 185f), 3402u, 4294967295u), Struct_3(Struct_1(vec2<f32>(461f, 1937f), false, vec3<u32>(29913u, 1u, 136284u), vec3<f32>(1100f, -1102f, -1992f), 2407f), 4294967295u, 4294967295u), Struct_3(Struct_1(vec2<f32>(944f, 1579f), false, vec3<u32>(73363u, 46739u, 4294967295u), vec3<f32>(-437f, 1000f, -1249f), -1134f), 19458u, 1u), Struct_3(Struct_1(vec2<f32>(388f, 1733f), false, vec3<u32>(22372u, 1357u, 0u), vec3<f32>(1000f, -1801f, -205f), -1000f), 7391u, 103206u), Struct_3(Struct_1(vec2<f32>(-570f, 1031f), false, vec3<u32>(24273u, 46005u, 1u), vec3<f32>(-1000f, 447f, -2060f), 863f), 64759u, 0u), Struct_3(Struct_1(vec2<f32>(-133f, 932f), false, vec3<u32>(4294967295u, 95107u, 47691u), vec3<f32>(-1631f, -549f, 242f), -238f), 0u, 1u), Struct_3(Struct_1(vec2<f32>(504f, -1252f), false, vec3<u32>(0u, 24383u, 4294967295u), vec3<f32>(-1000f, -1828f, -1078f), -1194f), 0u, 4294967295u), Struct_3(Struct_1(vec2<f32>(658f, -1065f), true, vec3<u32>(0u, 0u, 102467u), vec3<f32>(-256f, 1223f, 1013f), 684f), 4294967295u, 0u), Struct_3(Struct_1(vec2<f32>(-1308f, 1692f), true, vec3<u32>(1u, 28721u, 50583u), vec3<f32>(-407f, -488f, 1172f), -1919f), 4294967295u, 67896u), Struct_3(Struct_1(vec2<f32>(789f, 1000f), false, vec3<u32>(1u, 35811u, 17725u), vec3<f32>(-1000f, -837f, 1910f), -830f), 73300u, 9378u), Struct_3(Struct_1(vec2<f32>(-1802f, 292f), true, vec3<u32>(19968u, 8944u, 44133u), vec3<f32>(-220f, -697f, -138f), -345f), 0u, 4294967295u), Struct_3(Struct_1(vec2<f32>(-602f, -297f), true, vec3<u32>(77573u, 1u, 38204u), vec3<f32>(-731f, 179f, -346f), -1082f), 1u, 82539u), Struct_3(Struct_1(vec2<f32>(-525f, -422f), true, vec3<u32>(20966u, 4855u, 0u), vec3<f32>(510f, -2676f, 450f), -1606f), 4294967295u, 87210u), Struct_3(Struct_1(vec2<f32>(-1557f, 911f), true, vec3<u32>(5564u, 51972u, 1u), vec3<f32>(-376f, -2562f, -507f), -1342f), 9245u, 1u), Struct_3(Struct_1(vec2<f32>(777f, 2994f), true, vec3<u32>(4294967295u, 111514u, 17008u), vec3<f32>(1296f, 747f, 541f), -881f), 1u, 18949u), Struct_3(Struct_1(vec2<f32>(378f, -636f), false, vec3<u32>(62247u, 33910u, 4294967295u), vec3<f32>(1594f, -1463f, 901f), 735f), 4294967295u, 40179u), Struct_3(Struct_1(vec2<f32>(-388f, -228f), true, vec3<u32>(0u, 73452u, 18188u), vec3<f32>(1600f, -1000f, 1320f), 383f), 74501u, 1u), Struct_3(Struct_1(vec2<f32>(381f, -511f), false, vec3<u32>(0u, 19017u, 4294967295u), vec3<f32>(325f, 954f, -309f), 229f), 0u, 0u), Struct_3(Struct_1(vec2<f32>(-1000f, -1133f), false, vec3<u32>(8677u, 0u, 40383u), vec3<f32>(-264f, -1000f, 1331f), 384f), 0u, 1u), Struct_3(Struct_1(vec2<f32>(163f, -381f), false, vec3<u32>(14083u, 9879u, 50909u), vec3<f32>(831f, 453f, 541f), -214f), 1u, 49714u));

var<private> global4: i32 = -14235i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1() -> Struct_4 {
    global1 = array<f32, 25>();
    let var_0 = global1[_wgslsmith_index_u32(45792u, 25u)];
    var var_1 = 0u;
    var var_2 = _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(_wgslsmith_clamp_u32(global2.x, global2.x, global2.x), u_input.b, max(0u, global2.x), ~31917u), _wgslsmith_add_vec4_u32(vec4<u32>(26580u, u_input.a.x, 79050u, u_input.e), vec4<u32>(59831u, 106603u, 12979u, 37024u)) ^ (vec4<u32>(0u, u_input.b, global2.x, u_input.e) << (vec4<u32>(1u, global2.x, 0u, u_input.b) % vec4<u32>(32u))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true))), ~vec4<u32>(firstLeadingBit(11804u), ~global2.x, 23480u, ~global2.x)), 25u)]));
    let var_3 = true;
    return global0[_wgslsmith_index_u32(66138u, 12u)];
}

fn func_3(arg_0: u32) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(u_input.a), u_input.a), ~vec3<u32>(global2.x, arg_0, 84023u), ~(vec3<u32>(5562u, global2.x, 5932u) << (vec3<u32>(arg_0, global2.x, 25289u) % vec3<u32>(32u)))), u_input.a);
    global3 = array<Struct_3, 20>();
    let var_1 = u_input.a;
    let var_2 = firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, firstLeadingBit(30082u), ~u_input.b, 1u), vec4<u32>(global2.x, arg_0, 19037u, 4294967295u) ^ _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, 13111u, 59241u, u_input.e), vec4<u32>(1u, 53317u, 4294967295u, u_input.b)), vec4<u32>(u_input.e, firstTrailingBit(47471u), 4294967295u, var_1.x))) ^ vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~var_1.yy, vec2<u32>(6682u, 4294967295u)), _wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(20169u, 1u, u_input.a.x)))), ~(var_0 & var_1.x), arg_0, firstTrailingBit(1u));
    var var_3 = vec2<bool>(false, all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), true)), vec3<bool>(true, true, true))));
    return global1[_wgslsmith_index_u32(~abs(firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, u_input.a.x), ~15758u))), 25u)];
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> u32 {
    global3 = array<Struct_3, 20>();
    global4 = _wgslsmith_clamp_i32(-6555i, -u_input.d.x, 20291i);
    let var_0 = _wgslsmith_f_op_f32(func_3(34282u));
    let var_1 = vec2<f32>(-1952f, global1[_wgslsmith_index_u32(abs((global2.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.x, 1u, 27189u, u_input.b), vec4<u32>(u_input.a.x, 39791u, arg_2.c.x, u_input.a.x)) % 32u)) >> (firstLeadingBit(4294967295u) % 32u)), 25u)]);
    global2 = u_input.a;
    return 27490u;
}

fn func_4(arg_0: Struct_4, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = ~u_input.b;
    global4 = u_input.c.x;
    let var_1 = vec3<u32>(max(max(23361u, u_input.b), _wgslsmith_dot_vec2_u32(global2.xx, u_input.a.yz)), _wgslsmith_sub_u32(70546u, max(32026u, u_input.b)), ((countOneBits(4093u) ^ _wgslsmith_dot_vec2_u32(arg_0.c.a.c.zy, global2.xz)) >> (0u % 32u)) >> (~firstTrailingBit(max(4226u, global2.x)) % 32u));
    global0 = array<Struct_4, 12>();
    let var_2 = _wgslsmith_f_op_f32(func_3(~(~abs(global2.x))));
    return Struct_1(arg_0.c.a.d.yx, func_1().c.a.b, vec3<u32>(7115u, ~u_input.e & ~var_0, var_0 | ~120451u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_2), _wgslsmith_f_op_vec3_f32(-arg_2))) - vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.x, u_input.b), 25u)], var_2, -1000f))), -1434f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(~38964u, abs(4294967295u), ~0u)), vec3<u32>(1u, _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.a), abs(u_input.a)), u_input.b), abs(vec3<u32>(33368u, ~4294967295u, u_input.e & 1u))), min(vec3<u32>(47204u, u_input.e, firstTrailingBit(7960u)), ~_wgslsmith_div_vec3_u32(u_input.a, firstLeadingBit(vec3<u32>(u_input.a.x, 16938u, u_input.a.x)))), true);
    global1 = array<f32, 25>();
    var var_0 = func_4(func_1(), 1i, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2.x, 25u)]) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.e, 25u)] * 283f))), global1[_wgslsmith_index_u32(~func_2(global1[_wgslsmith_index_u32(0u, 25u)], false, Struct_1(vec2<f32>(906f, 1058f), false, vec3<u32>(4294967295u, u_input.e, u_input.e), vec3<f32>(858f, global1[_wgslsmith_index_u32(global2.x, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), global1[_wgslsmith_index_u32(178449u, 25u)])) ^ ~(~4294967295u), 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f)) * -373f)), Struct_2(global1[_wgslsmith_index_u32(1u, 25u)], _wgslsmith_dot_vec2_i32(u_input.d.yy, abs(u_input.c.ww)), true));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-800f * 428f), _wgslsmith_sub_i32(u_input.d.x, u_input.d.x & _wgslsmith_div_i32(u_input.d.x, u_input.c.x)) ^ _wgslsmith_dot_vec3_i32(max(_wgslsmith_add_vec3_i32(u_input.c.zyw, vec3<i32>(u_input.d.x, u_input.c.x, 0i)), max(vec3<i32>(u_input.c.x, 3907i, 19292i), vec3<i32>(u_input.d.x, u_input.d.x, 19108i))), vec3<i32>(15485i, firstTrailingBit(21882i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 17920i), vec2<i32>(-24056i, u_input.d.x)))), false);
    let var_2 = firstLeadingBit(~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_0.d, vec3<f32>(368f, -897f, global1[_wgslsmith_index_u32(46519u, 25u)]), var_1.c)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1366f, -313f, var_0.a.x), vec3<f32>(583f, 1000f, var_1.a))), func_4(global0[_wgslsmith_index_u32(var_0.c.x ^ global2.x, 12u)], countOneBits(var_1.b), _wgslsmith_f_op_vec3_f32(-var_0.d), var_1).d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 25u)]), _wgslsmith_f_op_f32(318f - var_1.a)) - var_0.d)));
}

