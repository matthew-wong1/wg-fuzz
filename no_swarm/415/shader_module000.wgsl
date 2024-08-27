struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: u32 = 17502u;

var<private> global2: array<Struct_1, 21>;

var<private> global3: i32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.x, arg_3.x), vec2<i32>(2147483647i, abs(max(0i, -2147483647i))) | -arg_3.yy);
    let var_1 = Struct_1(firstLeadingBit(select(~(arg_0.a | vec3<u32>(71139u, arg_0.a.x, u_input.a)), vec3<u32>(arg_0.a.x, ~83794u, 1u), arg_2.b.x)), vec3<bool>(all(!arg_0.b), any(arg_0.b.zy), arg_2.c), true);
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    global3 = -25753i;
    return _wgslsmith_mult_u32(~arg_0.a.x, firstTrailingBit(_wgslsmith_mod_u32(arg_0.a.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, arg_2.a.x), 0u))));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    var var_0 = global2[_wgslsmith_index_u32(min(~4294967295u, countOneBits(_wgslsmith_mod_u32(~(~45397u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, 0u))))), 21u)];
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-430f, global0.x), global0.yy);
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, firstTrailingBit(u_input.a)), ~vec2<u32>(u_input.a, (0u & var_0.a.x) & 4294967295u)), 21u)];
    global0 = vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(614f - global0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - global0.x)))));
    let var_2 = ~(vec3<u32>(~var_0.a.x, _wgslsmith_div_u32(0u, var_0.a.x ^ 59860u), 28241u) & vec3<u32>(0u, _wgslsmith_sub_u32(var_0.a.x, u_input.a), abs(func_3(global2[_wgslsmith_index_u32(u_input.a, 21u)], vec2<bool>(false, true), global2[_wgslsmith_index_u32(u_input.a, 21u)], vec3<i32>(-29156i, arg_0, arg_0)))));
    return !vec3<bool>(var_0.b.x, !var_0.b.x & true, true);
}

fn func_1(arg_0: f32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = Struct_1(max(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(10069u, 4294967295u, 57617u))), ~(~vec3<u32>(u_input.a, u_input.a, 4294967295u))), !(!select(!vec3<bool>(arg_1.x, false, true), func_2(-52035i), true & arg_1.x)), arg_1.x);
    global1 = _wgslsmith_div_u32(u_input.a, u_input.a);
    global2 = array<Struct_1, 21>();
    var var_1 = vec2<u32>(u_input.a, ~_wgslsmith_add_u32(1u, 40600u));
    var var_2 = vec2<i32>(-1i) * -max(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_clamp_i32(5054i, 21521i, 2147483647i), ~31216i));
    return global2[_wgslsmith_index_u32(~4294967295u, 21u)];
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_mod_vec4_u32(firstLeadingBit(~(~(~vec4<u32>(11184u, 25273u, 22931u, u_input.a)))), ~(~(vec4<u32>(1u, 0u, 20728u, u_input.a) | select(vec4<u32>(35696u, 28215u, arg_2.a.x, 6350u), vec4<u32>(arg_2.a.x, u_input.a, 5618u, u_input.a), vec4<bool>(arg_2.c, arg_2.c, true, true)))));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1220f)) - -840f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(global0.x * global0.x))) * -318f)));
    let var_3 = true;
    global1 = ~(~u_input.a);
    return Struct_1(~arg_2.a, arg_2.b, true);
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(-678f)), _wgslsmith_f_op_f32(min(231f, _wgslsmith_f_op_f32(1550f * -156f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1300f - -1059f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, -1281f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, 1896f, 636f))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(abs(global0.x)), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(1950f, 854f, true))), !arg_2))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-459f, global0.x, global0.x, global0.x)))))));
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    let var_1 = global2[_wgslsmith_index_u32(u_input.a >> (~u_input.a % 32u), 21u)];
    return vec3<u32>(countOneBits(arg_0.a.x), arg_0.a.x, 38802u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstTrailingBit(func_5(func_4(2147483647i, vec4<i32>(59853i, -2147483647i, -1i, -278i), func_1(global0.x, vec2<bool>(true, false))), -(~39823i), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, true, true, true), true))), select(vec3<bool>((global0.x == global0.x) || true, true, true), vec3<bool>(_wgslsmith_div_i32(1i, 19337i) <= _wgslsmith_dot_vec3_i32(vec3<i32>(21513i, 27969i, 0i), vec3<i32>(20666i, -1i, -11682i)), any(vec4<bool>(true, true, true, true)), true), !(!any(vec3<bool>(false, true, true)))), true);
    var var_1 = 40260u;
    global0 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -394f))), 112f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(2121f)))) - global0.x), global0.x <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)), 1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(-global0.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    var var_3 = ~0u;
    let var_4 = Struct_1(var_0.a, !vec3<bool>(all(!var_0.b), !(!var_0.c), _wgslsmith_f_op_f32(-var_2) == 725f), var_0.b.x);
    global1 = 4294967295u;
    global1 = firstTrailingBit(var_0.a.x);
    var_3 = _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u << (~var_0.a.x % 32u), ~7694u, (20179u & var_4.a.x) | 17022u), max(func_5(func_1(global0.x, var_0.b.yy), countOneBits(1i), !vec4<bool>(var_0.c, var_4.b.x, var_0.c, true)), _wgslsmith_sub_vec3_u32(var_0.a, vec3<u32>(4294967295u, 0u, 0u)))), ~abs(~72869u));
    let x = u_input.a;
    s_output = StorageBuffer(591f, 1u, ~(-(~abs(vec4<i32>(0i, 0i, -17419i, -33663i)))), vec2<i32>(7698i, max(-_wgslsmith_mult_i32(-1i, -16355i), _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, -22773i), ~1i))));
}

