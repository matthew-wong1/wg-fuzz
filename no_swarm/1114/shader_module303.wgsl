struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> i32 {
    var var_0 = select(select(!(!select(vec4<bool>(false, false, false, arg_1.x), vec4<bool>(true, false, arg_0, arg_0), arg_1.x)), vec4<bool>(arg_0, true, ~u_input.a.x < (i32(-1i) * -1i), false), any(!(!vec4<bool>(arg_1.x, true, arg_0, true)))), select(select(!(!vec4<bool>(arg_1.x, false, arg_0, arg_0)), vec4<bool>(arg_1.x, arg_0, !arg_1.x, arg_1.x), !select(vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(false, arg_0, false, arg_1.x), true)), vec4<bool>(true, true, true, true), true), false);
    return u_input.a.x;
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_3(_wgslsmith_add_u32(~countOneBits(1u), 51811u | _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(3408u, u_input.c, u_input.e) | vec3<u32>(u_input.c, 0u, 4294967295u))));
    var var_1 = !(!(!vec2<bool>(true, all(vec2<bool>(true, false)))));
    var var_2 = _wgslsmith_mod_vec4_i32(-abs(vec4<i32>(_wgslsmith_div_i32(-1i, u_input.a.x), _wgslsmith_mult_i32(25341i, 0i), max(u_input.b, 14279i), _wgslsmith_dot_vec4_i32(vec4<i32>(26379i, -1i, 1i, u_input.b), vec4<i32>(13283i, u_input.a.x, u_input.b, 1i)))), vec4<i32>(min(u_input.b >> (~41481u % 32u), -1i), u_input.a.x, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_sub_i32(abs(7800i), _wgslsmith_sub_i32(0i, u_input.b))), func_3(true, select(select(vec3<bool>(true, true, true), vec3<bool>(true, var_1.x, true), true), vec3<bool>(var_1.x, false, var_1.x), true))));
    let var_3 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_div_i32(var_2.x, var_2.x), -u_input.a.x), ~u_input.a) != reverseBits(-_wgslsmith_dot_vec2_i32(u_input.a.yx, vec2<i32>(-1i, -1i))), u_input.e, _wgslsmith_div_u32(93185u | abs(~u_input.c), 42414u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - vec2<f32>(-990f, _wgslsmith_f_op_f32(f32(-1f) * -343f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_f_op_f32(-1306f - 833f))), !(!(!vec2<bool>(false, var_1.x))))), abs(abs(vec3<i32>(-u_input.b, ~(-1i), _wgslsmith_div_i32(0i, u_input.a.x)))));
    let var_4 = ~var_3.e.x;
    return (abs(~vec4<u32>(var_0.a, var_0.a, 24247u, 1u)) & firstLeadingBit(_wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, var_3.b, var_0.a, 11338u), vec4<u32>(var_0.a, var_0.a, var_0.a, u_input.d), false), countOneBits(vec4<u32>(u_input.c, 36545u, var_0.a, 39254u))))) ^ vec4<u32>(max(4294967295u, u_input.e), ~(~var_3.b), var_3.b, ~min(u_input.e, _wgslsmith_mult_u32(21649u, u_input.c)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_3) -> vec4<u32> {
    return _wgslsmith_div_vec4_u32(abs(~((vec4<u32>(62129u, 1u, 0u, arg_3.a) << (vec4<u32>(4294967295u, 0u, arg_2.b, 0u) % vec4<u32>(32u))) << (abs(vec4<u32>(1u, arg_3.a, u_input.d, 87791u)) % vec4<u32>(32u)))), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.e, u_input.c), u_input.c, ~40255u, u_input.e) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(4821u, u_input.c, u_input.e, 1u), ~vec4<u32>(u_input.d, 6512u, u_input.d, 52941u), select(vec4<u32>(4294967295u, 15926u, u_input.c, 41164u), vec4<u32>(u_input.e, 0u, 0u, 4294967295u), vec4<bool>(true, true, true, false))) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(func_1(true, Struct_2(true, 33803u, u_input.d, vec2<f32>(788f, -727f), u_input.a), Struct_2(true, u_input.e, u_input.c, vec2<f32>(-1427f, 747f), vec3<i32>(0i, 13221i, u_input.a.x)), Struct_3(11692u)) ^ countOneBits(vec4<u32>(0u, 63u, u_input.e, 0u)), ~vec4<u32>(46897u, 37252u, u_input.e, 1u) & (vec4<u32>(u_input.e, 28251u, u_input.c, u_input.d) & vec4<u32>(0u, 28729u, 62356u, u_input.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(1f, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-957f * -2167f), 1009f, true))), _wgslsmith_f_op_f32(f32(-1f) * -557f)));
}

