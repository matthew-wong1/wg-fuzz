struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -526f;

var<private> global1: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(78423u, 4294967295u, 95213u, 14599u), vec4<u32>(0u, 0u, 1151u, 1u), vec4<u32>(4294967295u, 0u, 22124u, 26574u), vec4<u32>(11525u, 54409u, 96205u, 38970u), vec4<u32>(12940u, 1u, 0u, 4294967295u), vec4<u32>(0u, 5072u, 7494u, 41124u), vec4<u32>(4171u, 41781u, 0u, 38361u), vec4<u32>(26128u, 32334u, 4294967295u, 0u), vec4<u32>(4294967295u, 65269u, 8293u, 4988u), vec4<u32>(38111u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 0u, 7360u, 1u), vec4<u32>(0u, 0u, 0u, 42551u), vec4<u32>(1u, 4294967295u, 4294967295u, 79201u), vec4<u32>(13956u, 1697u, 0u, 14727u), vec4<u32>(4294967295u, 0u, 4294967295u, 51954u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(1u, 1u, 0u, 1u), vec4<u32>(1u, 28900u, 0u, 1u));

var<private> global2: vec4<u32>;

var<private> global3: array<i32, 2>;

var<private> global4: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(0i, vec4<f32>(1135f, -1014f, 2000f, 789f), 819f), Struct_1(2147483647i, vec4<f32>(1180f, -828f, 1000f, 1081f), -1636f), Struct_1(-17149i, vec4<f32>(1000f, -1455f, 607f, -1879f), 221f), Struct_1(1i, vec4<f32>(-405f, -845f, -1000f, 1231f), 1000f), Struct_1(2147483647i, vec4<f32>(114f, 2177f, 1032f, -118f), -259f), Struct_1(2147483647i, vec4<f32>(-370f, 623f, 844f, 1222f), -884f), Struct_1(-1i, vec4<f32>(-1377f, 1012f, -1848f, 454f), -881f), Struct_1(-1i, vec4<f32>(2773f, 499f, -394f, -225f), 1257f), Struct_1(i32(-2147483648), vec4<f32>(780f, -539f, -676f, 845f), -2191f), Struct_1(i32(-2147483648), vec4<f32>(314f, -942f, -143f, -1328f), -183f), Struct_1(0i, vec4<f32>(-540f, -848f, -739f, 623f), -281f), Struct_1(23430i, vec4<f32>(1004f, 698f, -1000f, 970f), 1000f), Struct_1(-25208i, vec4<f32>(-1155f, -341f, 1416f, -566f), 311f), Struct_1(30604i, vec4<f32>(704f, 966f, 1000f, -735f), -361f), Struct_1(8009i, vec4<f32>(-117f, 933f, -295f, -1866f), 361f), Struct_1(-17709i, vec4<f32>(968f, -453f, -146f, -1278f), -1468f), Struct_1(1i, vec4<f32>(372f, -397f, 309f, 191f), 299f), Struct_1(38465i, vec4<f32>(1008f, -285f, 201f, -1461f), -2108f), Struct_1(68196i, vec4<f32>(-870f, 463f, 637f, 302f), -558f), Struct_1(2147483647i, vec4<f32>(497f, -1904f, 1460f, 822f), 809f), Struct_1(-96993i, vec4<f32>(-1082f, -972f, -848f, -1723f), -744f), Struct_1(29693i, vec4<f32>(301f, -183f, -242f, 333f), 130f), Struct_1(15188i, vec4<f32>(751f, -1967f, -391f, 379f), -179f), Struct_1(33182i, vec4<f32>(204f, -1177f, -1385f, 770f), -2117f), Struct_1(-18162i, vec4<f32>(-823f, 120f, 424f, 413f), -204f), Struct_1(37699i, vec4<f32>(-1485f, -135f, 799f, 1000f), -127f), Struct_1(1i, vec4<f32>(517f, -163f, -970f, -1009f), -326f), Struct_1(-24353i, vec4<f32>(346f, 1310f, 1044f, -292f), 694f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(max(~_wgslsmith_div_u32(~u_input.b.x, max(u_input.c.x, global2.x)), u_input.c.x) >> (~0u % 32u), 28u)];
    var var_1 = u_input.d.wyw;
    let var_2 = arg_0;
    global0 = -1063f;
    global4 = array<Struct_1, 28>();
    return Struct_1(select(14478i, max(arg_0.a, ~u_input.d.x), !(u_input.b.x >= 10927u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1381f, 1426f, arg_0.b.x, -219f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, -546f, 1000f, arg_0.c) - _wgslsmith_div_vec4_f32(arg_0.b, vec4<f32>(118f, -515f, var_2.b.x, -394f))))), -391f);
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_1(global3[_wgslsmith_index_u32(89617u, 2u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1004f, 146f, 709f, 300f)))) - vec4<f32>(970f, _wgslsmith_f_op_f32(step(-1092f, -1011f)), 1202f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 100f);
    var var_1 = ~reverseBits(vec3<u32>(_wgslsmith_add_u32(1u, ~global2.x), arg_0, 0u));
    var var_2 = Struct_1(-1i, func_2(func_2(Struct_1(var_0.a ^ 47089i, var_0.b, _wgslsmith_f_op_f32(var_0.b.x + -1000f)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true))), select(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), all(vec3<bool>(true, false, false)))).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global2.x, 4294967295u), 28u)];
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(813f * var_2.b.x) - _wgslsmith_f_op_f32(var_2.b.x - -1270f)))))));
    return ~(~1u << (~_wgslsmith_add_u32(~28271u, 4294967295u ^ global2.x) % 32u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> f32 {
    global4 = array<Struct_1, 28>();
    let var_0 = global2.zzy;
    let var_1 = vec4<i32>(_wgslsmith_add_i32(global3[_wgslsmith_index_u32(u_input.c.x, 2u)], abs(arg_2.a)) | _wgslsmith_div_i32(20220i, ~global3[_wgslsmith_index_u32(global2.x, 2u)]), ~(-arg_0.a), ~(-1i | arg_0.a), arg_0.a) >> (((global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(var_0.x, global2.x, 1u)), countOneBits(vec3<u32>(global2.x, 67055u, var_0.x))), 18u)] >> (vec4<u32>(~var_0.x, _wgslsmith_mult_u32(u_input.b.x, 36827u), global2.x, ~u_input.b.x) % vec4<u32>(32u))) ^ (global1[_wgslsmith_index_u32(firstLeadingBit(max(var_0.x, u_input.b.x)), 18u)] << (~(~global1[_wgslsmith_index_u32(1u, 18u)]) % vec4<u32>(32u)))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_f32(trunc(-597f));
    let var_2 = global4[_wgslsmith_index_u32(1u, 28u)];
    return 645f;
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: u32) -> vec4<f32> {
    global3 = array<i32, 2>();
    global2 = vec4<u32>(~countOneBits(~u_input.c.x), 41454u, 117368u, firstLeadingBit(global2.x << (global2.x % 32u)));
    var var_0 = _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(Struct_1(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], vec4<f32>(-1000f, 706f, 1338f, -1274f), -679f), vec4<bool>(false, true, true, false)), global4[_wgslsmith_index_u32(u_input.b.x, 28u)], global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(arg_2), func_3(5866u)), 28u)], true))));
    var var_1 = 525f;
    global1 = array<vec4<u32>, 18>();
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1034f, -505f, 658f, -1146f) + vec4<f32>(651f, 426f, -253f, -544f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-315f, -1000f, -732f, -938f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-659f, 134f, 459f, 1000f), vec4<f32>(1178f, -269f, 1000f, -1023f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 28>();
    let var_0 = global3[_wgslsmith_index_u32(64448u, 2u)];
    global2 = ~reverseBits(vec4<u32>(0u, _wgslsmith_sub_u32(_wgslsmith_clamp_u32(63211u, 0u, u_input.b.x), u_input.b.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b.x, 22600u), ~global2.xxw), _wgslsmith_clamp_u32(global2.x, min(u_input.c.x, u_input.b.x), 1u)));
    var var_1 = global1[_wgslsmith_index_u32(1u, 18u)];
    let var_2 = Struct_1(-global3[_wgslsmith_index_u32(4294967295u, 2u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(1534f, -636f, -492f, 1523f) * vec4<f32>(244f, -1575f, -251f, 1695f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1547f, 1461f, -741f, 1000f), _wgslsmith_f_op_vec4_f32(func_1(-60842i, vec3<i32>(u_input.d.x, global3[_wgslsmith_index_u32(u_input.b.x, 2u)], u_input.d.x), u_input.c.x)))), select(vec4<bool>(false, false, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true)), true))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2143f, 939f, -1102f, 722f)) * vec4<f32>(-441f, 1650f, 1125f, -815f)))), -328f);
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, u_input.d, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(firstLeadingBit(0u), 2u)], _wgslsmith_clamp_i32(~1i, -50616i, var_2.a) & 1i), _wgslsmith_clamp_vec4_i32(u_input.d, u_input.d, u_input.d), _wgslsmith_f_op_vec4_f32(func_1(var_2.a, ~select(-vec3<i32>(-53843i, var_2.a, global3[_wgslsmith_index_u32(var_1.x, 2u)]), firstLeadingBit(vec3<i32>(var_2.a, 32410i, u_input.d.x)), true), 4294967295u)).x);
}

