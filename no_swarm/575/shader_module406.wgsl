struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(960f)) + _wgslsmith_div_f32(245f, 1575f)) != _wgslsmith_f_op_f32(step(1275f, _wgslsmith_f_op_f32(204f - 1015f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1815f - 2595f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1351f, -409f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1192f + _wgslsmith_f_op_f32(f32(-1f) * -1896f)) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1651f, -988f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(733f, 171f), vec2<f32>(-299f, var_0.b)))))));
    var var_2 = ~10940u;
    var var_3 = var_0.a;
    var var_4 = Struct_2(Struct_1(!(var_0.b <= var_1.x) || all(!vec3<bool>(true, false, var_0.a.a))), -167f);
    return !select(!vec2<bool>(true, any(vec4<bool>(var_0.a.a, var_4.a.a, var_3.a, var_0.a.a))), vec2<bool>(all(select(vec2<bool>(false, var_4.a.a), vec2<bool>(var_0.a.a, var_3.a), vec2<bool>(false, var_0.a.a))), !all(vec3<bool>(var_4.a.a, true, true))), vec2<bool>(select(var_0.a.a || var_0.a.a, var_0.b >= var_1.x, all(vec3<bool>(var_0.a.a, var_4.a.a, false))), false));
}

fn func_2(arg_0: bool, arg_1: u32) -> vec2<bool> {
    var var_0 = Struct_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 0i), _wgslsmith_mod_vec2_i32(u_input.b.xx, u_input.b.xx)) != ~_wgslsmith_div_i32(firstTrailingBit(u_input.b.x), ~u_input.b.x));
    var_0 = Struct_1(arg_0);
    var var_1 = var_0.a;
    var_0 = Struct_1(!(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.a, arg_1), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1, 32129u), vec3<u32>(arg_1, 0u, arg_1))) <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, u_input.a), vec2<u32>(u_input.a, u_input.a))));
    var_0 = Struct_1(!arg_0);
    return !(!func_3());
}

fn func_1(arg_0: vec4<u32>) -> bool {
    var var_0 = Struct_1(true);
    var_0 = Struct_1(~_wgslsmith_mod_u32(~19325u, _wgslsmith_div_u32(1u, 1u)) != u_input.a);
    let var_1 = _wgslsmith_f_op_f32(182f - 156f);
    var var_2 = vec2<bool>(!all(select(vec2<bool>(var_0.a, false), func_2(var_0.a, arg_0.x), !vec2<bool>(false, var_0.a))), (u_input.a > 1u) | any(vec3<bool>(true, true, var_0.a)));
    let var_3 = Struct_2(Struct_1(func_3().x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2631f)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(233f - _wgslsmith_f_op_f32(sign(-1105f))), _wgslsmith_f_op_f32(f32(-1f) * -982f), true))), 1113f));
    let var_1 = u_input.a;
    var var_2 = -184f;
    var_0 = -1383f;
    var_0 = -855f;
    let var_3 = func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.a | 35825u, ~4294967295u, _wgslsmith_mod_u32(75085u, 18492u)), vec4<u32>(u_input.a, 52365u, 1u, 1u) ^ ~vec4<u32>(42968u, var_1, u_input.a, u_input.a))) & (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-299f - 649f))) * _wgslsmith_f_op_f32(ceil(-437f))) < _wgslsmith_f_op_f32(205f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.c, 2147483647i, _wgslsmith_dot_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(-6235i, u_input.c, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 27470i, 56684i, u_input.d)), vec4<i32>(abs(u_input.b.x), 2147483647i, max(u_input.d, 31938i), ~u_input.c)), countOneBits(u_input.b.x)));
}

