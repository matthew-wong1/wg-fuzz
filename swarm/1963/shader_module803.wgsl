struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> vec3<bool> {
    var var_0 = 1i;
    var_0 = abs(~abs(u_input.a));
    let var_1 = _wgslsmith_div_vec2_u32(u_input.b, _wgslsmith_add_vec2_u32(select(u_input.b, ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 47680u), vec2<u32>(44863u, 4294967295u)), !select(vec2<bool>(false, true), vec2<bool>(true, true), false)), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.d, u_input.d), u_input.b) & vec2<u32>(1u, 5619u)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.x), 1000f)))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1955f)) * arg_2.x);
    return vec3<bool>(false, true, all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(all(vec2<bool>(false, true)), true), true)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1312f - _wgslsmith_f_op_f32(round(-447f))), arg_1, -1519f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1, 476f, arg_1)))))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1, arg_1, 500f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_1) - vec3<f32>(301f, -647f, -799f))), true))), func_3(arg_0, Struct_1(75525i), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1, arg_1))), vec2<f32>(_wgslsmith_div_f32(arg_1, 299f), -220f), true)))));
    let var_1 = ~(~_wgslsmith_mod_u32(arg_2.x, 1u)) << (select(u_input.d, _wgslsmith_sub_u32(u_input.b.x, ~1u), !select(true, u_input.e == 0i, true)) % 32u);
    let var_2 = Struct_1(i32(-1i) * -_wgslsmith_mod_i32(u_input.a, _wgslsmith_mult_i32(-12654i, 0i)));
    var var_3 = arg_0;
    var var_4 = _wgslsmith_add_i32(~select(min(~2147483647i, 1i), -countOneBits(1i), any(vec4<bool>(true, true, false, true)) | all(vec3<bool>(true, true, true))), max(u_input.e >> (~(~u_input.d) % 32u), -50786i));
    return _wgslsmith_f_op_f32(f32(-1f) * -2002f);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(~(-39493i)), 2745f, u_input.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_1(2147483647i), 1810f, vec2<u32>(u_input.c >> (u_input.d % 32u), u_input.b.x >> (4604u % 32u)))) - _wgslsmith_div_f32(-361f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(247f)), _wgslsmith_f_op_f32(max(236f, -1432f)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(356f, var_0, var_0, var_0) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, 1000f) - vec4<f32>(-1103f, var_0, -1371f, -470f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_0, var_0, var_0) + vec4<f32>(3090f, var_0, 586f, -1611f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-214f, -299f, var_1.x, var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, -1000f, var_1.x) + vec4<f32>(var_0, -109f, 999f, 1501f))), vec4<f32>(_wgslsmith_f_op_f32(select(-483f, var_1.x, false)), _wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(f32(-1f) * -876f), var_1.x))))) - vec4<f32>(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(u_input.e), var_0, vec2<u32>(u_input.c, u_input.c))))), 1170f, 335f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-435f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 383f) - -258f))));
    let var_2 = u_input.e;
    var var_3 = var_1.yx;
    return Struct_1(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = u_input.d;
    let var_2 = vec2<bool>((select(true, true, false) || func_3(Struct_1(16347i), func_1(), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-370f, 323f)))).x) || true, !(firstLeadingBit(u_input.a) != min(-u_input.a, -18433i)));
    var var_3 = vec3<i32>(countOneBits(firstLeadingBit(u_input.a ^ 1i)), abs(8494i), ~_wgslsmith_add_i32(-1i, firstLeadingBit(-19413i))) >> (firstLeadingBit(vec3<u32>(~var_1, max(~var_1, min(34575u, u_input.c)), _wgslsmith_mod_u32(var_1, var_1 | var_1))) % vec3<u32>(32u));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(23515u, ~53874u), _wgslsmith_div_u32(_wgslsmith_mult_u32(54978u, 0u), _wgslsmith_sub_u32(var_1, u_input.b.x))), ~(~u_input.b) | ~u_input.b), -vec4<i32>(u_input.a, var_3.x, 55419i ^ u_input.e, ~(-25069i)), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-530f, 1037f, false))), 1000f, !(62575i != var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1089f) - 301f), _wgslsmith_f_op_f32(2304f * _wgslsmith_f_op_f32(239f - -1000f)), 782f), ~(~_wgslsmith_div_i32(var_0.a, -5687i) << ((_wgslsmith_mult_u32(0u, u_input.b.x) << (max(5192u, var_1) % 32u)) % 32u)), var_3.xy);
}

