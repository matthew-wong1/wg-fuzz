struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 16>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    return firstTrailingBit(global1[_wgslsmith_index_u32(61333u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(22144u, 16u)], 16u)], 16u)]);
}

fn func_2(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(abs(u_input.a.x), ~28706u), 115960u), ~(~func_3()), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, 62214u), ~vec4<u32>(0u, u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(1u, 16u)])), 14422u), ~(~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 73908u, global1[_wgslsmith_index_u32(0u, 16u)], 8781u), vec4<u32>(u_input.d.x, u_input.a.x, 4294967295u, u_input.a.x), vec4<u32>(global1[_wgslsmith_index_u32(0u, 16u)], 0u, 70243u, global1[_wgslsmith_index_u32(u_input.d.x, 16u)])), vec4<u32>(u_input.a.x, u_input.d.x, u_input.a.x, global1[_wgslsmith_index_u32(u_input.d.x, 16u)]) >> (vec4<u32>(1u, 18141u, u_input.a.x, 0u) % vec4<u32>(32u)))));
    global0 = _wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(arg_0 * arg_0))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-374f, _wgslsmith_f_op_f32(arg_0.x * global0.x)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -463f, global0.x, 131f) + vec4<f32>(573f, global0.x, arg_0.x, 151f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -464f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(global0.x, -1440f)))), _wgslsmith_sub_u32(min(47518u, 4294967295u), ~min(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], 0u)), abs(u_input.a), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.d.x, 16u)], max(_wgslsmith_div_u32(0u, u_input.a.x), ~82624u)), vec2<bool>(any(vec3<bool>(true, true, true)), false));
    let var_2 = Struct_1(vec4<f32>(2035f, -717f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x - global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.a.x, global0.x, var_1.e.x)) - -291f))), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(func_3(), u_input.a.x), var_0.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 1u), var_1.c.yy), 16u)], select(var_0.x, u_input.a.x, false)), 16u)]), vec3<u32>(46482u, firstLeadingBit(_wgslsmith_mult_u32(u_input.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(6721u, 16u)], 16u)]) << (select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.c.x, 16u)], 16u)], var_1.d, var_1.e.x) % 32u)), 1u), ~40787u, var_1.e);
    var var_3 = !select(select(vec3<bool>(var_2.e.x | true, true, !var_2.e.x), vec3<bool>(var_1.e.x, var_2.e.x, any(var_2.e)), true), !(!select(vec3<bool>(var_2.e.x, var_1.e.x, var_2.e.x), vec3<bool>(var_1.e.x, var_2.e.x, false), vec3<bool>(var_1.e.x, var_2.e.x, true))), true);
    return Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1735f, var_2.a.x, -183f, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -991f, -637f, -136f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_2.a))))), 8679u & u_input.d.x, ~u_input.d, firstLeadingBit(19312u), vec2<bool>(false, var_1.e.x));
}

fn func_1(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-652f, 123f), vec2<f32>(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-global0.x)), global0.x), select(vec2<bool>(true, u_input.e.x > -756i), select(!vec2<bool>(arg_1, arg_0), select(vec2<bool>(arg_0, false), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)), 706f > global0.x), arg_0))));
    return 13768u ^ (select(~10860u, _wgslsmith_dot_vec4_u32(vec4<u32>(5849u, global1[_wgslsmith_index_u32(11140u, 16u)], 24043u, 0u), vec4<u32>(4294967295u, u_input.d.x, u_input.a.x, 1u)), !any(vec3<bool>(arg_1, var_0.e.x, true))) | (var_0.b ^ 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mod_u32(func_1(true, true), u_input.d.x));
    var var_1 = u_input.e.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.x, 1227f, global0.x, -289f)))) + _wgslsmith_f_op_vec4_f32(max(func_2(vec2<f32>(-846f, global0.x)).a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -1005f, -338f) - vec4<f32>(-427f, -319f, global0.x, global0.x)))))), u_input.d.x, vec3<u32>(~4294967295u, 0u, 1u), _wgslsmith_mod_u32(var_0, _wgslsmith_div_u32(min(~var_0, func_3()), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(37104u, 16u)], 16u)] >> (u_input.a.x % 32u))), vec2<bool>(select(false || (var_0 < u_input.d.x), false, false), !(!select(false, true, true))));
    var var_3 = min(~(~63u), _wgslsmith_div_u32(firstLeadingBit(~var_2.b | var_2.b), func_3()));
    var_3 = global1[_wgslsmith_index_u32(abs(47062u), 16u)];
    var var_4 = func_2(var_2.a.zz);
    var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(max(firstLeadingBit(vec3<u32>(1u, 4294967295u, 4294967295u)), firstLeadingBit(var_4.c)), var_2.c) & u_input.d.x, 53955u);
    var_4 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_4.a.x * var_2.a.x), _wgslsmith_f_op_f32(global0.x + var_2.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(874f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_4.a.x, -843f)), var_2.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(104f - 481f), 336f, -136f, 1000f))), _wgslsmith_add_u32(var_2.b, ~select(~var_0, func_3(), true)), _wgslsmith_add_vec3_u32(vec3<u32>(var_2.d, func_1(!var_2.e.x, true), firstLeadingBit(func_3())), vec3<u32>(~93401u, var_2.d, var_0)), var_0, vec2<bool>(var_2.e.x || false, var_4.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.yx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2674f)))))), 1u, abs(~(~min(vec4<u32>(1u, var_4.b, var_2.c.x, var_4.c.x), vec4<u32>(var_0, var_2.d, 7606u, var_4.c.x)))));
}

