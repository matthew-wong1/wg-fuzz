struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<bool>) -> i32 {
    return -8171i | -abs(arg_1);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(vec2<u32>(104755u, firstLeadingBit(max(u_input.a, u_input.a)) | reverseBits(1u)), ~1u, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(21002u, u_input.a, 4294967295u, 18757u), vec4<u32>(49625u, 5516u, u_input.a, 25201u)), u_input.a & 14916u, ~u_input.a), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 81201u, 40688u) ^ vec4<u32>(0u, u_input.a, u_input.a, u_input.a))), firstLeadingBit(select(~vec4<u32>(41513u, 18425u, u_input.a, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<bool>(false, false, false, true)))), ~firstTrailingBit(_wgslsmith_div_i32(-62203i, max(0i, 21575i))));
    var var_1 = 1u;
    var_1 = 4294967295u;
    let var_2 = select(vec3<bool>(true, !select(true, true, true), abs(~4294967295u) <= u_input.a), !vec3<bool>(true, all(vec3<bool>(false, false, true)) & true, true), false);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(958f, 1320f), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1696f, -1474f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(441f, 624f)) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1636f, -1000f), vec2<f32>(-2022f, 461f))))))));
    return u_input.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, -25257i, -1111i), vec4<i32>(-47083i, -11207i, -2147483647i, -34091i)), _wgslsmith_mod_i32(-31816i, 1077i)) | -26994i, ~8451i, func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, -2193f, arg_1.c.x)))), _wgslsmith_add_i32(1i, 1i), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(true, true), vec2<bool>(arg_1.a, arg_1.a)))), -1i), ~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2147483647i, 38836i, 1i, 1i)) >> (vec4<u32>(func_3(), max(~arg_2, arg_2 << (arg_0.x % 32u)), ~1u, ~(~arg_0.x)) % vec4<u32>(32u)));
    var var_1 = Struct_2(arg_1.b, 20085u, select(50923u, _wgslsmith_sub_u32(max(26847u, arg_2), firstLeadingBit(arg_1.b.x) | _wgslsmith_mult_u32(arg_2, 45193u)), all(vec3<bool>(false && arg_1.a, false, false))), 32777i);
    return StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_mod_vec2_u32(var_1.a, vec2<u32>(3439u, arg_1.b.x))), min(~var_1.a, ~var_1.a)), 70521u, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.a, 1u), vec4<u32>(62647u, arg_0.x, 1u, var_1.c)), abs(vec4<u32>(u_input.a, 32673u, var_1.a.x, 637u))), vec4<u32>(4294967295u, firstLeadingBit(arg_2), ~3600u, 7961u)), u_input.a), -1480f, vec3<i32>(-1i ^ (_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(var_1.d, var_0.x, var_1.d, var_0.x)) | (-1i & var_1.d)), ~_wgslsmith_clamp_i32(abs(var_1.d), var_0.x & 0i, 62674i | var_0.x), countOneBits(firstLeadingBit(~var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var_0 = 2758i;
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(vec2<u32>(~u_input.a, ~u_input.a) ^ ~select(vec2<u32>(4294967295u, u_input.a), vec2<u32>(16802u, 0u), vec2<bool>(false, true))), Struct_1(true, ~reverseBits(vec2<u32>(0u, 14521u)), vec2<f32>(1f, 1f)), max(~87302u, ~(~_wgslsmith_mod_u32(u_input.a, u_input.a))));
}

