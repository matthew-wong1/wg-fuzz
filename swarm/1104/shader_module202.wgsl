struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = u_input.c.x;
    return vec4<i32>(_wgslsmith_div_i32(u_input.c.x, 2147483647i), -1i ^ ~u_input.a, ~_wgslsmith_sub_i32(min(u_input.a, _wgslsmith_dot_vec2_i32(u_input.c.ww, u_input.c.zx)), -_wgslsmith_add_i32(17277i, u_input.a)), u_input.c.x);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> i32 {
    return 1i;
}

fn func_2() -> vec3<i32> {
    let var_0 = 4294967295u;
    var var_1 = -339f;
    let var_2 = Struct_1(vec3<bool>(true, true, true), _wgslsmith_clamp_u32(1u, var_0, ~(~(~58140u))), vec2<i32>(-1i) * -(~(~u_input.c.yw)), u_input.a, vec3<u32>(9104u, abs(1u) << (~(var_0 ^ 4294967295u) % 32u), 0u));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(394f, _wgslsmith_div_f32(-1010f, -172f))));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-601f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1507f - -282f)), true))));
    return vec3<i32>(-13916i, _wgslsmith_sub_i32(~(func_3(Struct_2(8811u), vec2<u32>(var_0, var_2.e.x)) ^ var_2.c.x), (~u_input.c.x << (var_0 % 32u)) << (firstLeadingBit(~var_0) % 32u)), abs(~(~countOneBits(var_2.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(31332u, u_input.b);
    let var_1 = ~(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 24117u), ~(~vec2<u32>(39539u, var_0))));
    let var_2 = ~_wgslsmith_mult_vec4_i32(u_input.c, abs(~func_1(false, vec2<bool>(true, false), Struct_2(20163u))));
    let var_3 = ~func_2();
    let var_4 = vec2<bool>(any(vec2<bool>(!(var_2.x >= u_input.a), false)), 56311u != (~var_1.x | 1u));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1520f, -374f, -664f, -1807f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1127f, -799f, 1510f, 233f))))));
    var var_6 = vec4<u32>(_wgslsmith_dot_vec2_u32(~var_1, vec2<u32>(58989u, max(28319u, ~5995u))), var_1.x, var_0, ~27008u);
    var var_7 = _wgslsmith_f_op_f32(-var_5.x);
    var_7 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1659f)) + 1430f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(22973i, -1i, ~(func_1(var_4.x, vec2<bool>(var_4.x, false), Struct_2(var_6.x)).x | u_input.c.x), var_3.x & ~firstLeadingBit(49477i)), ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(var_1, var_6.yw), u_input.b), u_input.c.yz, _wgslsmith_div_f32(-291f, _wgslsmith_f_op_f32(var_5.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -927f) - _wgslsmith_f_op_f32(var_5.x * var_5.x)))));
}

