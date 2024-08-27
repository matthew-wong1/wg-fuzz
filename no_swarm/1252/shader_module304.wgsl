struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 9> = array<Struct_4, 9>(Struct_4(vec2<i32>(-1i, -5748i), 1i, vec4<i32>(-9654i, i32(-2147483648), 10963i, 0i)), Struct_4(vec2<i32>(18926i, i32(-2147483648)), -27859i, vec4<i32>(-1i, 18265i, 2147483647i, -1i)), Struct_4(vec2<i32>(i32(-2147483648), 4999i), 0i, vec4<i32>(1i, -1i, 643i, -13999i)), Struct_4(vec2<i32>(-43400i, 27580i), 0i, vec4<i32>(-3790i, 32870i, 9656i, 0i)), Struct_4(vec2<i32>(-24161i, 18794i), 64123i, vec4<i32>(32169i, -1i, -31078i, -16642i)), Struct_4(vec2<i32>(2147483647i, 1i), i32(-2147483648), vec4<i32>(39318i, 2147483647i, -1i, -54581i)), Struct_4(vec2<i32>(-2091i, 1i), -15273i, vec4<i32>(0i, 30134i, -1i, 1i)), Struct_4(vec2<i32>(24994i, -46175i), -16542i, vec4<i32>(i32(-2147483648), 2147483647i, -8948i, 0i)), Struct_4(vec2<i32>(2147483647i, 0i), i32(-2147483648), vec4<i32>(-28133i, 2147483647i, -14122i, 2147483647i)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = ~(~max(u_input.e.x ^ (u_input.a >> (4835u % 32u)), _wgslsmith_div_u32(4294967295u, u_input.e.x)));
    var var_1 = select(u_input.e, vec4<u32>(_wgslsmith_div_u32(u_input.e.x, u_input.e.x | ~u_input.e.x), 32056u, ~1u, 61064u), vec4<bool>(any(!arg_0.c) || arg_0.b.x, true, select(true, any(arg_0.a), arg_0.b.x), true));
    var var_2 = -reverseBits(u_input.d.x);
    global0 = array<Struct_4, 9>();
    var var_3 = var_1.x;
    return select(firstLeadingBit(~vec4<i32>(firstTrailingBit(u_input.d.x), _wgslsmith_mod_i32(-1i, -15912i), u_input.d.x, -2869i)), -abs(select(~u_input.d, vec4<i32>(u_input.b.x, -1i, u_input.c, u_input.d.x), any(arg_0.c.xzz))), !(abs(min(-1i, u_input.d.x)) != (_wgslsmith_mult_i32(u_input.d.x, u_input.d.x) | u_input.d.x)));
}

fn func_2(arg_0: u32) -> vec4<u32> {
    var var_0 = vec4<f32>(-525f, _wgslsmith_f_op_f32(sign(-369f)), 533f, -255f);
    let var_1 = Struct_4(u_input.d.zy, ~(~u_input.c), select(select(~u_input.d, func_3(Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true))), true), ~vec4<i32>(u_input.c, u_input.d.x, 2147483647i, -1i), false) | vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-36210i, 1i) ^ u_input.d.zy, func_3(Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false))).yz), _wgslsmith_div_i32(1i, u_input.d.x) | firstLeadingBit(u_input.c), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-20766i, u_input.c, 0i), vec3<i32>(72232i, 0i, -19222i))), _wgslsmith_add_i32(8854i, -2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 742f));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2))), var_0.x, 371f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1137f))));
    let var_3 = Struct_1(!vec3<bool>(all(vec2<bool>(true, false)) || select(true, false, true), any(select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !(-440f > var_0.x)), vec4<bool>(!(u_input.d.x >= var_1.c.x), true, u_input.e.x < 4294967295u, false | !(arg_0 <= 4294967295u)), vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), all(vec2<bool>(true, true)))), all(vec2<bool>(true, true)), arg_0 <= u_input.e.x, !all(vec4<bool>(false, false, true, false))));
    return u_input.e;
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_4, 9>();
    var var_0 = _wgslsmith_clamp_vec4_u32(min(vec4<u32>(~_wgslsmith_div_u32(u_input.e.x, u_input.a), ~7869u >> (_wgslsmith_add_u32(u_input.e.x, 0u) % 32u), u_input.a, u_input.e.x), u_input.e >> (vec4<u32>(u_input.e.x & 37966u, 1u, u_input.a, ~u_input.e.x) % vec4<u32>(32u))), func_2(~u_input.e.x) ^ u_input.e, u_input.e);
    var_0 = u_input.e;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1073f, -2169f)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-419f, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2498f, 605f)), all(vec4<bool>(false, true, true, false)))))));
    var_0 = min(vec4<u32>(var_0.x, ~select(var_0.x, ~u_input.a, true), _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(38219u, var_0.x, select(0u, u_input.e.x, false), u_input.a | 1u)), _wgslsmith_mult_u32(var_0.x, 14947u)), select(vec4<u32>(~(~u_input.e.x), u_input.a >> (abs(54358u) % 32u), max(10575u, 1u) ^ reverseBits(var_0.x), 29755u), firstLeadingBit(vec4<u32>(u_input.e.x & var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, 4294967295u), vec2<u32>(61410u, var_0.x)), 4294967295u, ~17573u)), !vec4<bool>(any(vec3<bool>(true, true, true)), true, true, var_1.x < -339f)));
    return Struct_3(vec4<u32>(min(~1u, 1u), ~1u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(var_0.xy, vec2<u32>(u_input.a, var_0.x)), vec2<u32>(var_0.x, u_input.a) & u_input.e.yz), u_input.e.zy), var_0.x), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.c, 2592i), ~u_input.b) & _wgslsmith_mod_vec2_i32(u_input.b, -u_input.b), _wgslsmith_div_vec2_i32(u_input.d.zz, (vec2<i32>(-5744i, u_input.d.x) | u_input.b) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 1u), var_0.wz, u_input.e.xz) % vec2<u32>(32u)))), u_input.e.wz, -_wgslsmith_mod_i32(u_input.d.x, u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = (-1i & (var_0.b.x & var_0.d)) << (~abs(u_input.e.x) % 32u);
    let var_2 = reverseBits(select(var_1, u_input.c, 24245u == u_input.a));
    var var_3 = select(select(vec2<bool>(true, false), !select(vec2<bool>(false, false), vec2<bool>(true, true), select(false, false, false)), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), true), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true))), vec2<bool>(true, false));
    let var_4 = abs(u_input.d);
    let var_5 = Struct_4(vec2<i32>(abs(~(-92493i)), -19310i), -2147483647i, ~u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_div_f32(341f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -773f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(150f, 1000f)))))), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(0u, 1u, var_0.a.x)), ~u_input.e.wzz));
}

