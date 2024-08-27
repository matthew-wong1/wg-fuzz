struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(vec4<f32>(144f, -1155f, 1783f, 2464f), vec3<f32>(-1668f, -1102f, -238f), Struct_1(vec3<i32>(-28323i, 72297i, 30213i)), 1000f), Struct_2(vec4<f32>(642f, 1000f, -235f, -1846f), vec3<f32>(371f, -237f, -288f), Struct_1(vec3<i32>(30835i, -1i, 23541i)), 377f), Struct_2(vec4<f32>(-1198f, 2005f, 816f, -841f), vec3<f32>(297f, 230f, 1954f), Struct_1(vec3<i32>(-13058i, 58480i, -24211i)), -752f), Struct_2(vec4<f32>(334f, -637f, -1415f, -1000f), vec3<f32>(-583f, 984f, 1000f), Struct_1(vec3<i32>(77245i, 16525i, i32(-2147483648))), 363f), Struct_2(vec4<f32>(965f, 1206f, 1066f, 400f), vec3<f32>(523f, -1000f, 338f), Struct_1(vec3<i32>(i32(-2147483648), -8987i, -6771i)), 2051f), Struct_2(vec4<f32>(523f, 543f, -1120f, -372f), vec3<f32>(-1911f, -349f, 2037f), Struct_1(vec3<i32>(6719i, 38947i, i32(-2147483648))), 355f), Struct_2(vec4<f32>(-1320f, 1035f, 306f, 214f), vec3<f32>(-890f, -1444f, -281f), Struct_1(vec3<i32>(i32(-2147483648), 0i, 11656i)), 1000f), Struct_2(vec4<f32>(316f, -1184f, 434f, 1230f), vec3<f32>(-1000f, 272f, 747f), Struct_1(vec3<i32>(1i, 1317i, 2857i)), 203f), Struct_2(vec4<f32>(139f, -769f, 476f, 1358f), vec3<f32>(-1010f, 1242f, -119f), Struct_1(vec3<i32>(51465i, -1i, 10205i)), 1080f), Struct_2(vec4<f32>(1000f, -786f, 529f, 574f), vec3<f32>(329f, 469f, 537f), Struct_1(vec3<i32>(-11276i, 2147483647i, i32(-2147483648))), -1407f), Struct_2(vec4<f32>(-1093f, -1258f, 413f, 1814f), vec3<f32>(-1000f, 1484f, -375f), Struct_1(vec3<i32>(-20069i, -30334i, -22928i)), 575f), Struct_2(vec4<f32>(374f, 478f, -1798f, -338f), vec3<f32>(1400f, 1074f, 2684f), Struct_1(vec3<i32>(-53902i, 74574i, -1i)), -852f), Struct_2(vec4<f32>(-1125f, 798f, -2134f, 1764f), vec3<f32>(-347f, 368f, 1466f), Struct_1(vec3<i32>(36992i, 43186i, -29129i)), -1125f), Struct_2(vec4<f32>(167f, -359f, -613f, -522f), vec3<f32>(1214f, 398f, -368f), Struct_1(vec3<i32>(0i, -4709i, i32(-2147483648))), 1042f), Struct_2(vec4<f32>(-802f, 1742f, -224f, 302f), vec3<f32>(1779f, -1378f, 1002f), Struct_1(vec3<i32>(947i, -76285i, 2147483647i)), 483f), Struct_2(vec4<f32>(415f, -497f, -1147f, 656f), vec3<f32>(-867f, -287f, -1030f), Struct_1(vec3<i32>(-13090i, 10030i, 11819i)), 472f), Struct_2(vec4<f32>(278f, -1026f, -1299f, 506f), vec3<f32>(-894f, 2382f, -720f), Struct_1(vec3<i32>(2147483647i, 30247i, -18137i)), 770f), Struct_2(vec4<f32>(-1460f, 1442f, 130f, -1000f), vec3<f32>(682f, 1000f, -665f), Struct_1(vec3<i32>(-41913i, -32856i, 23684i)), -358f));

var<private> global2: array<bool, 18>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: vec4<f32>) -> bool {
    global2 = array<bool, 18>();
    let var_0 = select(_wgslsmith_add_u32(~(u_input.e ^ ~0u), ~(~(~u_input.d))), 60452u, any(!select(select(vec4<bool>(global2[_wgslsmith_index_u32(12807u, 18u)], true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, global2[_wgslsmith_index_u32(global0.x, 18u)], false)), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 18u)], global2[_wgslsmith_index_u32(23612u, 18u)], global2[_wgslsmith_index_u32(u_input.e, 18u)]), vec4<bool>(global2[_wgslsmith_index_u32(32075u, 18u)], false, global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(u_input.d, 18u)]), global2[_wgslsmith_index_u32(global0.x, 18u)]), select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.e, 18u)], global2[_wgslsmith_index_u32(36388u, 18u)], global2[_wgslsmith_index_u32(u_input.d, 18u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(18658u, 18u)], false, global2[_wgslsmith_index_u32(33969u, 18u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.e, 18u)], false, false, global2[_wgslsmith_index_u32(4294967295u, 18u)])))));
    let var_1 = -544f;
    let var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1705f, _wgslsmith_f_op_f32(select(1000f, 1600f, global2[_wgslsmith_index_u32(var_0, 18u)])), _wgslsmith_f_op_f32(-787f * arg_0.x), var_1), vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(473f * 817f), 1246f, 1218f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.zyz + vec3<f32>(487f, var_1, -230f)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-357f, arg_0.x, 846f), arg_0.wzy))))), Struct_1(u_input.b.xxy), _wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-arg_0.x)));
    var var_3 = Struct_1(~abs(var_2.c.a));
    return global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(max(abs(global0.x), ~(global0.x | u_input.e)), ~_wgslsmith_sub_u32(1u, select(u_input.d, u_input.d, global2[_wgslsmith_index_u32(32754u, 18u)]))), 18u)];
}

fn func_3(arg_0: Struct_2) -> bool {
    var var_0 = -vec4<i32>(u_input.b.x, min(~(-73745i), -33400i), countOneBits(12948i << (u_input.d % 32u)), u_input.b.x);
    global0 = select(select(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 3107u, u_input.d), vec3<u32>(global0.x, global0.x, 4294967295u), vec3<u32>(global0.x, global0.x, 15595u)), vec3<u32>(u_input.e, 0u, 1u)) << ((firstLeadingBit(vec3<u32>(4294967295u, 1u, 42473u)) >> (~vec3<u32>(4143u, global0.x, u_input.d) % vec3<u32>(32u))) % vec3<u32>(32u)), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 77u, global0.x), vec3<u32>(46276u, u_input.d, u_input.e)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 21367u, u_input.e), vec3<u32>(0u, u_input.e, 36232u), vec3<u32>(58976u, 0u, 0u))), !select(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], false, global2[_wgslsmith_index_u32(1u, 18u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(8980u, 18u)], global2[_wgslsmith_index_u32(u_input.d, 18u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(0u, 18u)]), vec3<bool>(global2[_wgslsmith_index_u32(27653u, 18u)], global2[_wgslsmith_index_u32(u_input.d, 18u)], true)), select(vec3<bool>(global2[_wgslsmith_index_u32(global0.x, 18u)], true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(global0.x, 18u)], global2[_wgslsmith_index_u32(u_input.d, 18u)]), vec3<bool>(false, false, true)))), ~(~_wgslsmith_clamp_vec3_u32(select(vec3<u32>(u_input.d, u_input.d, 24009u), vec3<u32>(0u, global0.x, global0.x), global2[_wgslsmith_index_u32(1u, 18u)]), ~vec3<u32>(u_input.d, global0.x, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 0u, 0u), vec3<u32>(1u, u_input.e, 1u)))), _wgslsmith_dot_vec2_u32(vec2<u32>(min(u_input.e, 4294967295u), ~0u), _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(0u, u_input.d)), vec2<u32>(global0.x, u_input.e) & global0.xx)) != _wgslsmith_dot_vec4_u32(min(~vec4<u32>(1u, 22119u, 7825u, global0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, 70340u), vec4<u32>(global0.x, 40091u, 24928u, 21107u))), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.d, 1u, 22206u), vec4<u32>(36962u, 43259u, 50479u, 0u))));
    var var_1 = _wgslsmith_sub_vec3_i32(abs(arg_0.c.a), ~vec3<i32>(var_0.x, firstLeadingBit(u_input.c.x), -19023i));
    global1 = array<Struct_2, 18>();
    let var_2 = Struct_1(abs(u_input.b.zyy));
    return global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(global0.x, 37988u, 31905u, global0.x)), vec4<u32>(26416u, firstTrailingBit(75066u), 1u, ~80670u)), 1u << ((reverseBits(4294967295u) | ~u_input.d) % 32u), u_input.e | 4294967295u), 9668u << (global0.x % 32u), ~(~(~(~u_input.e)))), 18u)];
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: bool) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_sub_vec3_i32(u_input.b.xyz, abs(u_input.b.xzy)));
    global0 = ~vec3<u32>(4294967295u, ~_wgslsmith_div_u32(33003u, ~2272u), global0.x);
    var var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(683f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) + _wgslsmith_f_op_f32(sign(arg_1.x))))))));
    var var_3 = select(vec3<bool>(!(!func_3(Struct_2(arg_1, vec3<f32>(arg_1.x, -542f, -522f), Struct_1(var_0.a), 1000f))), arg_0, global2[_wgslsmith_index_u32(u_input.e, 18u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(global0.zz), global0.xz), 18u)], false), false);
    return !vec3<bool>(all(!vec4<bool>(false, var_3.x, true, false)), !select(var_3.x, true, arg_0), true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.e), global0.xx), ~u_input.e) << (countOneBits(vec3<u32>(global0.x, global0.x, 4294967295u)) % vec3<u32>(32u))) & vec3<u32>(global0.x, _wgslsmith_dot_vec2_u32(~global0.xx, vec2<u32>(30143u, global0.x) & vec2<u32>(global0.x, u_input.d)) ^ _wgslsmith_add_u32(firstTrailingBit(0u), global0.x), ~u_input.e);
    let var_0 = ~u_input.a;
    var var_1 = ~(~select(firstLeadingBit(vec3<u32>(global0.x, 0u, 4294967295u)), ~(vec3<u32>(26151u, global0.x, 1u) & vec3<u32>(u_input.d, 4294967295u, 4294967295u)), func_1(vec4<f32>(-1376f, -406f, -355f, 680f))));
    global2 = array<bool, 18>();
    var var_2 = vec4<bool>(!(!global2[_wgslsmith_index_u32(~26184u, 18u)]), all(select(vec3<bool>(!global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(0u, 18u)] != global2[_wgslsmith_index_u32(global0.x, 18u)], false & global2[_wgslsmith_index_u32(var_1.x, 18u)]), func_2(true, _wgslsmith_f_op_vec4_f32(vec4<f32>(101f, 2279f, -483f, -1233f) * vec4<f32>(655f, 291f, 317f, -1039f)), false == global2[_wgslsmith_index_u32(var_1.x, 18u)]), true)), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1462f * 329f)))) * _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1328f * -1150f))))));
}

