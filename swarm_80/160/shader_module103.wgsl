struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec3<f32>) -> u32 {
    var var_0 = arg_0.b.e;
    let var_1 = Struct_3(Struct_1(29394u, 5528u, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-227f + arg_2.e.d), -1778f, false)))), _wgslsmith_f_op_f32(-561f + var_0.d)), arg_0.b.b);
    var_0 = arg_0.b.e;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.e.c) + arg_2.e.d)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-448f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a.c, var_0.d))))));
    var var_3 = arg_0.b;
    return ~(~(~(~u_input.a.x) << (_wgslsmith_mod_u32(~72751u, min(var_0.a, var_0.b)) % 32u)));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = vec3<u32>(~4294967295u, u_input.b.x, abs(~firstLeadingBit(func_3(Struct_4(arg_0.x, Struct_2(u_input.c, u_input.a.x, u_input.c, -47893i, Struct_1(6144u, u_input.a.x, -316f, arg_1.x))), arg_0.yz, Struct_2(u_input.c, u_input.a.x, 1i, u_input.c, Struct_1(15112u, 1u, 759f, arg_1.x)), vec3<f32>(849f, arg_1.x, -1048f)))));
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(arg_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(107f, arg_1.x, -1139f, arg_1.x)) - vec4<f32>(arg_1.x, 1000f, 229f, -890f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, -455f, -306f, arg_1.x), vec4<f32>(608f, 737f, -963f, -1101f))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(arg_1, _wgslsmith_f_op_vec4_f32(-arg_1)))) - arg_1));
    let var_3 = var_2.x;
    let var_4 = countOneBits(abs(~(countOneBits(var_0.x) >> (abs(4294967295u) % 32u))));
    return Struct_1(var_0.x, var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(469f, var_2.x, all(arg_0.zxy))))) + 180f), -372f);
}

fn func_1() -> f32 {
    let var_0 = Struct_4(select(591f != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -294f))), false, select(true, !all(vec3<bool>(false, false, true)), true)), Struct_2(~0i, max(_wgslsmith_add_u32(u_input.b.x, 0u | u_input.b.x), u_input.a.x), ~(-firstLeadingBit(0i)), _wgslsmith_clamp_i32(1i, u_input.c, u_input.c), Struct_1(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(31650u, u_input.a.x)), -2448f, 1084f)));
    var var_1 = var_0.b.b;
    var var_2 = Struct_3(func_2(!vec4<bool>(var_0.a, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.e.d, -627f, var_0.b.e.d, var_0.b.e.c), vec4<f32>(209f, 394f, -1982f, 448f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.e.c, -1731f, var_0.b.e.d, var_0.b.e.d) * vec4<f32>(241f, var_0.b.e.d, 286f, var_0.b.e.c))))), ~var_0.b.e.b);
    let var_3 = ~_wgslsmith_mod_u32(~4294967295u, 1u) | func_3(var_0, !vec2<bool>(all(vec4<bool>(var_0.a, false, false, var_0.a)), true), Struct_2(_wgslsmith_mod_i32(var_0.b.c >> (var_0.b.b % 32u), var_0.b.a | 8714i), _wgslsmith_add_u32(var_2.a.b, ~u_input.b.x), abs(~22020i), u_input.c, func_2(vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.a), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.b.e.c, -922f, var_0.b.e.d, -419f))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1009f, 239f, var_0.b.e.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2018f, -2341f, 1635f) - vec3<f32>(-674f, var_0.b.e.c, -335f)), select(vec3<bool>(true, false, var_0.a), vec3<bool>(true, true, var_0.a), false))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.e.d, -2330f, var_0.b.e.d), vec3<f32>(var_2.a.d, var_0.b.e.d, -171f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.a.c, 716f, var_0.b.e.c) - vec3<f32>(-2349f, -1469f, var_2.a.c))), !select(vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(var_0.a, true, var_0.a), var_0.a))));
    var_2 = Struct_3(var_0.b.e, ~_wgslsmith_dot_vec4_u32(~select(vec4<u32>(var_0.b.b, 4294967295u, var_0.b.e.b, 1u), vec4<u32>(var_2.b, var_3, 54209u, u_input.b.x), vec4<bool>(var_0.a, false, true, false)), ~u_input.a));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-872f - _wgslsmith_f_op_f32(-var_0.b.e.c))));
}

fn func_4(arg_0: f32, arg_1: f32) -> Struct_1 {
    let var_0 = !all(vec2<bool>((2147483647i > u_input.c) | false, false));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -178f), 1f));
    var var_2 = _wgslsmith_f_op_f32(func_1());
    var_2 = arg_1;
    var var_3 = 711f;
    return Struct_1(~(u_input.a.x >> (_wgslsmith_div_u32(~u_input.a.x, 4294967295u) % 32u)), u_input.b.x, arg_0, _wgslsmith_f_op_f32(select(arg_0, -1000f, any(!(!vec2<bool>(false, var_0))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-359f, -997f, true)) + _wgslsmith_f_op_f32(select(1262f, -582f, false))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(287f)))));
    let var_1 = abs(vec4<i32>(firstTrailingBit(-_wgslsmith_div_i32(-29173i, u_input.d.x)), u_input.c, u_input.d.x, ~(-(i32(-1i) * -44526i))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d));
    var var_3 = select(vec3<bool>(true, any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true)), true), !vec3<bool>(true, true | any(vec2<bool>(true, true)), any(vec3<bool>(false, true, true))), any(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true))));
    let var_4 = vec3<bool>(1000f != _wgslsmith_div_f32(var_2, -2236f), !(true == (u_input.c >= countOneBits(u_input.c))), var_3.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_2);
}

