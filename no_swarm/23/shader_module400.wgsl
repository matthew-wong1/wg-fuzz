struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> i32 {
    var var_0 = -1749f;
    var var_1 = ~vec4<u32>(u_input.a.x, 1u, 29926u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.yy));
    var var_2 = Struct_3(Struct_1(-_wgslsmith_add_i32(i32(-1i) * -1i, 0i), _wgslsmith_div_u32(var_1.x ^ 1u, u_input.a.x), true, _wgslsmith_clamp_i32(0i, firstTrailingBit(-20584i), -_wgslsmith_mod_i32(1i, -1i))));
    var_0 = -371f;
    var_2 = Struct_3(var_2.a);
    return 2147483647i;
}

fn func_3() -> i32 {
    return 2147483647i;
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>) -> bool {
    let var_0 = Struct_3(Struct_1(_wgslsmith_clamp_i32(-(-60972i ^ arg_0.x), arg_0.x, func_2()), 1u, true, -func_3()));
    let var_1 = 901f;
    let var_2 = _wgslsmith_f_op_f32(round(arg_1.x));
    var var_3 = vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-var_2))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * 426f)), 471f)));
    let var_4 = var_0;
    return any(vec2<bool>(-9862i <= -func_3(), var_4.a.c));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<bool>) -> bool {
    let var_0 = -vec4<i32>(1i, 1i, arg_0.d, firstLeadingBit(2147483647i));
    var var_1 = _wgslsmith_add_u32(~u_input.a.x | (arg_0.b >> (~17668u % 32u)), u_input.a.x);
    let var_2 = u_input.a.zz;
    let var_3 = vec2<u32>(~countOneBits(24259u) | var_2.x, u_input.a.x);
    var_1 = (9u << (~var_2.x % 32u)) << ((var_3.x >> (_wgslsmith_div_u32(~(66768u | var_2.x), _wgslsmith_mult_u32(~var_2.x, _wgslsmith_div_u32(4294967295u, arg_0.b))) % 32u)) % 32u);
    return arg_0.c & false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = !vec2<bool>(func_4(Struct_1(~(-2147483647i), u_input.a.x & 0u, func_1(vec2<i32>(0i, -19559i), vec4<f32>(1288f, -387f, 523f, -396f)), -1i), -25170i, !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false))), true && all(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)));
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(~50806i >> (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_0, var_0, u_input.a.x)) % 32u), -16275i, 2553i, 2147483647i), -select(select(vec4<i32>(-52176i, 508i, 5320i, 55484i), vec4<i32>(0i, -6242i, 1i, 34882i), vec4<bool>(false, false, true, true)), abs(vec4<i32>(18142i, -29259i, -3130i, -18791i)), var_1.x)) << ((~vec4<u32>(45687u, var_0, var_0, u_input.a.x) >> (vec4<u32>(~firstTrailingBit(var_0), var_0, 4294967295u & firstTrailingBit(var_0), u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = Struct_1(var_2.x >> (~_wgslsmith_add_u32(4294967295u, ~var_0) % 32u), min(4294967295u, 75987u), var_1.x, 0i);
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(-min(27150i, var_2.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1425f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(1904f, 801f) * _wgslsmith_f_op_f32(select(925f, -542f, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1634f, -1105f, true)) - _wgslsmith_f_op_f32(-410f * 1998f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(528f)), _wgslsmith_f_op_f32(max(-1389f, 1342f)))))), var_2.yxw, ~vec4<u32>(var_3.b | var_4.x, 8150u, var_4.x, 26019u));
}

