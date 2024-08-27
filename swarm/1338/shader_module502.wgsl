struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: i32,
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

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), 0u, vec2<f32>(657f, -597f), vec2<f32>(1490f, -1000f), vec3<f32>(2215f, -123f, -920f));

var<private> global1: array<vec3<i32>, 19>;

var<private> global2: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(4294967295u, 1u, 8091u), vec3<u32>(4294967295u, 4294967295u, 63027u), vec3<u32>(4294967295u, 49672u, 76332u), vec3<u32>(3611u, 64600u, 21758u), vec3<u32>(18166u, 4294967295u, 0u), vec3<u32>(67335u, 358u, 9362u), vec3<u32>(34206u, 4294967295u, 1u), vec3<u32>(1u, 71201u, 4294967295u));

var<private> global3: array<vec2<bool>, 12>;

var<private> global4: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec2<bool>(true, false), 4294967295u, vec2<f32>(713f, -148f), vec2<f32>(694f, -1824f), vec3<f32>(-891f, 1244f, 1239f)), Struct_1(vec2<bool>(true, false), 4294967295u, vec2<f32>(-547f, -206f), vec2<f32>(508f, -980f), vec3<f32>(-149f, 775f, -1811f)), Struct_1(vec2<bool>(true, false), 111802u, vec2<f32>(1617f, 530f), vec2<f32>(1535f, -195f), vec3<f32>(-803f, 1000f, 289f)), Struct_1(vec2<bool>(true, true), 0u, vec2<f32>(-929f, 1754f), vec2<f32>(732f, -342f), vec3<f32>(-1450f, -1081f, -665f)), Struct_1(vec2<bool>(false, false), 0u, vec2<f32>(298f, -733f), vec2<f32>(1698f, 1000f), vec3<f32>(2504f, -2072f, 1504f)), Struct_1(vec2<bool>(false, true), 0u, vec2<f32>(298f, 115f), vec2<f32>(443f, -222f), vec3<f32>(-908f, 1000f, 619f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    var var_0 = 26745u;
    var var_1 = u_input.a;
    var var_2 = Struct_1(global0.a, ~_wgslsmith_mod_u32(~(~global0.b), u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(225f)) * _wgslsmith_f_op_f32(trunc(-985f)))), -612f), _wgslsmith_div_vec2_f32(global0.d, _wgslsmith_f_op_vec2_f32(-global0.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1227f, global0.d.x, 281f)), global0.e)), _wgslsmith_f_op_vec3_f32(select(global0.e, vec3<f32>(-101f, global0.d.x, 312f), select(vec3<bool>(true, global0.a.x, true), vec3<bool>(true, global0.a.x, global0.a.x), global0.a.x)))))));
    var var_3 = Struct_1(!select(select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), !vec2<bool>(global0.a.x, false), !global3[_wgslsmith_index_u32(87644u, 12u)]), select(global0.a, !global0.a, !var_2.a), !any(vec4<bool>(var_2.a.x, true, true, false))), ~(~var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -132f), _wgslsmith_f_op_f32(-768f * var_2.e.x)) - _wgslsmith_div_vec2_f32(vec2<f32>(1000f, var_2.e.x), vec2<f32>(791f, -1881f))) + vec2<f32>(1147f, global0.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(808f, var_2.c.x))) - _wgslsmith_f_op_vec2_f32(-global0.e.yx)))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1045f + -169f))), global0.c.x)), global0.e);
    global0 = global4[_wgslsmith_index_u32(global0.b, 6u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-790f - var_3.c.x)))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> vec4<bool> {
    global1 = array<vec3<i32>, 19>();
    global2 = array<vec3<u32>, 8>();
    global2 = array<vec3<u32>, 8>();
    let var_0 = ~66058u;
    var var_1 = 6693u <= ~((arg_1.b << (var_0 % 32u)) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.c, 37481u, global0.b), vec4<u32>(14861u, var_0, 54796u, 1u)));
    return vec4<bool>(global0.a.x, true, arg_1.a.x, arg_1.a.x);
}

fn func_2() -> vec4<bool> {
    let var_0 = global4[_wgslsmith_index_u32(21290u, 6u)];
    global2 = array<vec3<u32>, 8>();
    global1 = array<vec3<i32>, 19>();
    global1 = array<vec3<i32>, 19>();
    let var_1 = Struct_1(var_0.a, _wgslsmith_mult_u32(~u_input.a.x & ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, u_input.a.x, global0.b, 1u), vec4<u32>(0u, global0.b, 1u, global0.b)), ~44223u), _wgslsmith_f_op_vec2_f32(exp2(var_0.e.zy)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-542f, var_0.d.x)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -266f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.e.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.c.x, global0.e.x)))))));
    return select(!func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(min(868f, -629f))), Struct_1(vec2<bool>(global0.a.x, true), 26484u, var_0.c, _wgslsmith_f_op_vec2_f32(max(global0.e.zz, global0.c)), vec3<f32>(156f, 439f, 1014f))), vec4<bool>(true, false, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, -1i), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.e, 1i), vec2<i32>(0i, 0i))) > ~u_input.b, var_1.a.x), !(!(!(!vec4<bool>(var_0.a.x, false, global0.a.x, var_1.a.x)))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = select(select(vec4<bool>(!(!arg_1.a.x), any(select(vec3<bool>(true, true, false), vec3<bool>(global0.a.x, false, false), vec3<bool>(arg_1.a.x, false, arg_1.a.x))), _wgslsmith_dot_vec3_u32(vec3<u32>(global0.b, u_input.a.x, 4294967295u), global2[_wgslsmith_index_u32(1u, 8u)]) != 4294967295u, arg_2.a.x), select(select(!vec4<bool>(arg_1.a.x, arg_2.a.x, true, arg_2.a.x), vec4<bool>(arg_1.a.x, true, arg_1.a.x, global0.a.x), vec4<bool>(true, true, arg_2.a.x, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), select(vec4<bool>(arg_1.a.x | arg_1.a.x, 0u != global0.b, !global0.a.x, true), !vec4<bool>(true, false, false, global0.a.x), select(!vec4<bool>(true, false, true, arg_1.a.x), !vec4<bool>(true, true, arg_2.a.x, arg_2.a.x), !vec4<bool>(false, arg_1.a.x, false, arg_1.a.x)))), !select(!vec4<bool>(true, arg_1.a.x, global0.a.x, global0.a.x), func_2(), all(select(vec4<bool>(true, true, arg_1.a.x, arg_2.a.x), vec4<bool>(true, arg_2.a.x, false, true), global0.a.x))), false);
    global1 = array<vec3<i32>, 19>();
    var var_1 = Struct_1(vec2<bool>(arg_2.b >= arg_2.b, all(func_2().ywz)), _wgslsmith_mod_u32(abs(arg_1.b), ~countOneBits(reverseBits(1u))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.e.x, -1186f, true))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.c.x, 162f)) - _wgslsmith_f_op_f32(ceil(-487f))))), vec2<f32>(arg_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(197f + _wgslsmith_f_op_f32(arg_1.c.x - arg_2.c.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(arg_1.e, _wgslsmith_f_op_vec3_f32(-global0.e))), vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.c.x)), 1505f, _wgslsmith_f_op_f32(global0.d.x - -1419f)))))));
    let var_2 = ~(~_wgslsmith_mult_u32(u_input.c, abs(83841u)) ^ 4294967295u);
    let var_3 = func_4(arg_1.d.x, global4[_wgslsmith_index_u32(arg_0, 6u)]).zwx;
    return global0.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(max(global0.e.x, -1314f)), _wgslsmith_f_op_f32(func_1(46024u, global4[_wgslsmith_index_u32(1u, 6u)], Struct_1(global3[_wgslsmith_index_u32(59914u, 12u)], global0.b, vec2<f32>(-102f, 891f), global0.e.zx, vec3<f32>(global0.e.x, -369f, -821f)))), _wgslsmith_f_op_f32(func_1(38410u, Struct_1(global0.a, global0.b, global0.e.yx, vec2<f32>(global0.c.x, 473f), vec3<f32>(267f, -886f, global0.e.x)), global4[_wgslsmith_index_u32(u_input.c, 6u)])))))));
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(487f + var_0.x))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-829f - 999f), 660f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.x + -1665f)), _wgslsmith_f_op_f32(var_0.x + global0.c.x)))))));
    global1 = array<vec3<i32>, 19>();
    var var_2 = ~8558u;
    let var_3 = Struct_1(global0.a, countOneBits(countOneBits(_wgslsmith_dot_vec3_u32(~u_input.d, vec3<u32>(19517u, u_input.c, 4294967295u)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 1481f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(225f, global0.c.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global0.d, vec2<f32>(var_1, var_1)) - _wgslsmith_f_op_vec2_f32(-global0.e.xy))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(var_0.wx)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(203f, -155f, var_0.x))), _wgslsmith_f_op_vec3_f32(abs(var_0.yxw))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-720f, 130f, var_0.x), var_0.xww))))) + _wgslsmith_f_op_vec3_f32(var_0.zxy - vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 445f), _wgslsmith_f_op_f32(min(523f, 1303f)), _wgslsmith_f_op_f32(-274f * -1044f)))));
    global4 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(475f - global0.c.x)));
}

