struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
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

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_2(Struct_1(vec4<i32>(abs(u_input.b.x) ^ (9618i >> (u_input.c % 32u)), u_input.b.x, ~u_input.b.x, max(u_input.b.x, -8799i) << (u_input.c % 32u))), false, countOneBits(vec2<u32>(u_input.c, _wgslsmith_div_u32(1u, _wgslsmith_clamp_u32(28369u, 60838u, 0u)))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), false || all(vec4<bool>(false, false, false, false))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true)), all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)))), any(vec4<bool>(true, false, true, true))));
    let var_1 = var_0.c.x;
    var var_2 = var_0.d.x;
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-273f))))) * _wgslsmith_f_op_f32(529f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f)))), 1000f, -938f);
    var var_4 = Struct_3(Struct_2(Struct_1(vec4<i32>(31860i, -2147483647i, abs(2147483647i), -1i)), false, var_0.c, var_0.d), var_0, var_0.a, Struct_1(abs(vec4<i32>(~1i, var_0.a.a.x, -1i, -var_0.a.a.x))));
    return all(!vec3<bool>(all(!var_0.d), var_0.b, var_0.b));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec4<i32>(u_input.b.x, 8284i, -1i, u_input.a.x));
    var var_1 = func_3();
    var_1 = true;
    let var_2 = var_0;
    let var_3 = Struct_3(Struct_2(var_2, false, _wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(4294967295u, u_input.c)), firstTrailingBit(vec2<u32>(1u, u_input.c)) ^ (vec2<u32>(u_input.c, u_input.c) & vec2<u32>(u_input.c, 4294967295u))), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), Struct_2(Struct_1(~vec4<i32>(var_2.a.x, 2147483647i, var_0.a.x, var_0.a.x)), func_3(), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, u_input.c, 28405u), vec4<u32>(u_input.c, u_input.c, 1u, 51877u)), ~0u) ^ vec2<u32>(u_input.c, ~u_input.c), vec2<bool>(true, true)), Struct_1(_wgslsmith_add_vec4_i32(var_0.a, var_2.a ^ var_2.a)), Struct_1(abs(~(vec4<i32>(u_input.b.x, 55031i, -1i, u_input.a.x) >> (vec4<u32>(9976u, u_input.c, u_input.c, u_input.c) % vec4<u32>(32u))))));
    return ~(~(~(~u_input.c))) << (1u % 32u);
}

fn func_1() -> vec3<bool> {
    var var_0 = 0u;
    let var_1 = ~u_input.a.x;
    var_0 = _wgslsmith_clamp_u32(~(~abs(u_input.c)), _wgslsmith_mult_u32(59969u, _wgslsmith_sub_u32(u_input.c, func_2())), _wgslsmith_sub_u32(u_input.c, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 0u, 49115u), vec3<u32>(u_input.c, 1u, 1u)), u_input.c)));
    var var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~52253u, 73600u, u_input.c, u_input.c), vec4<u32>(u_input.c, ~u_input.c, ~(u_input.c << (u_input.c % 32u)), u_input.c)), vec4<u32>(u_input.c, 25795u, u_input.c >> (~u_input.c % 32u), 1u));
    var_0 = var_2.x;
    return select(!select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, true)), true, true), false), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false))), true), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(select(firstTrailingBit(u_input.c) > ~92050u, false, _wgslsmith_f_op_f32(ceil(2364f)) <= 803f) != true);
    var var_1 = vec4<f32>(-249f, _wgslsmith_f_op_f32(max(576f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -120f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(350f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-579f, -986f))) - _wgslsmith_f_op_f32(-378f - _wgslsmith_f_op_f32(select(-454f, -733f, false)))), -134f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-892f))))))));
    let var_2 = -497f;
    var_0 = !all(!select(vec3<bool>(true, true, false), func_1(), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)));
    var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, _wgslsmith_mod_i32(~u_input.a.x & u_input.b.x, max(-2147483647i, -31724i)) | u_input.a.x, 25716u);
}

