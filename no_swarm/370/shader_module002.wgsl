struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(false, vec4<i32>(-12008i, 13085i, 15479i, i32(-2147483648)), 0i, vec3<bool>(true, false, true)), Struct_4(true, vec4<i32>(-4747i, -39223i, 5091i, 1i), 9097i, vec3<bool>(true, true, true)), Struct_4(true, vec4<i32>(43034i, -4821i, i32(-2147483648), 2147483647i), 2147483647i, vec3<bool>(false, false, true)), Struct_4(false, vec4<i32>(-14586i, 2147483647i, 1i, 16427i), 0i, vec3<bool>(true, false, false)), Struct_4(false, vec4<i32>(-2181i, 2147483647i, 2147483647i, i32(-2147483648)), -974i, vec3<bool>(true, true, false)), Struct_4(false, vec4<i32>(34800i, 29437i, -1i, -37911i), i32(-2147483648), vec3<bool>(true, false, true)), Struct_4(false, vec4<i32>(0i, 1i, 1i, -1i), -4225i, vec3<bool>(false, false, false)), Struct_4(false, vec4<i32>(0i, 18623i, 32659i, 14410i), -56826i, vec3<bool>(false, true, true)), Struct_4(false, vec4<i32>(45496i, -60369i, 2147483647i, 3899i), -3758i, vec3<bool>(true, false, false)), Struct_4(false, vec4<i32>(0i, 8987i, 2147483647i, 2147483647i), -1i, vec3<bool>(true, false, false)), Struct_4(true, vec4<i32>(0i, -1392i, -8542i, -1i), 2147483647i, vec3<bool>(true, true, true)));

var<private> global1: vec3<u32> = vec3<u32>(22917u, 0u, 1u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: vec4<f32>, arg_3: u32) -> f32 {
    var var_0 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, !(!any(vec2<bool>(false, false))), false, any(!select(vec2<bool>(false, true), vec2<bool>(false, true), true))), !vec4<bool>(min(7376u, 4294967295u) <= select(4294967295u, 1u, false), false, any(vec2<bool>(true, true)), false));
    var_0 = select(!select(!select(vec4<bool>(var_0.x, true, true, var_0.x), vec4<bool>(true, var_0.x, true, var_0.x), vec4<bool>(true, var_0.x, var_0.x, true)), !(!vec4<bool>(var_0.x, true, true, false)), true), !select(vec4<bool>(!var_0.x, !var_0.x, true, true), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, false, true, false), select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(true, true, true, true), var_0.x)), vec4<bool>(any(vec2<bool>(false, false)), false, !var_0.x, false)), vec4<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-728f * 1285f), _wgslsmith_f_op_f32(abs(-200f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + -424f) - _wgslsmith_f_op_f32(floor(arg_2.x))), _wgslsmith_f_op_f32(ceil(1000f)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_2.x, arg_2.x, var_0.x)), _wgslsmith_f_op_f32(-arg_2.x))), !(!var_0.x), ~max(u_input.b, 14669u) < 70238u));
    let var_1 = ~(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(23442u, global1.x, arg_3, global1.x), vec4<u32>(4294967295u, global1.x, arg_3, arg_3), vec4<bool>(var_0.x, var_0.x, false, false)) & ~vec4<u32>(global1.x, arg_3, u_input.d.x, 1u), ~(vec4<u32>(4294967295u, 41347u, 39821u, global1.x) << (vec4<u32>(arg_3, 15855u, arg_1, 0u) % vec4<u32>(32u)))));
    let var_2 = false;
    let var_3 = all(select(!(!vec2<bool>(true, var_2)), select(var_0.zz, var_0.xy, vec2<bool>(var_0.x, 1u < arg_3)), !any(!vec4<bool>(var_2, true, false, var_0.x))));
    return 1606f;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec3<i32>) -> vec2<bool> {
    let var_0 = arg_1;
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    global1 = u_input.c;
    var var_1 = 46790u < ~arg_1.e;
    return vec2<bool>(true, arg_1.b);
}

fn func_2() -> i32 {
    global0 = array<Struct_4, 11>();
    global1 = vec3<u32>(~131684u, u_input.b & _wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_mod_u32(18413u, u_input.c.x));
    global0 = array<Struct_4, 11>();
    global0 = array<Struct_4, 11>();
    let var_0 = !func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))) * -1000f), Struct_2(global1.x, !select(true, false, true), Struct_1(_wgslsmith_f_op_f32(func_3(u_input.a, u_input.b, vec4<f32>(460f, -654f, 1163f, -2085f), u_input.d.x)), vec4<bool>(true, true, false, false)), ~select(u_input.a, u_input.a, false), 69302u), vec3<i32>(u_input.a.x, 1i, ~_wgslsmith_div_i32(u_input.a.x, u_input.a.x)));
    return _wgslsmith_mult_i32(firstLeadingBit(19136i), 0i);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> vec4<u32> {
    global1 = firstTrailingBit(u_input.c) << (abs(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, u_input.d.x, 4294967295u), vec3<u32>(arg_0.e.e, 12595u, arg_0.e.a) | u_input.c), u_input.c)) % vec3<u32>(32u));
    var var_0 = arg_1.a;
    var var_1 = 57912u;
    let var_2 = _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(arg_0.e.d.x | u_input.a.x, func_2(), countOneBits(arg_3.x)) >> (vec3<u32>(_wgslsmith_clamp_u32(arg_0.e.a, u_input.b, u_input.c.x), u_input.d.x << (1u % 32u), abs(4294967295u)) % vec3<u32>(32u))), -countOneBits(reverseBits(arg_0.e.d)) & countOneBits(vec3<i32>(-65843i, countOneBits(u_input.a.x), 33895i)));
    var_0 = -1040f;
    return _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(20628u, 40087u, 0u, 4294967295u), vec4<u32>(57163u, 36585u, global1.x, arg_0.e.e) | vec4<u32>(4294967295u, global1.x, 30976u, u_input.c.x)), vec4<u32>(1u, 43726u, arg_0.e.e, 48735u) << (~vec4<u32>(4294967295u, arg_0.e.a, 50523u, 1u) % vec4<u32>(32u)), min(vec4<u32>(0u, 76881u, arg_0.e.e, global1.x), vec4<u32>(arg_0.e.a, 84745u, u_input.c.x, u_input.c.x)))), vec4<u32>(42849u, _wgslsmith_sub_u32(~22433u, max(4849u, global1.x)), ~(~reverseBits(arg_0.e.e)), ~(reverseBits(global1.x) >> (~u_input.b % 32u))), reverseBits(vec4<u32>(global1.x, min(33591u, arg_0.e.a) << (65871u % 32u), global1.x, select(1u, ~global1.x, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_mod_vec4_u32(vec4<u32>(51141u, ~u_input.c.x, u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.c.x)), func_1(Struct_3(29438u < u_input.c.x, Struct_1(2019f, vec4<bool>(var_0, true, var_0, var_0)), vec2<bool>(var_0, false), vec2<f32>(231f, 468f), Struct_2(4294967295u, var_0, Struct_1(1000f, vec4<bool>(var_0, var_0, false, var_0)), vec3<i32>(-2147483647i, 65049i, 2147483647i), u_input.b)), Struct_1(-724f, vec4<bool>(false, var_0, true, var_0)), !(var_0 || var_0), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), abs(u_input.a.yz)))) | vec4<u32>(1u, ~(~(13605u << (u_input.d.x % 32u))), _wgslsmith_div_u32(u_input.d.x, ~global1.x), u_input.c.x);
    let var_2 = u_input.b;
    let var_3 = -11566i;
    var var_4 = true;
    global1 = vec3<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, var_1.x, var_2), min(vec4<u32>(global1.x, global1.x, 4294967295u, 10367u), vec4<u32>(58203u, var_1.x, 0u, 1u)))), _wgslsmith_dot_vec3_u32(var_1.yxz, ~abs(vec3<u32>(55572u, 0u, var_1.x))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_3), min(-var_3, -2147483647i));
}

