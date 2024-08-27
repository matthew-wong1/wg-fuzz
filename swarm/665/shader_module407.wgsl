struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(true);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f));
    var var_2 = ~vec3<u32>(~(u_input.a ^ u_input.e), ~(~4294967295u), 8889u) ^ max(~abs(~vec3<u32>(5051u, 0u, 4294967295u)), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(u_input.e, u_input.e, u_input.a) | vec3<u32>(u_input.c.x, 4294967295u, u_input.e)), reverseBits(abs(vec3<u32>(4294967295u, u_input.a, u_input.c.x)))));
    var var_3 = 1u;
    var var_4 = vec3<u32>(var_2.x, 4294967295u << (~(~u_input.a) % 32u), max(~var_2.x, u_input.a));
    return u_input.b;
}

fn func_2() -> bool {
    var var_0 = Struct_2(Struct_1(!(_wgslsmith_div_u32(4294967295u, 74649u) < _wgslsmith_mult_u32(u_input.a, 35381u))), -2336i, ~_wgslsmith_div_vec2_i32(vec2<i32>(-4463i ^ u_input.b, func_3()), u_input.d.zw), Struct_1(true));
    var var_1 = Struct_3(Struct_2(var_0.a, var_0.c.x, u_input.d.wx, Struct_1(!all(vec4<bool>(true, false, false, var_0.d.a)))), select(u_input.d, -(-u_input.d & u_input.d), var_0.a.a), _wgslsmith_div_vec2_f32(vec2<f32>(-383f, _wgslsmith_f_op_f32(f32(-1f) * -1100f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(163f, 546f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1229f, 648f)))), vec4<bool>(var_0.d.a, true, (1u | u_input.a) >= u_input.c.x, any(vec4<bool>(var_0.d.a, var_0.d.a, var_0.a.a, true)) || (!var_0.d.a & true)));
    var_0 = Struct_2(Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.e, u_input.c.x), vec4<u32>(u_input.e, u_input.a, u_input.c.x, 50962u)) == u_input.a), _wgslsmith_clamp_i32(u_input.b, ~(-17216i), u_input.b), var_1.b.xx, var_0.a);
    return var_1.d.x;
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    let var_0 = select(!(!vec3<bool>(all(vec3<bool>(false, true, true)), false, true)), !vec3<bool>(func_2(), true, true), true);
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(-39280i, 5511i), 175i, u_input.d.x, select(firstTrailingBit(i32(-1i) * -25145i) ^ arg_0.x, abs(u_input.b & u_input.d.x), _wgslsmith_add_u32(1u, min(1u, u_input.c.x)) < _wgslsmith_mult_u32(u_input.a, u_input.a)));
    let var_2 = Struct_1(false);
    var_1 = _wgslsmith_div_vec4_i32(-arg_0, -u_input.d);
    let var_3 = vec2<bool>(!(!all(!vec3<bool>(var_2.a, true, false))), false & var_0.x);
    return firstLeadingBit(~(_wgslsmith_dot_vec2_u32(min(u_input.c, u_input.c), ~u_input.c) >> (~4294967295u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs((u_input.e >> (func_1(vec4<i32>(u_input.d.x, 2147483647i, u_input.b, u_input.d.x)) % 32u)) & 0u);
    var var_1 = -104f;
    var_0 = ~reverseBits(~u_input.e >> (abs(u_input.a) % 32u)) << (~_wgslsmith_div_u32(u_input.a >> (14460u % 32u), abs(_wgslsmith_dot_vec2_u32(u_input.c, u_input.c))) % 32u);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(390f, 443f))), 717f, 1353f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-983f, -116f, -349f))) * vec3<f32>(-422f, -107f, 1690f)))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-782f, _wgslsmith_f_op_f32(floor(548f))), -560f), 1002f, 1f));
    let var_3 = vec3<bool>(~(~(-6810i)) < firstLeadingBit(0i & (-13560i ^ u_input.d.x)), any(select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), u_input.a == 93032u), vec2<bool>(false, u_input.a != u_input.c.x), vec2<bool>(false, true))), all(!select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 0u, abs(u_input.a), ~1u), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.e, u_input.e, u_input.c.x, 0u) << (vec4<u32>(4653u, 8805u, u_input.a, 1u) % vec4<u32>(32u)), vec4<u32>(2187u, 1u, 1u, 35325u) | vec4<u32>(u_input.e, u_input.c.x, 33104u, 1u))), _wgslsmith_div_vec2_u32(~(~vec2<u32>(1u, u_input.c.x)), vec2<u32>(u_input.a, abs(4294967295u)) & u_input.c), vec2<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.d.wx, u_input.d.ww), 29515i), _wgslsmith_dot_vec2_i32(select(_wgslsmith_mult_vec2_i32(u_input.d.wz, vec2<i32>(u_input.d.x, u_input.b)), -u_input.d.zw, vec2<bool>(true, true)), vec2<i32>(u_input.d.x, _wgslsmith_div_i32(-46522i, 20615i)))));
}

