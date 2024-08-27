struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - arg_0.a.x), 473f, all(vec3<bool>(false, false, false)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-751f + arg_0.a.x) - _wgslsmith_f_op_f32(round(arg_0.a.x)))), 678f);
    var var_1 = _wgslsmith_mod_vec2_i32(firstTrailingBit(-(~vec2<i32>(u_input.a, 23950i))), firstLeadingBit(abs(-vec2<i32>(-2147483647i, u_input.a) ^ vec2<i32>(u_input.a, 26269i))));
    let var_2 = (_wgslsmith_clamp_i32(max(~(-40976i), -1i), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, -7958i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_1.x, -1i, 2147483647i), vec4<i32>(-54602i, -1i, u_input.a, var_1.x))), firstLeadingBit(1i)) | select(-(~(-1i)), abs(-2147483647i & var_1.x), true)) & -u_input.a;
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(var_0.x - -173f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + 1007f), _wgslsmith_f_op_f32(f32(-1f) * -1166f)))), ~(~abs(_wgslsmith_clamp_u32(27692u, arg_0.b, arg_0.b))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1463f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.a.x)) * _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(round(var_3.a.x))));
    return vec3<u32>(firstTrailingBit(14809u), _wgslsmith_div_u32(u_input.b.x ^ _wgslsmith_mod_u32(max(1797u, 4294967295u), 59668u), _wgslsmith_mult_u32(arg_0.b, abs(1u))), min(97589u, ~(arg_0.b ^ _wgslsmith_div_u32(20037u, arg_0.b))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<f32>) -> vec2<f32> {
    let var_0 = select(true, all(select(vec4<bool>(true, arg_2, true, arg_2), vec4<bool>(false, arg_2, false, false), arg_2)) != !(!arg_2), false) || !all(!(!vec4<bool>(true, arg_2, arg_2, arg_2)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, 389f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.a.x, -258f) + vec2<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-arg_1.a.x)))), ~_wgslsmith_sub_u32(~27862u, ~_wgslsmith_div_u32(u_input.b.x, arg_1.b)));
    var var_2 = any(select(vec3<bool>(false, any(!vec4<bool>(arg_2, var_0, var_0, var_0)), var_0), !(!select(vec3<bool>(var_0, arg_2, true), vec3<bool>(var_0, arg_2, var_0), vec3<bool>(true, arg_2, true))), true));
    var var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_3.zz), _wgslsmith_f_op_vec2_f32(-var_1.a), !vec2<bool>(false, arg_2)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-470f, arg_3.x), _wgslsmith_f_op_vec2_f32(arg_3.yz * vec2<f32>(-2392f, var_1.a.x))))))), (_wgslsmith_clamp_u32(firstLeadingBit(var_1.b), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b, arg_0), vec2<u32>(0u, u_input.b.x)), 16105u) & 52890u) << (arg_0 % 32u));
    var_1 = arg_1;
    return _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1799f) - var_3.a.x), _wgslsmith_f_op_f32(select(-1265f, arg_1.a.x, false))), _wgslsmith_f_op_vec2_f32(-var_1.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = vec2<i32>(u_input.a, u_input.a);
    var var_1 = ~u_input.b.x;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1000f)))) + 1433f), -2140f, -256f);
    var var_3 = var_2;
    return Struct_1(_wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_dot_vec3_u32(func_3(Struct_1(vec2<f32>(var_2.x, var_3.x), 0u)), firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.zy) - _wgslsmith_div_vec2_f32(var_2.zx, var_2.wy)), countOneBits(u_input.b.x)), true, var_3.zxx)), ~_wgslsmith_mod_u32(firstLeadingBit(45862u), ~_wgslsmith_div_u32(u_input.b.x, u_input.b.x)));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = firstTrailingBit(_wgslsmith_div_vec4_i32(abs(reverseBits(vec4<i32>(u_input.a, u_input.a, 24411i, u_input.a))), vec4<i32>(min(-2147483647i, -2147483647i), 2147483647i & u_input.a, _wgslsmith_mult_i32(1050i, -1i), ~2147483647i))) | abs(vec4<i32>(~u_input.a, u_input.a, i32(-1i) * -1i, firstLeadingBit(u_input.a ^ u_input.a)));
    var var_2 = 1u & var_0.b;
    var var_3 = ~(4294967295u | reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0.b, u_input.b.x), vec3<u32>(0u, 8182u, arg_2.b)))) ^ max(u_input.b.x, func_2().b);
    let var_4 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-var_1.x, 1i, u_input.a), -(~vec3<i32>(12463i, var_1.x, u_input.a))), var_1.xyz);
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-306f, arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1952f - arg_2.a.x))))), var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(1853f + _wgslsmith_f_op_f32(1867f - _wgslsmith_div_f32(-671f, 376f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1617f - 687f)) + _wgslsmith_f_op_f32(ceil(-1000f)))), u_input.b.x);
    var var_1 = func_1(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -186f), -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - var_0.a.x)), ~u_input.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x) + _wgslsmith_f_op_f32(exp2(var_0.a.x)))), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.a.x))))), Struct_1(_wgslsmith_f_op_vec2_f32(-var_0.a), ~(~var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(func_3(func_2()), -reverseBits(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, -1i, 1i)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 24103u, 69877u, var_0.b), vec4<u32>(var_0.b, var_1.b, 29885u, var_1.b)) % vec4<u32>(32u))), _wgslsmith_mult_i32(abs(u_input.a), abs(-(u_input.a << (9498u % 32u)))));
}

