struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<bool>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1.c.xx;
    let var_1 = vec2<bool>(var_0.x, all(!(!vec2<bool>(var_0.x, var_0.x))));
    global0 = array<u32, 25>();
    var_0 = vec2<bool>(true, true);
    global0 = array<u32, 25>();
    return _wgslsmith_f_op_f32(arg_1.e * arg_1.e);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_1.a * arg_1.a))) + _wgslsmith_f_op_vec2_f32(-arg_1.a)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(627f, -1227f) + arg_0.a), vec2<f32>(_wgslsmith_f_op_f32(-arg_1.e), _wgslsmith_f_op_f32(-147f + 1000f)))), select(vec2<bool>(arg_1.c.x, arg_0.b.x), vec2<bool>(true, arg_0.b.x), select(arg_1.c.yy, vec2<bool>(false, false), arg_1.d)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, -652f) - arg_0.a) - vec2<f32>(-559f, arg_1.a.x)))))));
    global0 = array<u32, 25>();
    let var_1 = vec4<i32>(10335i, abs(arg_1.b.x), u_input.a.x, ~arg_1.b.x);
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_0.a.x))));
    return vec3<bool>(arg_1.c.x, u_input.c.x != 1u, false);
}

fn func_2(arg_0: i32) -> f32 {
    let var_0 = 3862u;
    global0 = array<u32, 25>();
    var var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1371f * 573f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1134f)))), -940f), -(_wgslsmith_sub_vec2_i32(vec2<i32>(-24622i, 5475i), u_input.b.yx) << (abs(vec2<u32>(u_input.c.x, 1u)) % vec2<u32>(32u))) & vec2<i32>(14832i, ~63099i), vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, 4294967295u, u_input.d.x), vec4<u32>(21191u, 18830u, var_0, var_0)), 25u)] > global0[_wgslsmith_index_u32(0u, 25u)], select(var_0 < _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(7606u, 25u)], global0[_wgslsmith_index_u32(u_input.c.x, 25u)], 0u), true, any(vec2<bool>(false, false))), all(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), !all(func_3(Struct_3(vec2<f32>(1488f, 676f), vec2<bool>(true, true)), Struct_1(vec2<f32>(560f, -1269f), vec2<i32>(u_input.b.x, -35913i), vec4<bool>(true, false, false, false), false, 1340f), 365f))), any(vec2<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false))), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(func_1(~u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1385f, -529f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1260f, -1616f)))), u_input.a.xz, select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, false, true)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1641f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.a.x, 224f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-527f, var_1.a.x) * vec2<f32>(-871f, -2167f))))), var_1.a)));
    global0 = array<u32, 25>();
    return -1045f;
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: vec2<f32>) -> u32 {
    var var_0 = ~reverseBits(~_wgslsmith_add_vec2_u32(u_input.d, vec2<u32>(8177u, 4294967295u)));
    var var_1 = -max(-38793i, ~_wgslsmith_mult_i32(2147483647i, u_input.e));
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(abs(-552f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) * arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.x + arg_1.x), _wgslsmith_div_f32(-811f, -1091f), arg_0 <= -1i)))), arg_1.x, abs(vec4<u32>(_wgslsmith_add_u32(1u << (var_0.x % 32u), firstLeadingBit(var_0.x)), 31003u, 22170u, var_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -741f));
    var var_3 = 2147483647i;
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(u_input.b.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(1105f)))) - _wgslsmith_f_op_f32(func_1(u_input.a.x | 51526i, Struct_1(vec2<f32>(-591f, -2455f), u_input.a.zw, vec4<bool>(true, true, false, true), false, 671f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(580f, 2421f)))), _wgslsmith_f_op_f32(438f - _wgslsmith_f_op_f32(func_2(~u_input.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~(-2147483647i))))), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-559f + 1722f), _wgslsmith_f_op_f32(497f * -2952f)) + vec2<f32>(_wgslsmith_f_op_f32(select(-529f, -1457f, true)), _wgslsmith_f_op_f32(f32(-1f) * -1055f))), !func_3(Struct_3(vec2<f32>(-657f, 432f), vec2<bool>(false, false)), Struct_1(vec2<f32>(630f, 1676f), vec2<i32>(3631i, 0i), vec4<bool>(true, false, false, true), false, 648f), -830f).zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1139f, 1761f) * vec2<f32>(2156f, -796f))))));
    global0 = array<u32, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~max(_wgslsmith_div_i32(2147483647i, u_input.e), 1i)), _wgslsmith_clamp_vec2_u32(~u_input.c.yy, ~u_input.c.zz, max(u_input.d, ~u_input.c.zy)) >> (_wgslsmith_div_vec2_u32(u_input.c.yy, vec2<u32>(global0[_wgslsmith_index_u32(var_0, 25u)] | 0u, var_0)) % vec2<u32>(32u)));
}

