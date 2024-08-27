struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> u32 {
    global0 = array<Struct_2, 1>();
    return u_input.a.x;
}

fn func_3() -> f32 {
    var var_0 = Struct_1(16265u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-957f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-560f, 537f), _wgslsmith_f_op_f32(sign(511f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1033f, 1154f)))))), _wgslsmith_dot_vec4_i32(min(-vec4<i32>(2147483647i, 1i, 0i, 28371i), vec4<i32>(1i, 1i, 1i, 1i)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(11612i, -31150i, 2147483647i, -36356i), vec4<i32>(2147483647i, -2147483647i, -32193i, 2586i)), abs(vec4<i32>(-1i, -23905i, -3567i, -2147483647i)), false)) >= -1i, _wgslsmith_dot_vec3_i32(-vec3<i32>(i32(-1i) * -1i, ~(-20357i), _wgslsmith_clamp_i32(-6495i, 2147483647i, -45397i)), select(vec3<i32>(1i, 1i, 1i), ~(~vec3<i32>(20171i, 1i, 36922i)), vec3<bool>(true, false, true))));
    var_0 = Struct_1(0u, -318f, !var_0.c, var_0.d);
    let var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2044f)) * var_0.b), _wgslsmith_f_op_f32(round(-484f))))));
    let var_2 = (countOneBits((vec4<i32>(var_0.d, var_0.d, 122229i, -11866i) | vec4<i32>(-1i, -42012i, -13039i, var_0.d)) ^ (vec4<i32>(-49100i, -9i, -1i, var_0.d) >> (vec4<u32>(u_input.a.x, var_0.a, var_0.a, var_0.a) % vec4<u32>(32u)))) << (vec4<u32>(4294967295u, 4294967295u, u_input.a.x & (var_0.a >> (u_input.a.x % 32u)), ~countOneBits(0u)) % vec4<u32>(32u))) << (max(vec4<u32>(~1u, _wgslsmith_dot_vec2_u32(select(u_input.a.yy, u_input.a.yx, var_0.c), ~u_input.a.xz), var_0.a, abs(~22276u)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, u_input.a.x, 58702u, var_0.a), vec4<u32>(u_input.a.x, 4294967295u, 33731u, 0u)), var_0.a, ~54511u, u_input.a.x)) % vec4<u32>(32u));
    global0 = array<Struct_2, 1>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1787f) * 137f)));
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    let var_0 = firstLeadingBit(max(abs(_wgslsmith_mod_vec3_u32(u_input.a, _wgslsmith_mod_vec3_u32(u_input.a, u_input.a))), ~(~u_input.a) & vec3<u32>(_wgslsmith_add_u32(6784u, arg_1.c.a), func_2(arg_2.c, arg_2, u_input.a), ~arg_2.b.a)));
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-695f, -148f, 1668f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1868f, -2102f, arg_2.c.b)))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-349f)), arg_1.b.b, _wgslsmith_f_op_f32(-arg_2.c.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-2627f, _wgslsmith_f_op_f32(select(arg_2.c.b, arg_2.c.b, false)), -727f))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(arg_2.b.b * arg_2.b.b)), arg_1.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-273f)))));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-796f, 1244f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2119f, arg_1.c.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.c.b)) * _wgslsmith_f_op_f32(1148f + var_2.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, -1588f, -392f, arg_1.c.b), vec4<f32>(-1658f, -504f, 116f, var_1.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-611f, arg_2.c.b, 1156f, -327f)))) + vec4<f32>(_wgslsmith_f_op_f32(-1180f * -505f), arg_1.b.b, -489f, _wgslsmith_f_op_f32(select(var_1.x, 923f, arg_0)))), true)), vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1927f, var_1.x)) * -2138f)), var_1.x, _wgslsmith_f_op_f32(arg_1.b.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.x + arg_2.c.b), _wgslsmith_f_op_f32(1687f - arg_2.b.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))))));
    var var_4 = Struct_2(arg_1.c.a, Struct_1(0u, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.b, _wgslsmith_f_op_f32(-var_3.x))), arg_1.b.c, -1718i), arg_1.c);
    return Struct_1(max(arg_2.a, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.a, 71115u, 4294967295u, var_4.a), vec4<u32>(1u, 4294967295u, 1u, u_input.a.x)))), _wgslsmith_f_op_f32(-arg_1.b.b), all(select(vec2<bool>(!arg_0, any(vec4<bool>(false, false, var_4.b.c, arg_1.c.c))), vec2<bool>(true, true), all(select(vec4<bool>(arg_2.b.c, arg_0, arg_2.c.c, var_4.b.c), vec4<bool>(arg_1.c.c, true, arg_2.c.c, true), arg_2.c.c)))), -3192i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-(~_wgslsmith_mult_i32(8101i, -1i)) >> (~_wgslsmith_mod_u32(1u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)) % 32u));
    let var_1 = func_1(!all(vec4<bool>(true, true, true, true)), global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(u_input.a.x, 1u)]);
    global0 = array<Struct_2, 1>();
    let var_2 = Struct_2(max(24092u, _wgslsmith_sub_u32(func_2(func_1(var_1.c, Struct_2(var_1.a, Struct_1(u_input.a.x, var_1.b, var_1.c, -26025i), Struct_1(var_1.a, var_1.b, true, var_1.d)), global0[_wgslsmith_index_u32(var_1.a, 1u)]), global0[_wgslsmith_index_u32(reverseBits(0u), 1u)], min(u_input.a, u_input.a)), var_1.a)), Struct_1(_wgslsmith_add_u32(64855u, 1u), 1990f, false, 2147483647i), func_1(true, global0[_wgslsmith_index_u32(func_1(var_1.c, global0[_wgslsmith_index_u32(~var_1.a, 1u)], Struct_2(_wgslsmith_add_u32(4294967295u, 0u), Struct_1(56090u, 1000f, var_1.c, -2147483647i), Struct_1(0u, var_1.b, false, var_0))).a, 1u)], Struct_2(var_1.a >> (4294967295u % 32u), func_1(false, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_1.a, var_1.a, u_input.a.x)), 1u)], global0[_wgslsmith_index_u32(abs(u_input.a.x), 1u)]), Struct_1(118270u, _wgslsmith_f_op_f32(abs(-1124f)), false, abs(var_0)))));
    let var_3 = 320f;
    let var_4 = _wgslsmith_add_i32(var_2.c.d, -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_1.d), vec2<i32>(var_0, -49029i), vec2<i32>(var_1.d, 36877i)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_1.d), vec2<i32>(var_0, var_0))), ~select(vec2<i32>(-2147483647i, -1i), vec2<i32>(0i, var_0), false)));
    let var_5 = var_1;
    global0 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-332f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.b.b, 1551f))) + vec2<f32>(var_3, var_1.b))))));
}

