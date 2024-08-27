struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<vec2<bool>, 2> = array<vec2<bool>, 2>(vec2<bool>(true, false), vec2<bool>(false, false));

var<private> global2: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(1u, 480u), vec2<u32>(0u, 1u), vec2<u32>(44898u, 44554u), vec2<u32>(4294967295u, 29048u), vec2<u32>(71050u, 0u), vec2<u32>(1987u, 19834u), vec2<u32>(39962u, 20773u), vec2<u32>(0u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(26862u, 4294967295u), vec2<u32>(0u, 47059u), vec2<u32>(12907u, 1u), vec2<u32>(25871u, 0u));

var<private> global3: array<bool, 17>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: f32) -> vec4<i32> {
    global3 = array<bool, 17>();
    global0 = array<i32, 1>();
    global2 = array<vec2<u32>, 13>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 669f, -326f, 1000f), vec4<f32>(arg_0, arg_0, arg_0, 692f)) - _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec4<f32>(-1060f, arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(299f, -388f, 349f, arg_0), vec4<f32>(482f, -104f, -194f, -1947f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(161f, 300f, 380f, -2112f) * vec4<f32>(arg_0, arg_0, 1639f, 2632f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-520f - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(786f, arg_0), 1109f))), _wgslsmith_f_op_f32(-arg_0)), min(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(18824i, -2147483647i, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec4<i32>(10073i, global0[_wgslsmith_index_u32(46778u, 1u)], 23847i, 2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(12208u, 1u)], -1i, 1i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))), (vec4<i32>(global0[_wgslsmith_index_u32(16941u, 1u)], global0[_wgslsmith_index_u32(35452u, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]) & vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 2147483647i, 15542i, 22384i)) | reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 36967i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))) ^ (-_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(536u, 1u)], -1i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 1i), vec4<i32>(24561i, -47150i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 1i)) & -vec4<i32>(32387i, -9144i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(3241u, 1u)])));
    global0 = array<i32, 1>();
    return var_0.c;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_2(arg_2.a, abs(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-arg_1.b, global0[_wgslsmith_index_u32(u_input.a.x & 186u, 1u)]), -2147483647i, _wgslsmith_dot_vec4_i32(-arg_1.d.c, -arg_1.a.c))), _wgslsmith_f_op_f32(f32(-1f) * -165f), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(1936f)), arg_1.a.a.x, arg_2.d.a.x, -558f), 731f, vec4<i32>(_wgslsmith_sub_i32(arg_2.b, 68342i) >> (_wgslsmith_add_u32(1u, u_input.a.x) % 32u), 38961i | _wgslsmith_dot_vec3_i32(arg_2.a.c.wyz, arg_2.a.c.xxw), reverseBits(1i), ~_wgslsmith_dot_vec2_i32(arg_1.a.c.zw, arg_1.d.c.xw))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.d.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a.x, arg_2.d.b, arg_2.a.a.x, -1161f) * var_0.d.a), _wgslsmith_f_op_vec4_f32(exp2(arg_2.d.a)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, u_input.a.x), 17u)])))), _wgslsmith_f_op_f32(-arg_1.d.a.x), vec4<i32>(arg_3, _wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(arg_3, -70236i)), vec2<i32>(32923i, global0[_wgslsmith_index_u32(0u, 1u)]) >> (_wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], vec2<u32>(u_input.a.x, 37915u)) % vec2<u32>(32u))), -1i, i32(-1i) * -var_0.b));
    global0 = array<i32, 1>();
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(var_1.a.zw));
    var var_3 = any(!select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x ^ 118863u, 17u)], arg_0.x, true && global3[_wgslsmith_index_u32(1u, 17u)]), vec3<bool>(all(vec4<bool>(arg_0.x, global3[_wgslsmith_index_u32(40422u, 17u)], arg_0.x, false)), false, false), !(!vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 17u)], global3[_wgslsmith_index_u32(0u, 17u)]))));
    return var_1;
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(func_3(vec2<bool>(true, any(vec3<bool>(global3[_wgslsmith_index_u32(arg_0.x, 17u)], global3[_wgslsmith_index_u32(arg_0.x, 17u)], global3[_wgslsmith_index_u32(arg_0.x, 17u)]))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-674f, 1840f, -193f, -1092f)), -844f, func_2(-342f)), global0[_wgslsmith_index_u32(0u, 1u)], _wgslsmith_f_op_f32(f32(-1f) * -390f), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(455f, -345f, 1000f, -806f) * vec4<f32>(-265f, 1000f, 1193f, 856f)), _wgslsmith_f_op_f32(max(493f, -1222f)), vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], -32299i, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))), Struct_2(Struct_1(vec4<f32>(673f, -778f, -763f, 430f), -819f, vec4<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 1u)], -1i, -13814i)), _wgslsmith_mod_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(98417u, 1u)], 26214i), func_2(1778f).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(548f)) - _wgslsmith_div_f32(-1398f, -1000f)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(226f, -244f, -211f, 155f)), _wgslsmith_f_op_f32(-403f + -1223f), _wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], global0[_wgslsmith_index_u32(arg_0.x, 1u)], 15224i, -2147483647i), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 34835i, 64673i, 0i)))), abs(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, global0[_wgslsmith_index_u32(41143u, 1u)]), vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(arg_0.x, 1u)]))))), select(1i >> ((_wgslsmith_mult_u32(4294967295u, arg_0.x) & 39493u) % 32u), 2147483647i, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(410f + -1000f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1375f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -380f) * 1000f)), func_3(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 17u)], false), Struct_2(func_3(vec2<bool>(global3[_wgslsmith_index_u32(85856u, 17u)], global3[_wgslsmith_index_u32(26988u, 17u)]), Struct_2(Struct_1(vec4<f32>(-264f, 166f, 1775f, -1270f), -1647f, vec4<i32>(global0[_wgslsmith_index_u32(23986u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(1u, 1u)])), -2147483647i, 242f, Struct_1(vec4<f32>(-202f, 268f, 305f, 360f), -728f, vec4<i32>(global0[_wgslsmith_index_u32(8079u, 1u)], -2147483647i, global0[_wgslsmith_index_u32(arg_0.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))), Struct_2(Struct_1(vec4<f32>(-379f, -2303f, 1253f, -1000f), 1303f, vec4<i32>(0i, -40414i, global0[_wgslsmith_index_u32(arg_0.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)])), 37108i, 621f, Struct_1(vec4<f32>(157f, -800f, -935f, -614f), 677f, vec4<i32>(-52483i, -25852i, global0[_wgslsmith_index_u32(8251u, 1u)], global0[_wgslsmith_index_u32(arg_0.x, 1u)]))), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 1u)]), ~(-2147483647i), 606f, func_3(global1[_wgslsmith_index_u32(u_input.a.x & arg_0.x, 2u)], Struct_2(Struct_1(vec4<f32>(-340f, 912f, 404f, -1249f), -663f, vec4<i32>(-22660i, -2147483647i, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(33462u, 1u)])), global0[_wgslsmith_index_u32(arg_0.x, 1u)], 193f, Struct_1(vec4<f32>(141f, 575f, 1109f, 878f), 294f, vec4<i32>(global0[_wgslsmith_index_u32(1u, 1u)], 2147483647i, -2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))), Struct_2(Struct_1(vec4<f32>(185f, -1172f, -1078f, 915f), -792f, vec4<i32>(19422i, 41983i, global0[_wgslsmith_index_u32(126487u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)])), -12042i, 2256f, Struct_1(vec4<f32>(459f, 1000f, -122f, -518f), 268f, vec4<i32>(-16639i, -3540i, -2147483647i, global0[_wgslsmith_index_u32(15764u, 1u)]))), abs(-32512i))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-938f, -182f, 534f, 285f)), _wgslsmith_f_op_f32(1000f - 456f), ~vec4<i32>(-2147483647i, 3873i, 0i, 1i)), ~(~0i), func_3(global1[_wgslsmith_index_u32(countOneBits(u_input.a.x), 2u)], Struct_2(Struct_1(vec4<f32>(910f, 2355f, 290f, 338f), -272f, vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(48139u, 1u)], 66379i, -62341i)), -1i, 1000f, Struct_1(vec4<f32>(-590f, 657f, 451f, -1742f), -1000f, vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(arg_0.x, 1u)], 6670i, global0[_wgslsmith_index_u32(4294967295u, 1u)]))), Struct_2(Struct_1(vec4<f32>(776f, -1000f, -660f, -1000f), 887f, vec4<i32>(13844i, -2147483647i, -33162i, 2147483647i)), 39719i, -143f, Struct_1(vec4<f32>(118f, -579f, -240f, 504f), -1054f, vec4<i32>(0i, 56988i, global0[_wgslsmith_index_u32(0u, 1u)], 2147483647i))), _wgslsmith_dot_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(arg_0.x, 1u)], 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], 0i, -1i))).a.x, func_3(global1[_wgslsmith_index_u32(6120u, 2u)], Struct_2(Struct_1(vec4<f32>(412f, 1283f, -1643f, -208f), 1000f, vec4<i32>(global0[_wgslsmith_index_u32(23724u, 1u)], 0i, global0[_wgslsmith_index_u32(1u, 1u)], -19037i)), 15691i, -1000f, Struct_1(vec4<f32>(876f, 1000f, -363f, 2176f), -1265f, vec4<i32>(1i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 0i, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))), Struct_2(Struct_1(vec4<f32>(464f, -626f, -316f, -1000f), -849f, vec4<i32>(0i, 2147483647i, 2147483647i, global0[_wgslsmith_index_u32(arg_0.x, 1u)])), global0[_wgslsmith_index_u32(1u, 1u)], -736f, Struct_1(vec4<f32>(-985f, -802f, 1258f, -730f), -931f, vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], -38338i))), -2147483647i)), 0i));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d.b)));
    let var_2 = var_0.d.c.xz | var_0.d.c.wx;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -615f), -259f));
    let var_4 = Struct_2(func_3(select(select(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], global3[_wgslsmith_index_u32(34927u, 17u)]), vec2<bool>(false, false), true), select(vec2<bool>(false, global3[_wgslsmith_index_u32(u_input.a.x, 17u)]), global1[_wgslsmith_index_u32(66360u, 2u)], vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], global3[_wgslsmith_index_u32(94514u, 17u)])), true), select(select(global1[_wgslsmith_index_u32(arg_0.x, 2u)], vec2<bool>(false, true), global3[_wgslsmith_index_u32(arg_0.x, 17u)]), !vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], true), all(global1[_wgslsmith_index_u32(163660u, 2u)])), global1[_wgslsmith_index_u32(max(~arg_0.x, 1u), 2u)]), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1211f, var_1, 213f, var_1))), _wgslsmith_f_op_f32(sign(1286f)), vec4<i32>(var_2.x, -6301i, 1i, 1i)), ~(~0i), _wgslsmith_f_op_f32(f32(-1f) * -1713f), Struct_1(vec4<f32>(var_1, var_1, var_0.a.b, var_0.a.b), _wgslsmith_f_op_f32(f32(-1f) * -1009f), ~vec4<i32>(var_2.x, var_0.b, -29796i, global0[_wgslsmith_index_u32(arg_0.x, 1u)]))), Struct_2(func_3(global1[_wgslsmith_index_u32(1u, 2u)], Struct_2(Struct_1(var_0.a.a, var_0.d.a.x, vec4<i32>(30652i, var_2.x, 0i, var_0.b)), -1302i, -1538f, var_0.d), Struct_2(Struct_1(var_0.d.a, -363f, var_0.d.c), -1i, 1693f, var_0.d), var_2.x), var_2.x | max(0i, var_2.x), _wgslsmith_div_f32(var_3, -236f), Struct_1(vec4<f32>(var_3, var_3, 419f, var_3), _wgslsmith_f_op_f32(var_1 - var_0.a.b), vec4<i32>(var_2.x, -30725i, -20690i, var_2.x))), -1i), var_0.d.c.x, -749f, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.a.x, -2410f, var_1, var_3))))), var_1, vec4<i32>(countOneBits(-var_0.d.c.x), var_2.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(25644u, 1u)], var_0.d.c.x, -1i, -1i), var_0.a.c), -53957i), 1i)));
    return var_4;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = var_0.d.c.yz;
    var var_2 = arg_0.d;
    let var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0.d.a.yx * _wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 17u)], true), arg_0, arg_0, arg_0.b).a.zz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, -155f)))), _wgslsmith_f_op_vec2_f32(max(arg_2.yx, func_1(select(vec4<u32>(u_input.a.x, u_input.a.x, 64384u, u_input.a.x), u_input.a, vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 17u)], false, global3[_wgslsmith_index_u32(1u, 17u)]))).a.a.zy)), global1[_wgslsmith_index_u32(abs(~_wgslsmith_add_u32(774u, 28510u)), 2u)]))));
    var var_4 = 2725u;
    return Struct_1(arg_0.a.a, arg_2.x, vec4<i32>(22434i, -(~_wgslsmith_sub_i32(arg_1, 28052i)), var_1.x, var_2.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 1>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -334f), _wgslsmith_f_op_f32(min(-701f, -876f)), -349f, _wgslsmith_f_op_f32(f32(-1f) * -315f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1803f, -528f, 2539f, 1000f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-609f, -958f, 852f, -540f), vec4<f32>(-2069f, 2029f, -607f, -348f), vec4<bool>(global3[_wgslsmith_index_u32(1u, 17u)], true, true, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -108f) * -711f)), firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(103600u, 1u)], 1i, global0[_wgslsmith_index_u32(0u, 1u)]) >> (~u_input.a % vec4<u32>(32u)))), -22170i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -342f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1666f) + -1258f) * 1489f))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(785f * -662f)), -910f, _wgslsmith_f_op_f32(f32(-1f) * -1697f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1912f, 672f)) - _wgslsmith_f_op_f32(1021f - -522f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1173f, -1232f)), 1376f), 1664f)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], -1i, 52863i, global0[_wgslsmith_index_u32(34106u, 1u)]), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], 0i, -1i, global0[_wgslsmith_index_u32(72986u, 1u)]) & vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(33661u, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]))));
    var var_1 = global3[_wgslsmith_index_u32(u_input.a.x, 17u)];
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_0.d.a.zw);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_0.d.a))), _wgslsmith_f_op_f32(-var_0.a.b), ~vec4<i32>(~(-3568i), _wgslsmith_clamp_i32(3480i, 2147483647i, 2147483647i), ~87468i, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.xx), 1u)]) >> (~(~u_input.a) % vec4<u32>(32u)));
    var var_4 = Struct_2(var_3, global0[_wgslsmith_index_u32(u_input.a.x >> ((~(~34940u) << (u_input.a.x % 32u)) % 32u), 1u)], _wgslsmith_f_op_f32(-var_0.c), func_4(func_1(firstTrailingBit(vec4<u32>(34542u, u_input.a.x, 21879u, 0u) << (vec4<u32>(1u, 1u, 13390u, 1u) % vec4<u32>(32u)))), 2147483647i, vec4<f32>(var_3.a.x, var_3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -723f)), var_3.a.x), func_2(_wgslsmith_f_op_f32(f32(-1f) * -1406f)).yww));
    var var_5 = Struct_2(var_3, reverseBits(-2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(var_4.d.a.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.c))))), var_0.d);
    var var_6 = Struct_2(var_5.a, firstLeadingBit(var_5.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a.x)), var_5.d);
    let var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(abs(29344u));
}

