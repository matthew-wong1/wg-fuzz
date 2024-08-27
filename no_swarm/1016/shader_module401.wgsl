struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

var<private> global1: array<bool, 30> = array<bool, 30>(true, false, true, false, true, true, false, false, false, false, true, false, false, true, true, false, false, true, true, false, false, false, true, true, true, false, true, false, true, true);

var<private> global2: Struct_1 = Struct_1(false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(1u), 30u)];
    let var_1 = vec3<u32>(4294967295u & ~u_input.d.x, 1u, 31169u) >> (vec3<u32>(0u, abs(2607u), ~(~(~4294967295u))) % vec3<u32>(32u));
    global2 = Struct_1(false);
    var var_2 = Struct_2(~(~(u_input.c | 4294967295u)), vec4<f32>(_wgslsmith_f_op_f32(-arg_1), 1767f, -276f, 1f), Struct_1(false), global1[_wgslsmith_index_u32(var_1.x, 30u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 1897f, 194f) + var_2.b.zzy))) * var_2.b.xzy)))));
    return var_1.x;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    let var_0 = -max(-abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -13284i), vec2<i32>(-42227i, 21393i))), -u_input.b);
    global1 = array<bool, 30>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3405f) + _wgslsmith_f_op_f32(-1000f * -1632f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1830f) * _wgslsmith_f_op_f32(519f + 480f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1286f, -1000f) * -331f)))), vec3<f32>(1f, 1f, 1f));
    global1 = array<bool, 30>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_1.x - -194f), -307f, _wgslsmith_f_op_f32(exp2(var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-949f, var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_1.x))))) + _wgslsmith_f_op_f32(1757f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)))));
    return -1046f;
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: vec2<bool>) -> bool {
    let var_0 = Struct_1(arg_2.x);
    global1 = array<bool, 30>();
    let var_1 = ~vec4<u32>(u_input.d.x ^ _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.d.x), vec4<u32>(u_input.d.x, 19136u, u_input.c, u_input.c))), 39121u, 1u, _wgslsmith_sub_u32(u_input.d.x, 0u));
    global1 = array<bool, 30>();
    let var_2 = Struct_2(~_wgslsmith_dot_vec3_u32(firstLeadingBit(var_1.zyz), vec3<u32>(71350u, ~1u, ~var_1.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_1(true), Struct_1(true), global0[_wgslsmith_index_u32(4294967295u, 14u)])), _wgslsmith_div_f32(arg_0, arg_1), arg_0, _wgslsmith_f_op_f32(-582f * 1291f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -1076f, arg_1, 326f)))), var_0, 0i >= ((firstTrailingBit(u_input.a) & _wgslsmith_add_i32(u_input.a, u_input.b)) | firstLeadingBit(min(-23863i, 764i))));
    return (global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~var_2.a), ~15910u), 30u)] && true) | all(select(!select(vec4<bool>(true, false, false, arg_2.x), vec4<bool>(var_2.c.a, true, var_0.a, var_2.c.a), vec4<bool>(false, true, global2.a, arg_2.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.x, true, true, global1[_wgslsmith_index_u32(38453u, 30u)]), vec4<bool>(var_0.a, global2.a, global1[_wgslsmith_index_u32(u_input.c, 30u)], var_0.a)), vec4<bool>(all(vec2<bool>(var_2.d, global2.a)), all(arg_2), global1[_wgslsmith_index_u32(u_input.c, 30u)] || true, false != arg_2.x)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(any(vec3<bool>(true, any(!vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 30u)], false)), select(any(vec3<bool>(false, global2.a, global1[_wgslsmith_index_u32(62582u, 30u)])), false, global2.a))));
    global1 = array<bool, 30>();
    var var_1 = ~min(u_input.d.x, u_input.d.x);
    var var_2 = Struct_2(u_input.d.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-4624f, -398f, 1829f, -338f) + vec4<f32>(1355f, 1000f, -549f, 1264f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1185f, -1549f, -254f, 1000f)), !vec4<bool>(true, true, global2.a, false))))), vec4<f32>(-2016f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2090f * 1078f), -1437f, global1[_wgslsmith_index_u32(0u, 30u)])), _wgslsmith_f_op_f32(-947f - _wgslsmith_f_op_f32(1716f + -2577f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f - 216f)))), Struct_1(u_input.a == u_input.b), func_5(_wgslsmith_f_op_f32(func_4(Struct_1(false), Struct_1(true), global0[_wgslsmith_index_u32(func_3(u_input.b, -126f), 14u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(153f, 1793f)) + _wgslsmith_f_op_f32(max(-1658f, -1000f))), select(vec2<bool>(true, true), vec2<bool>(var_0.a, global1[_wgslsmith_index_u32(u_input.c, 30u)]), select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(global1[_wgslsmith_index_u32(40081u, 30u)], false), vec2<bool>(false, global2.a)))) & true);
    var var_3 = Struct_1(global1[_wgslsmith_index_u32(~func_3(-_wgslsmith_mult_i32(u_input.b, 29681i), -517f), 30u)]);
    return false;
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    var var_0 = !(!(!vec4<bool>(false, global2.a && global2.a, func_2(), func_2())));
    let var_1 = !select(false, !all(!var_0.xx), var_0.x);
    let var_2 = _wgslsmith_dot_vec4_u32(~(~firstTrailingBit(max(vec4<u32>(u_input.c, 84951u, 0u, 81894u), vec4<u32>(u_input.d.x, u_input.c, arg_0.x, arg_0.x)))), ~(~(~select(vec4<u32>(85018u, u_input.c, 0u, 1852u), vec4<u32>(3695u, 1335u, u_input.c, 11956u), vec4<bool>(global2.a, var_0.x, false, true)))));
    var var_3 = (var_2 << (u_input.c % 32u)) | (_wgslsmith_clamp_u32(arg_0.x, var_2, u_input.d.x) & _wgslsmith_mult_u32(~(~1u), 38503u));
    global1 = array<bool, 30>();
    return Struct_2(47847u, _wgslsmith_div_vec4_f32(vec4<f32>(2016f, _wgslsmith_f_op_f32(f32(-1f) * -138f), _wgslsmith_f_op_f32(min(161f, -1321f)), 1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(440f, -896f, true)), -1153f, _wgslsmith_f_op_f32(-625f - -275f), _wgslsmith_f_op_f32(1334f * 518f)))), Struct_1(true), !(0u >= firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(30484u, u_input.c), vec2<u32>(20754u, 4294967295u)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<u32>) -> vec2<f32> {
    let var_0 = min(arg_3.xzx, arg_3.xzx);
    let var_1 = !select(vec3<bool>(true, true, true), select(!(!vec3<bool>(false, arg_1.c.a, false)), select(vec3<bool>(true, global1[_wgslsmith_index_u32(316u, 30u)], arg_1.c.a), vec3<bool>(true, global2.a, true), arg_0.a), !select(vec3<bool>(global1[_wgslsmith_index_u32(100976u, 30u)], false, global2.a), vec3<bool>(arg_0.a, global1[_wgslsmith_index_u32(4294967295u, 30u)], true), arg_1.d)), vec3<bool>(func_1(vec2<u32>(arg_1.a, var_0.x)).d, true != any(vec4<bool>(global1[_wgslsmith_index_u32(0u, 30u)], arg_0.a, false, global2.a)), min(31207i, -2147483647i) >= -u_input.b));
    var var_2 = (~_wgslsmith_sub_vec2_u32(max(arg_3.xy, vec2<u32>(arg_1.a, 1u)), vec2<u32>(u_input.c, 30915u)) | var_0.xx) ^ vec2<u32>(arg_3.x, ~99704u);
    global2 = Struct_1((i32(-1i) * -_wgslsmith_sub_i32(u_input.a, u_input.b)) > _wgslsmith_clamp_i32(_wgslsmith_add_i32(~39811i, u_input.a), -15654i, -29892i));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_2)));
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(677f, var_3.x) - _wgslsmith_div_f32(-1052f, _wgslsmith_f_op_f32(arg_2.x * var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x + _wgslsmith_div_f32(arg_2.x, arg_1.b.x))) * 414f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1611f))));
    let var_2 = abs(vec3<i32>(-((11128i & u_input.b) & -u_input.a), -1i, -u_input.a));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_6(Struct_1(!global1[_wgslsmith_index_u32(~var_0.x, 30u)]), func_1(firstLeadingBit(vec2<u32>(u_input.c, 44318u))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1592f, var_1, 690f)), vec3<f32>(-652f, -2234f, 1000f), all(vec2<bool>(false, false)))), vec3<f32>(1000f, -527f, 1311f))), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(42069u, var_0.x, var_0.x, 1u), vec4<u32>(1u, var_0.x, u_input.c, 4294967295u)) << ((vec4<u32>(var_0.x, var_0.x, u_input.d.x, 14064u) << (vec4<u32>(65478u, u_input.d.x, u_input.c, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))))));
    var var_4 = func_3(~(-(~(i32(-1i) * -48989i))), -266f);
    let var_5 = func_1(var_0).c;
    global2 = Struct_1(!(func_1(countOneBits(var_0)).b.x <= var_1));
    var var_6 = func_1(abs(_wgslsmith_mod_vec2_u32(u_input.d, ~select(vec2<u32>(1u, 3606u), var_0, true)))).c;
    global1 = array<bool, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_3.x + -585f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(758f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1, var_1)))))), -2147483647i, var_1, 0i);
}

