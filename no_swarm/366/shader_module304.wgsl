struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<u32> {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(752f, -1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_2)), arg_2), !select(vec2<bool>(arg_1.b, arg_1.b), vec2<bool>(arg_1.b, false), arg_1.b))) - vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-1000f + arg_2.x))));
    var var_1 = arg_0;
    var var_2 = Struct_1(vec3<u32>(1u, _wgslsmith_dot_vec3_u32(arg_1.a, arg_1.a), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 13763u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, arg_1.a.x, 0u, 51854u), vec4<u32>(11201u, 1u, u_input.b.x, u_input.e))), u_input.b.x)), true, arg_1.a, u_input.b);
    var var_3 = abs(-2147483647i);
    var_1 = arg_0;
    return ~(~var_2.c);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(select(~vec3<u32>(u_input.d << (u_input.d % 32u), u_input.b.x, u_input.e), vec3<u32>(16176u, _wgslsmith_clamp_u32(0u, u_input.b.x, 27473u), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.e, 1u))) | ~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.e)), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, false, true), any(vec4<bool>(false, false, false, false)))), true, func_3(Struct_2(false), Struct_1(vec3<u32>(u_input.e, 1u | u_input.d, 1u), !any(vec4<bool>(false, true, true, false)), countOneBits(vec3<u32>(u_input.b.x, u_input.e, u_input.d)), ~vec2<u32>(48856u, u_input.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1533f + 848f)), -469f)), vec2<u32>(_wgslsmith_mod_u32(0u, _wgslsmith_mod_u32(u_input.d, u_input.d)) << (4294967295u % 32u), _wgslsmith_add_u32(~u_input.d, _wgslsmith_sub_u32(max(26273u, 34140u), u_input.d))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1370f, -498f, 500f));
    var_2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(772f, var_2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -453f), var_2.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, -1108f)));
}

fn func_1() -> Struct_1 {
    let var_0 = 803i;
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(844f, -891f) + _wgslsmith_f_op_f32(f32(-1f) * -513f)), _wgslsmith_f_op_f32(func_2())) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -1205f)))));
    var_1 = Struct_2(var_1.a);
    var_1 = Struct_2(any(select(select(select(vec3<bool>(true, var_1.a, false), vec3<bool>(true, var_1.a, false), false), vec3<bool>(true, var_1.a, true), select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(true, true, false))), select(vec3<bool>(false, var_1.a, true), vec3<bool>(var_1.a, true, var_1.a), var_1.a), true)));
    var var_2 = _wgslsmith_mult_u32(~(~firstTrailingBit(u_input.e) | abs(u_input.e | 45734u)), _wgslsmith_dot_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(33457u, u_input.d, 1u), vec3<u32>(u_input.b.x, u_input.e, u_input.d), vec3<u32>(15744u, 6304u, u_input.b.x))), vec3<u32>(4294967295u, u_input.e, u_input.d)));
    return Struct_1(vec3<u32>(7813u, 0u, ~_wgslsmith_clamp_u32(~u_input.d, firstTrailingBit(u_input.d), u_input.b.x)), all(select(!vec2<bool>(var_1.a, false), vec2<bool>(false, var_1.a), var_1.a)) == false, ~_wgslsmith_div_vec3_u32(~vec3<u32>(1828u, u_input.e, 4294967295u) ^ ~vec3<u32>(5664u, u_input.b.x, u_input.e), ~(~vec3<u32>(u_input.b.x, u_input.e, u_input.d))), u_input.b | (u_input.b << (min(~u_input.b, ~u_input.b) % vec2<u32>(32u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2254f, -482f, 1321f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1520f, -1076f, -468f) * vec3<f32>(1726f, -1361f, -794f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-754f, 405f, 1045f)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(223f, 2519f, 949f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1315f, 868f, -309f)))))));
    var var_1 = var_0.zy;
    var var_2 = vec3<u32>(~u_input.d, 132u, u_input.d);
    var var_3 = ~select(0u, var_2.x, !arg_1.b);
    var_3 = max(_wgslsmith_mod_u32(~(~(~arg_1.c.x)), _wgslsmith_div_u32(abs(_wgslsmith_div_u32(1u, var_2.x)), ~_wgslsmith_div_u32(var_2.x, arg_1.d.x))), arg_1.d.x);
    return _wgslsmith_add_u32(abs(var_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(max(12080u, var_2.x | 1u), func_3(Struct_2(arg_1.b), Struct_1(arg_1.c, arg_1.b, arg_1.c, vec2<u32>(var_2.x, 66451u)), vec2<f32>(var_1.x, 1747f)).x, u_input.b.x, ~arg_1.a.x), _wgslsmith_add_vec4_u32((vec4<u32>(1u, var_2.x, var_2.x, var_2.x) ^ vec4<u32>(66811u, arg_1.c.x, 42469u, 1u)) & ~vec4<u32>(59053u, 4294967295u, 28214u, u_input.e), reverseBits(vec4<u32>(var_2.x, u_input.b.x, arg_1.a.x, 1u) | vec4<u32>(1u, u_input.d, arg_1.c.x, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(_wgslsmith_add_u32(u_input.e, 39609u), u_input.b.x, false);
    let var_1 = ~vec4<u32>(abs(1u >> (~var_0 % 32u)), ~1u, 28259u & ~var_0, var_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -710f), -349f, 442f))));
    var var_3 = reverseBits(~35932u);
    var_3 = firstTrailingBit(9139u);
    var_3 = min(~(u_input.b.x ^ 11710u), _wgslsmith_clamp_u32(0u, u_input.d, u_input.d));
    var var_4 = true;
    var_4 = false;
    var_3 = abs(func_4(vec4<i32>(select(1i, -2147483647i, false), ~u_input.a, abs(u_input.c), _wgslsmith_div_i32(1i, 1i)), func_1()) >> ((var_1.x >> ((~u_input.d | ~var_0) % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(753f)));
}

