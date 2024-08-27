struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    global0 = array<bool, 32>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(206f, -217f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(501f, -576f), vec2<f32>(1435f, 1867f))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(680f, 1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-166f, 743f), vec2<f32>(795f, 500f), true)))))) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -547f), 900f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(910f, -1647f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-252f, 557f) * vec2<f32>(169f, 1000f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(2046f, -528f), vec2<f32>(-826f, -281f)))), vec2<bool>(true, true))), vec2<bool>(reverseBits(u_input.a.x) > u_input.a.x, true))));
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(753f)), _wgslsmith_f_op_f32(var_0.x + var_0.x)))), u_input.a.x, ~(-(~1i)));
    return _wgslsmith_div_u32(abs(1u), ~u_input.a.x);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec3<i32>) -> f32 {
    let var_0 = Struct_3(max(_wgslsmith_mult_u32(~34867u, _wgslsmith_clamp_u32(firstLeadingBit(35615u), 1u, arg_1.x)), 1u), _wgslsmith_div_u32(~18603u, ~(~u_input.a.x) >> (~1u % 32u)), -55098i, Struct_2(arg_2.x));
    global0 = array<bool, 32>();
    var var_1 = var_0;
    var_1 = Struct_3(~25391u, 4294967295u, ~(-_wgslsmith_mod_i32(18892i, var_1.c)), Struct_2(~51949u));
    var_1 = Struct_3(~(~_wgslsmith_mod_u32(~1u, _wgslsmith_sub_u32(var_1.d.a, var_0.b))), 19057u, -8289i >> (_wgslsmith_add_u32(_wgslsmith_add_u32(func_3(), ~48226u), _wgslsmith_mod_u32(u_input.a.x, 4294967295u)) % 32u), var_1.d);
    return 1214f;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(arg_0.x, -546f), vec4<u32>(0u, u_input.a.x, 1u, 4294967295u), vec2<u32>(4294967295u, u_input.a.x), vec3<i32>(31762i, -1570i, 24414i))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-451f))), _wgslsmith_f_op_f32(-var_0), 501f, var_0));
    var var_2 = -608f;
    var var_3 = 35280u;
    var var_4 = Struct_3(46861u, u_input.a.x, select(-1i, _wgslsmith_div_i32(min(0i, -1i), _wgslsmith_clamp_i32(-2147483647i, -2147483647i, -29875i)), true), Struct_2(u_input.a.x));
    return var_4.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(700f, -902f) + vec2<f32>(-715f, 316f)), vec2<f32>(998f, 318f), select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(68384u, 32u)]), vec2<bool>(true, false), global0[_wgslsmith_index_u32(u_input.a.x, 32u)])))))));
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    global0 = array<bool, 32>();
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1590f, var_0.x, var_0.x) * vec3<f32>(var_0.x, var_0.x, var_0.x)))))));
    let var_2 = Struct_3(_wgslsmith_sub_u32(abs(1u), var_1.a) << (func_3() % 32u), ~_wgslsmith_dot_vec4_u32(select(vec4<u32>(36367u, var_1.a, u_input.a.x, u_input.a.x), max(vec4<u32>(23901u, u_input.a.x, 17811u, u_input.a.x), vec4<u32>(var_1.a, var_1.a, 80914u, u_input.a.x)), var_0.x == var_0.x), min(vec4<u32>(92350u, 52627u, 72821u, u_input.a.x), min(vec4<u32>(var_1.a, u_input.a.x, var_1.a, var_1.a), vec4<u32>(1u, var_1.a, u_input.a.x, 39963u)))), reverseBits(-30411i), Struct_2(var_1.a));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(166f + 559f), _wgslsmith_f_op_f32(f32(-1f) * -706f), _wgslsmith_f_op_f32(select(var_0.x, var_0.x, global0[_wgslsmith_index_u32(85421u, 32u)]))))))), ~select(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a), select(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_2.b, var_1.a, var_2.d.a), vec4<u32>(var_1.a, var_2.a, 4294967295u, 4294967295u)), ~3837u, !global0[_wgslsmith_index_u32(43876u, 32u)]), true), 1i);
    let var_4 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(~u_input.a.x), ~min(var_1.a ^ 0u, max(var_2.a, 0u))), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_4) - _wgslsmith_f_op_vec2_f32(-var_0))), ~reverseBits(vec4<u32>(var_1.a, 36019u, 1u, var_1.a)), vec2<u32>(abs(~4294967295u), var_2.d.a), abs(-vec3<i32>(25694i, 2147483647i, 2147483647i)) >> (u_input.a % vec3<u32>(32u)))));
}

