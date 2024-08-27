struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 30909u;

var<private> global1: bool;

var<private> global2: array<i32, 2>;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(-1151f, 4294967295u), Struct_1(-1000f, 66975u), Struct_1(-1000f, 0u), Struct_1(1000f, 1u), Struct_1(1360f, 0u), Struct_1(704f, 8154u), Struct_1(460f, 34170u), Struct_1(1022f, 7932u), Struct_1(611f, 26792u), Struct_1(-2017f, 26085u), Struct_1(1000f, 1u), Struct_1(1000f, 0u), Struct_1(2210f, 66297u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> u32 {
    global3 = array<Struct_1, 13>();
    var var_0 = u_input.e.wxx << ((_wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, 51645u, arg_0.b) & vec3<u32>(72388u, 102400u, u_input.e.x), u_input.e.yyw) & select(vec3<u32>(68717u, ~30063u, ~arg_0.b), ~vec3<u32>(42428u, 1u, arg_0.b), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), false)))) % vec3<u32>(32u));
    let var_1 = Struct_1(arg_0.a, 1u);
    global0 = reverseBits(~min(~u_input.d, ~15475u));
    let var_2 = !(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    return arg_0.b;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(907f + 1484f))), -481f))));
    var var_1 = _wgslsmith_f_op_f32(min(-1146f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0, var_0), 529f) + _wgslsmith_f_op_f32(f32(-1f) * -179f))));
    let var_2 = !(!select(vec3<bool>(true, true, all(vec2<bool>(true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), all(vec3<bool>(false, true, false))));
    var var_3 = ~_wgslsmith_dot_vec2_i32(min(-vec2<i32>(global2[_wgslsmith_index_u32(u_input.e.x, 2u)], u_input.a.x) >> (u_input.e.zw % vec2<u32>(32u)), ~abs(vec2<i32>(-33579i, 14224i))), u_input.c.xw);
    let var_4 = global3[_wgslsmith_index_u32(select(u_input.d, firstTrailingBit(24436u), var_2.x), 13u)];
    return _wgslsmith_div_u32(1u, var_4.b);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-592f, arg_3.a)));
    global1 = true;
    var var_1 = true;
    var var_2 = vec3<u32>(~20683u, _wgslsmith_mod_u32(0u, ~_wgslsmith_sub_u32(func_2(Struct_1(-709f, 1u)), ~u_input.d)), func_3());
    var var_3 = 15945i;
    return Struct_1(_wgslsmith_f_op_f32(var_0.x + -830f), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u >> (~4294967295u % 32u), abs(arg_1.b)), 39690u, _wgslsmith_div_u32(var_2.x, firstTrailingBit(~82095u))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_1(all(vec2<bool>(all(vec2<bool>(true, true)), true)) || (-973f != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(arg_0.a, arg_0.a, true))))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * 777f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-749f * arg_0.a)))), arg_0.b), u_input.e, arg_0);
    global3 = array<Struct_1, 13>();
    global1 = true;
    global0 = u_input.d;
    global3 = array<Struct_1, 13>();
    return func_1(all(vec4<bool>(true, true, true, true)), func_1(any(vec4<bool>(0u <= var_0.b, true, true, true)), func_1(!any(vec3<bool>(true, false, false)), func_1(true, Struct_1(var_0.a, arg_0.b), min(vec4<u32>(29318u, var_0.b, 1u, u_input.d), u_input.e), func_1(false, Struct_1(var_0.a, u_input.e.x), vec4<u32>(arg_0.b, u_input.e.x, 1u, u_input.d), Struct_1(var_0.a, 85176u))), u_input.e, Struct_1(var_0.a, func_1(true, global3[_wgslsmith_index_u32(4152u, 13u)], u_input.e, Struct_1(var_0.a, arg_0.b)).b)), vec4<u32>(37696u, 1u, u_input.d, func_3() & firstTrailingBit(arg_0.b)), global3[_wgslsmith_index_u32(~firstTrailingBit(33792u), 13u)]), ~_wgslsmith_mod_vec4_u32(u_input.e, max(_wgslsmith_div_vec4_u32(u_input.e, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u)), max(u_input.e, vec4<u32>(var_0.b, u_input.d, var_0.b, arg_0.b)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1955f) * -626f), ~58530u));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_1 {
    global3 = array<Struct_1, 13>();
    global2 = array<i32, 2>();
    let var_0 = _wgslsmith_sub_u32(0u, arg_0.b);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a), ~var_0);
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a, var_1.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(860f, -1000f) * vec2<f32>(arg_2, 751f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, -875f), vec2<f32>(arg_2, -413f)))))), vec2<f32>(433f, 1000f));
    return func_1(any(select(!select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), false), all(vec4<bool>(true, true, true, true)))), arg_1, ~min(vec4<u32>(func_3(), ~1946u, 0u, 1u), ~(vec4<u32>(u_input.d, 0u, u_input.d, var_1.b) ^ u_input.e)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_1(true, global3[_wgslsmith_index_u32(~firstLeadingBit(1u), 13u)], ~vec4<u32>(u_input.e.x, u_input.e.x, 1u, u_input.e.x), Struct_1(_wgslsmith_f_op_f32(-1000f * -1000f), ~u_input.e.x))), Struct_1(-395f, ~u_input.d & u_input.e.x), _wgslsmith_f_op_f32(-712f * -1257f), _wgslsmith_dot_vec3_u32(reverseBits(u_input.e.wxy), firstTrailingBit(reverseBits(~u_input.e.xzx))));
    global0 = var_0.b;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.a)))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(var_0.a, var_0.b)).a + var_0.a) + -2560f));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1803f * -392f)), u_input.d);
    let var_3 = vec4<u32>(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(var_2.b, u_input.e.x) << (u_input.d % 32u), _wgslsmith_mult_u32(var_0.b, ~1328u) << (func_1(true, global3[_wgslsmith_index_u32(92811u, 13u)], ~u_input.e, Struct_1(var_2.a, 35300u)).b % 32u)), _wgslsmith_add_u32(0u, _wgslsmith_mult_u32(~func_3(), select(71573u | var_0.b, ~0u, all(vec3<bool>(false, true, false))))), var_0.b, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, -2147483647i, ~(~(~(~vec2<u32>(1u, 4294967295u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, var_2.a, -1000f) + vec3<f32>(-1005f, var_2.a, var_0.a))) - vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a)), 1f, -1326f))), vec2<u32>(4294967295u, max(select(0u, var_2.b, false) << (var_2.b % 32u), u_input.e.x)));
}

