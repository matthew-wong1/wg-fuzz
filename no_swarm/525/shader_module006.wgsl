struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> i32 {
    return -12166i;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(146f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1354f, -1847f)) - _wgslsmith_f_op_f32(1976f - _wgslsmith_f_op_f32(-464f + -966f)))));
    var var_1 = Struct_3(~firstLeadingBit(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -33093i, u_input.a, 1i), vec4<i32>(1874i, u_input.d.x, -2147483647i, u_input.d.x))), var_0.x);
    let var_2 = Struct_2(193f, Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1419f, -986f, var_0.x) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, var_1.b, 234f))))), vec3<u32>(~(u_input.c.x << (u_input.c.x % 32u)), ~1u, 19427u), vec2<bool>(true, true), vec4<i32>(var_1.a.x, _wgslsmith_add_i32(~2147483647i, u_input.a), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.x, -1i), vec2<i32>(u_input.d.x, -1i)), u_input.d.x), ~var_1.a.x), vec4<bool>(false, all(vec3<bool>(true, true, true)), any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), true)));
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(246f, var_2.b.a.x)), 694f)), var_2.a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * -1401f)))), var_0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1012f, -301f, _wgslsmith_f_op_f32(ceil(var_1.b)), _wgslsmith_f_op_f32(trunc(999f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, 809f, -2750f, var_1.b), vec4<f32>(870f, var_1.b, var_0.x, var_1.b)) * vec4<f32>(var_1.b, var_0.x, var_1.b, var_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(195f, 643f))), -785f, _wgslsmith_div_f32(var_0.x, var_1.b), var_2.a)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1120f)), var_2.a, _wgslsmith_f_op_f32(1f * var_1.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_3.zww - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1142f, var_2.b.a.x, var_0.x))))), ~var_2.b.b, vec2<bool>(var_2.b.e.x, var_2.b.e.x), vec4<i32>(-1i, -47476i, ~(~26394i | ~u_input.d.x), select(_wgslsmith_add_i32(var_2.b.d.x, var_1.a.x) ^ func_2(), -1i, _wgslsmith_f_op_f32(-var_3.x) <= 749f)), vec4<bool>(all(!vec2<bool>(var_2.b.c.x, var_2.b.e.x)), var_2.b.c.x, !any(select(vec3<bool>(true, true, var_2.b.c.x), vec3<bool>(true, false, var_2.b.c.x), false)), var_2.b.c.x));
    return _wgslsmith_mult_u32(~_wgslsmith_mod_u32(~var_2.b.b.x, var_4.b.x), ~_wgslsmith_add_u32(~0u, ~u_input.c.x));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> u32 {
    let var_0 = 1u;
    var var_1 = _wgslsmith_clamp_i32(func_2(), -reverseBits(u_input.d.x), _wgslsmith_mult_i32(-(~(-1i | u_input.d.x)), ~(-41014i)));
    var_1 = -1i >> ((func_3() | _wgslsmith_clamp_u32(var_0, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(1u, 36370u, 4294967295u)), u_input.b.x), ~0u)) % 32u);
    var_1 = -31376i;
    var_1 = func_2();
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(u_input.d.x, u_input.a);
    let var_1 = ~vec4<u32>(~(~959u), 1u, func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1296f, -396f, -1939f, -1000f)), vec4<f32>(-1273f, -503f, 868f, 455f), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1460f)))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_clamp_u32(var_1.x, 9351u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, u_input.c.x, 34712u, var_1.x), var_1)), _wgslsmith_dot_vec4_u32(var_1, vec4<u32>(~u_input.c.x, ~4294967295u, _wgslsmith_dot_vec2_u32(u_input.c, var_1.yw), ~var_1.x))), u_input.c.x, ~(-(-vec2<i32>(-1i, u_input.a) ^ (vec2<i32>(-1i, -44234i) & vec2<i32>(u_input.a, 36059i)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(276f * -1402f)), -808f)), -1000f, true)), ~(~0i));
}

