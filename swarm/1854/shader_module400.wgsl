struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6> = array<i32, 6>(0i, -1i, 52585i, 44503i, 0i, 2147483647i);

var<private> global1: f32 = -190f;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-492f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-164f, _wgslsmith_f_op_f32(-1116f - -476f), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1486f - -1463f) - 434f)))), ~_wgslsmith_dot_vec3_u32((u_input.c >> (vec3<u32>(u_input.e, 0u, 38080u) % vec3<u32>(32u))) & min(vec3<u32>(u_input.b, 44681u, u_input.c.x), vec3<u32>(4294967295u, 29764u, u_input.e)), u_input.c));
    let var_1 = vec2<u32>(~1u, u_input.b & 89325u);
    var_0 = Struct_1(-672f, 40656u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(624f * _wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)))))) * var_0.a);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1059f) + -1000f), _wgslsmith_f_op_f32(trunc(-358f)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -646f)), vec2<f32>(-191f, -608f)) - vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(trunc(312f)))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1136f, _wgslsmith_f_op_f32(trunc(1141f)))))));
}

fn func_2(arg_0: vec4<bool>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(71432u, u_input.e, u_input.a.x, 1u), ~vec4<u32>(_wgslsmith_mult_u32(u_input.e, u_input.e), u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 16085u), u_input.c.yz | u_input.c.xz), _wgslsmith_add_u32(47572u, 41734u))), 6u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_2 = _wgslsmith_mod_u32(~_wgslsmith_clamp_u32(abs(~u_input.b), ~0u, 1u), _wgslsmith_sub_u32(_wgslsmith_add_u32(1u, u_input.b | 0u) | ~(~54725u), u_input.e));
    var_0 = u_input.d;
    let var_3 = arg_0.zwx;
    return 4294967295u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>) -> vec2<u32> {
    let var_0 = Struct_1(252f, ~_wgslsmith_add_u32(1u, select(firstTrailingBit(0u), 15367u, 0i <= u_input.d)));
    global0 = array<i32, 6>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-630f, 497f, arg_1.x)) - _wgslsmith_f_op_vec3_f32(-arg_1.yyz))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(arg_1.wxw + _wgslsmith_f_op_vec3_f32(vec3<f32>(130f, var_0.a, 1558f) + vec3<f32>(-1381f, -529f, 1051f))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, var_0.a, -287f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(652f, var_0.a, -415f)), vec3<bool>(false, false, false))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), -918f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a)) * _wgslsmith_f_op_f32(sign(arg_1.x))))));
    let var_2 = Struct_1(arg_1.x, min(~(~arg_0.x), ~0u));
    global1 = -310f;
    return _wgslsmith_add_vec2_u32(select(u_input.c.yx, arg_0.xz, vec2<bool>(true, true)), vec2<u32>(~u_input.a.x, 48016u));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: i32) -> Struct_1 {
    global0 = array<i32, 6>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_0 = arg_0;
    var var_1 = min(max(select(vec2<u32>(~u_input.c.x, u_input.e), ~u_input.a, true), vec2<u32>(arg_0.b, max(~var_0.b, var_0.b))), func_4(vec3<u32>(~firstLeadingBit(u_input.b), firstTrailingBit(1u), func_2(vec4<bool>(true, true, true, false)) & 33646u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, arg_0.a, -811f, 2916f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a, arg_0.a, var_0.a, 1120f) * vec4<f32>(arg_0.a, arg_0.a, -191f, var_0.a))))));
    var var_2 = arg_0.a;
    return arg_0;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-787f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-893f - -200f), 1f))));
    var var_0 = true;
    var var_1 = func_1(func_1(arg_1, firstLeadingBit(-57319i), -(~(~(-57096i))), u_input.d), u_input.d, arg_3, -50367i);
    var var_2 = arg_1;
    var var_3 = vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(-arg_2.a), var_1.a);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec3<bool>(true, true, false), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -130f) + 710f), u_input.c.x), func_1(Struct_1(_wgslsmith_f_op_f32(-1276f - _wgslsmith_f_op_f32(f32(-1f) * -1031f)), 7679u), -34702i, ~(-25100i), -2147483647i), 1i);
    global0 = array<i32, 6>();
    global1 = 1157f;
    var var_1 = 5887u;
    var var_2 = func_5(vec3<bool>(!(true && (u_input.e < 65338u)), false, true), func_1(func_5(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), func_5(vec3<bool>(true, true, false), Struct_1(var_0.a, 0u), func_1(Struct_1(var_0.a, 97016u), global0[_wgslsmith_index_u32(65201u, 6u)], global0[_wgslsmith_index_u32(u_input.e, 6u)], global0[_wgslsmith_index_u32(var_0.b, 6u)]), global0[_wgslsmith_index_u32(0u, 6u)]), Struct_1(var_0.a, _wgslsmith_mult_u32(60799u, 0u)), u_input.d), -(~(-global0[_wgslsmith_index_u32(4294967295u, 6u)])), firstLeadingBit(-13617i), -(1i & u_input.d) | -firstLeadingBit(u_input.d)), func_5(!vec3<bool>(var_0.a >= var_0.a, all(vec3<bool>(true, false, true)), select(false, false, false)), func_5(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)), Struct_1(355f, ~u_input.b), Struct_1(_wgslsmith_div_f32(var_0.a, var_0.a), 46411u), 5766i), Struct_1(-1000f, u_input.a.x), _wgslsmith_dot_vec3_i32(~min(vec3<i32>(0i, u_input.d, u_input.d), vec3<i32>(global0[_wgslsmith_index_u32(70660u, 6u)], 0i, global0[_wgslsmith_index_u32(1u, 6u)])), firstLeadingBit(vec3<i32>(86279i, global0[_wgslsmith_index_u32(u_input.b, 6u)], 23285i)))), firstLeadingBit(reverseBits(global0[_wgslsmith_index_u32(max(func_4(vec3<u32>(4294967295u, u_input.c.x, 0u), vec4<f32>(126f, 186f, 1661f, -335f)).x, 65846u), 6u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~4294967295u, ~var_0.b, ~(~u_input.e & _wgslsmith_clamp_u32(var_2.b, 42988u, 48795u))), global0[_wgslsmith_index_u32(var_2.b, 6u)]);
}

