struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> bool {
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = Struct_1(arg_0.a, -103f, -106f);
    return 1371f;
}

fn func_3(arg_0: vec4<bool>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(round(-112f)), all(arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(144f + _wgslsmith_f_op_f32(588f * -1252f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-294f)) - _wgslsmith_f_op_f32(min(327f, 820f))))));
    var var_1 = _wgslsmith_add_u32(~_wgslsmith_mult_u32(~u_input.a & 13183u, 13819u), u_input.a & (4294967295u >> ((_wgslsmith_mult_u32(u_input.a, 20606u) ^ (1u | u_input.a)) % 32u)));
    var_1 = _wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstTrailingBit(reverseBits(_wgslsmith_mod_u32(26804u, 23784u))), _wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, 1003u, 38322u, 91673u), ~vec4<u32>(4294967295u, u_input.a, u_input.a, 0u)), u_input.a), _wgslsmith_clamp_u32(u_input.a, 0u, firstLeadingBit(~49131u))), abs(~0u) | u_input.a);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -673f)) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-218f, 973f))))), var_0.a);
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 779f))))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(255f, -1964f, _wgslsmith_f_op_f32(step(-296f, -766f)));
    let var_1 = -(~u_input.c.x ^ 1i);
    var var_2 = abs(firstLeadingBit(-vec2<i32>(var_1, 19095i) >> (~(vec2<u32>(26590u, u_input.a) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var_2 = vec2<i32>(-abs(_wgslsmith_div_i32(var_2.x, var_2.x)) << (19773u % 32u), select(u_input.d.x, _wgslsmith_mod_i32(max(u_input.d.x, -21654i), var_1), !(!func_1())));
    let var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, abs(abs(_wgslsmith_sub_u32(u_input.a, u_input.a))), 26097u, u_input.a), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, 0u, 123409u, u_input.a), ~vec4<u32>(4294967295u, 22827u, u_input.a, 24174u) & _wgslsmith_clamp_vec4_u32(vec4<u32>(50162u, 4294967295u, 18853u, 364u), vec4<u32>(26432u, 4294967295u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), vec4<u32>(1u, u_input.a, 1u, 1u) & ~vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(593f, _wgslsmith_f_op_f32(abs(-323f)))), var_0.c, _wgslsmith_f_op_f32(1139f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c, 2803f) - _wgslsmith_f_op_f32(sign(937f))), _wgslsmith_div_f32(-1006f, _wgslsmith_f_op_f32(select(var_0.a, 516f, false))), false))));
    var_2 = min(vec2<i32>(~var_2.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c)) >> (var_3 % 32u)), firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(2147483647i, -24488i) | max(u_input.c.x, 27028i), _wgslsmith_mod_i32(1202i, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -594f) * _wgslsmith_f_op_f32(-213f - 1633f))), 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a + -177f)) * _wgslsmith_f_op_f32(func_2(Struct_1(-782f, var_0.b, var_4.b), abs(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(false, true, false, true))))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, ~0u), vec2<u32>(var_3, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(490f - _wgslsmith_f_op_f32(-var_4.a)))));
}

