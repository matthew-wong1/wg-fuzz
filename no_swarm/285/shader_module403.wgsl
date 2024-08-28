struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: u32) -> Struct_4 {
    var var_0 = 58321u;
    global0 = vec2<bool>(all(vec4<bool>(true & arg_2, arg_2 | false, !global0.x, true)), !global0.x && !any(vec3<bool>(global0.x, true, global0.x)));
    var var_1 = -650f;
    let var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(1i, 1i, 1i), -reverseBits(vec3<i32>(-27863i, 25466i, 2147483647i)) >> (~vec3<u32>(_wgslsmith_clamp_u32(1u, arg_3, u_input.a.x), 2121u, 1u) % vec3<u32>(32u)));
    let var_3 = Struct_3(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, select(_wgslsmith_dot_vec4_u32(vec4<u32>(16512u, arg_3, 5504u, u_input.a.x), vec4<u32>(4294967295u, 98692u, 52962u, 4294967295u)), _wgslsmith_div_u32(arg_3, arg_0), arg_2)), ~(~(vec2<u32>(4294967295u, u_input.a.x) | u_input.a))));
    return Struct_4(Struct_2(Struct_1(arg_1, -1i, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, -694f, 385f, 1104f), vec4<f32>(219f, 521f, 509f, -1147f), vec4<bool>(false, global0.x, true, arg_2))))), vec4<u32>(36176u, ~var_3.a.x, select(u_input.c, u_input.a.x, global0.x), 1u), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(var_3.a, var_3.a), vec2<u32>(u_input.c, var_3.a.x) >> (vec2<u32>(arg_0, 1u) % vec2<u32>(32u)))), arg_1, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(756f, -135f)), arg_1) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 - -313f)))), Struct_1(arg_1, _wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, -1i), vec2<i32>(-2147483647i, var_2.x) ^ vec2<i32>(-18891i, var_2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-222f, 645f, arg_1, 983f))), reverseBits(select(vec4<u32>(38656u, 1u, arg_0, 27298u), vec4<u32>(52399u, var_3.a.x, 1u, u_input.c), vec4<bool>(arg_2, true, false, true))), ~firstLeadingBit(u_input.a)), _wgslsmith_f_op_f32(-1311f + _wgslsmith_f_op_f32(-arg_1))));
}

fn func_1() -> f32 {
    let var_0 = func_2(0u, -693f, global0.x, _wgslsmith_add_u32(u_input.c, ~u_input.c));
    let var_1 = Struct_3(~(~vec2<u32>(10853u, 1u)));
    let var_2 = select(vec2<bool>(false, _wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.a.a.b, -16318i), vec2<i32>(3461i, var_0.a.d.b) << (vec2<u32>(var_1.a.x, var_0.a.a.e.x) % vec2<u32>(32u))) > var_0.a.a.b), !(!select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), vec2<bool>(true, global0.x)), select(vec2<bool>(global0.x, true), vec2<bool>(true, false), global0.x), any(vec2<bool>(global0.x, true)))), select(vec2<bool>(global0.x, !global0.x), select(vec2<bool>(global0.x, all(vec2<bool>(global0.x, global0.x))), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(global0.x, false))), any(vec2<bool>(global0.x, global0.x != true))));
    global0 = !(!vec2<bool>(all(vec3<bool>(true, var_2.x, global0.x)), true));
    var var_3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.a.d.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-841f - -1002f), _wgslsmith_f_op_f32(var_0.a.b - -1733f)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-637f - -953f)), _wgslsmith_f_op_f32(-var_0.a.e)))));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(step(-713f, 1072f)), -44248i, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(arg_0 - arg_1.b), _wgslsmith_f_op_f32(635f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -2028f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.d.c + vec4<f32>(arg_1.b, -322f, 557f, arg_1.d.c.x)))), reverseBits(vec4<u32>(_wgslsmith_div_u32(arg_1.d.d.x, arg_1.a.e.x), ~u_input.c, _wgslsmith_sub_u32(arg_1.a.e.x, 44221u), ~arg_1.d.e.x)), select(~func_2(22895u, 1877f, true, arg_1.a.d.x).a.a.d.xx, abs(arg_1.a.d.ww), any(select(vec3<bool>(false, global0.x, false), vec3<bool>(true, false, global0.x), vec3<bool>(true, true, global0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1f)) * 1073f), -1939f, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(446f))) - _wgslsmith_f_op_f32(1036f - -1060f)), _wgslsmith_add_i32(arg_1.a.b, i32(-1i) * -13270i), _wgslsmith_f_op_vec4_f32(-arg_1.a.c), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(19234u, 11564u, 69717u, 1u), arg_1.a.d), ~arg_1.a.e), -276f);
    global0 = vec2<bool>(all(!select(select(vec3<bool>(false, global0.x, global0.x), vec3<bool>(true, false, false), global0.x), !vec3<bool>(global0.x, false, global0.x), !vec3<bool>(global0.x, true, true))), max(_wgslsmith_dot_vec4_i32(~vec4<i32>(10528i, -2147483647i, var_0.a.b, var_0.a.b), vec4<i32>(0i, arg_1.a.b, 0i, -2147483647i)), var_0.a.b) > -2147483647i);
    var var_1 = -29839i;
    var_1 = -_wgslsmith_div_i32(abs(97556i), -22189i);
    var_1 = -arg_1.a.b;
    return Struct_3(min(~(~(~arg_1.a.d.xx)), _wgslsmith_clamp_vec2_u32(u_input.a, min(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.d.x, arg_1.d.e.x), vec2<u32>(u_input.c, var_0.d.d.x)), arg_1.a.e), _wgslsmith_div_vec2_u32(u_input.a, ~u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec3<bool>(global0.x, all(select(vec4<bool>(true, true, global0.x, true), vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(false, false, global0.x, global0.x))), global0.x));
    var var_1 = func_3(_wgslsmith_f_op_f32(func_1()), func_2(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -890f)), global0.x, ~(~(~40835u))).a);
    let var_2 = countOneBits(~min(vec4<i32>(2147483647i << (u_input.c % 32u), 1i, 1i, 7112i), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-908f + -412f)) + _wgslsmith_f_op_f32(func_1())))), ((0i | var_2.x) | (countOneBits(var_2.x) << (func_2(var_1.a.x, 1000f, var_0.x, u_input.c).a.a.e.x % 32u))) & ~(-min(var_2.x, 0i)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(572f, -136f))))), 1507f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2350f))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(13810u, var_1.a.x, var_1.a.x, 1u), ~vec4<u32>(u_input.c, 0u, u_input.c, 1u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 33136u, var_1.a.x, var_1.a.x), vec4<u32>(var_1.a.x, 40927u, var_1.a.x, var_1.a.x)), ~vec4<u32>(u_input.b, 4294967295u, 1u, 0u) | firstLeadingBit(vec4<u32>(13500u, var_1.a.x, 16145u, 0u))), countOneBits(abs(vec2<u32>(u_input.c, _wgslsmith_div_u32(0u, var_1.a.x)))));
    var var_4 = func_3(_wgslsmith_f_op_f32(var_3.c.x + var_3.c.x), func_2(u_input.b, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(870f))) >= -914f, _wgslsmith_mult_u32(var_1.a.x, 1u)).a);
    var_1 = Struct_3(min(u_input.a, var_4.a));
    let var_5 = (~(-_wgslsmith_dot_vec2_i32(var_2.zz, vec2<i32>(1i, -16146i))) <= var_3.b) & global0.x;
    let var_6 = func_3(var_3.a, Struct_2(func_2(var_1.a.x, 1299f, var_5, _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 30140u, var_1.a.x, u_input.b), vec4<u32>(78869u, 4294967295u, 4294967295u, 32785u), true), var_3.d)).a.d, -1511f, -663f, Struct_1(-1037f, ~(~1i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1110f, 1415f, -774f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1354f, 1426f, var_3.a, var_3.a) - vec4<f32>(-418f, var_3.c.x, var_3.c.x, var_3.c.x)))), vec4<u32>(4294967295u, 51335u, var_1.a.x, u_input.a.x) << (countOneBits(var_3.d) % vec4<u32>(32u)), select(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 990u), u_input.a), select(vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(var_0.x, true)), select(var_0.zz, var_0.xy, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-683f * var_3.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-30300i, max(u_input.c, ~(~8332u)), var_2.x, _wgslsmith_mod_i32(-1i, var_2.x) << (u_input.b % 32u), ~func_2(0u, _wgslsmith_f_op_f32(901f + _wgslsmith_f_op_f32(var_3.c.x * var_3.c.x)), var_5, 1u << (var_4.a.x % 32u)).a.d.b);
}

