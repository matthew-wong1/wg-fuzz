struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: u32, arg_3: i32) -> i32 {
    let var_0 = Struct_4(Struct_3(vec4<u32>(3246u, ~countOneBits(arg_2), 0u, 0u), Struct_1(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.d, arg_3), vec3<i32>(-4422i, arg_3, u_input.d)), ~u_input.a.wxx, ~1u, reverseBits(vec4<u32>(6434u, 4294967295u, 26729u, arg_2) << (u_input.a % vec4<u32>(32u))), -vec4<i32>(0i, u_input.d, arg_3, arg_3) << (~vec4<u32>(1u, u_input.b, arg_2, u_input.b) % vec4<u32>(32u))), 27226i), 105f, 1775f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1611f + -695f) * -559f), -1611f)), global1.x);
    let var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.a.b.a.x, -40767i, var_0.a.b.e.x), vec3<i32>(u_input.d, 700i, arg_3)), ~max(var_0.a.b.a, var_0.a.b.e.wyx)), var_0.a.b.a) == abs(_wgslsmith_add_i32(var_0.a.b.e.x >> (var_0.a.a.x % 32u), u_input.d));
    let var_2 = Struct_5(global1.wz);
    global1 = vec4<bool>(true, _wgslsmith_sub_i32(_wgslsmith_mod_i32(~1i, _wgslsmith_mult_i32(-1i, -33446i)), arg_3) < 0i, true, !arg_1 == var_0.e);
    var var_3 = var_0;
    return countOneBits(var_3.a.c);
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>) -> vec4<bool> {
    global0 = u_input.d;
    global0 = _wgslsmith_mod_i32(func_3(Struct_5(vec2<bool>(false, !global1.x)), all(select(arg_1.zyw, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(arg_0.x, global1.x, arg_0.x))) | arg_1.x, _wgslsmith_mult_u32(u_input.a.x, 94134u), 15155i), func_3(Struct_5(global1.zy), true, 45966u, 34285i));
    var var_0 = 2147483647i;
    let var_1 = Struct_2(Struct_1(~vec3<i32>(u_input.d, ~2147483647i, u_input.d), _wgslsmith_div_vec3_u32(u_input.a.yzx, abs(vec3<u32>(u_input.b, u_input.a.x, u_input.c))), (~9951u & _wgslsmith_mult_u32(u_input.b, 0u)) << (abs(select(1u, u_input.a.x, arg_0.x)) % 32u), ~(~vec4<u32>(u_input.b, u_input.a.x, u_input.b, 0u)), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -35289i, -25496i, 0i), ~(-vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)))), _wgslsmith_f_op_f32(336f * 1f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(550f, -221f, -251f, -1710f) * vec4<f32>(144f, 422f, -1653f, 1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-583f, -543f, 268f, 669f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1556f, -801f, 970f, -1000f))))), select(!(!arg_1.yzw), vec3<bool>(false, false, true), select(!global1.zyx, vec3<bool>(true, arg_0.x, false), global1.x)), _wgslsmith_div_vec4_i32(-min(-vec4<i32>(19344i, 2147483647i, u_input.d, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(-6620i, -48472i, -1i, u_input.d), vec4<i32>(u_input.d, 12268i, 21981i, -15582i))), ~vec4<i32>(-16461i, 0i, -51907i, u_input.d >> (4294967295u % 32u))));
    var var_2 = u_input.a.xz;
    return select(arg_1, !(!(!arg_1)), false);
}

fn func_1() -> Struct_1 {
    var var_0 = -2147483647i;
    global1 = func_2(vec2<bool>(global1.x, false), select(!select(!vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, true), true), !(!vec4<bool>(false, global1.x, global1.x, global1.x)), select(vec4<bool>(true, global1.x, true, -30060i == u_input.d), !vec4<bool>(false, global1.x, true, false), select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x)))));
    var var_1 = _wgslsmith_sub_u32(countOneBits(u_input.b), 0u);
    var_1 = 4294967295u;
    var var_2 = Struct_3(firstLeadingBit(~vec4<u32>(1u, u_input.a.x, u_input.b, u_input.c)) ^ ~u_input.a, Struct_1(firstLeadingBit(vec3<i32>(~(-25485i), u_input.d, -1i)), u_input.a.zxx, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 33838u, 17946u, 62569u)), ~(~u_input.b)), u_input.a, select(vec4<i32>(countOneBits(1i), u_input.d, ~u_input.d, -47348i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.d, u_input.d, u_input.d), vec4<i32>(2147483647i, 32128i, u_input.d, u_input.d)) ^ -vec4<i32>(22830i, u_input.d, -36662i, 51475i), true)), u_input.d);
    return var_2.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32) -> bool {
    var var_0 = vec2<bool>(!all(vec3<bool>(true, true, true)), !global1.x || global1.x);
    var_0 = select(global1.zz, global1.yy, false);
    let var_1 = Struct_2(Struct_1(vec3<i32>(arg_1.e.x, ~u_input.d, u_input.d), ~vec3<u32>(~0u, arg_1.c, ~u_input.c), 1u, min(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.c, u_input.a.x, 4294967295u), ~vec4<u32>(u_input.a.x, arg_1.c, u_input.c, u_input.a.x)), u_input.a ^ _wgslsmith_mod_vec4_u32(arg_1.d, u_input.a)), vec4<i32>(-(0i >> (u_input.c % 32u)), abs(_wgslsmith_sub_i32(arg_2, 1i)), -29561i, func_1().a.x & _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 7797i), arg_1.e.zy))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-393f))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1166f, 465f, 1448f, -1922f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1386f, -931f, 745f, -152f), vec4<f32>(-353f, 517f, 777f, -364f), vec4<bool>(true, false, true, global1.x)))))), vec3<bool>(!var_0.x, !(!var_0.x), global1.x), min(~(~reverseBits(vec4<i32>(-2147483647i, arg_1.a.x, 1i, arg_0.x))), arg_1.e));
    var var_2 = Struct_3(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(~(vec4<u32>(var_1.a.b.x, 33182u, 4294967295u, u_input.b) & vec4<u32>(74384u, var_1.a.b.x, arg_1.c, 453u)), vec4<u32>(_wgslsmith_add_u32(arg_1.c, 18868u), ~u_input.c, arg_1.d.x | 0u, 26184u)), 20490u, select(45855u, arg_1.d.x, true) & _wgslsmith_sub_u32(64325u, arg_1.b.x)), func_1(), u_input.d);
    var var_3 = i32(-1i) * -41119i;
    return !any(func_2(select(vec2<bool>(var_0.x, false), global1.yz, var_1.d.x), select(!vec4<bool>(var_0.x, var_1.d.x, true, var_0.x), !vec4<bool>(true, true, var_1.d.x, var_0.x), false)).yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    global1 = vec4<bool>(all(vec3<bool>(global1.x, true, !any(vec4<bool>(global1.x, false, true, true)))), !any(select(vec4<bool>(global1.x, true, global1.x, false), !vec4<bool>(global1.x, global1.x, false, global1.x), select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x)))), func_4(_wgslsmith_sub_vec3_i32(~_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 2147483647i, u_input.d), vec3<i32>(-1i, -85290i, u_input.d)), vec3<i32>(var_0 ^ 2147483647i, min(-1i, u_input.d), 2147483647i)), func_1(), 19553i), all(!func_2(global1.xx, select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(false, global1.x, false, global1.x), global1.x)).wz));
    let var_1 = _wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(select(vec2<i32>(abs(2147483647i), -12798i >> (u_input.b % 32u)), -vec2<i32>(u_input.d, var_0), true), vec2<i32>(abs(u_input.d), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 45107i), vec2<i32>(-19349i, u_input.d))) & vec2<i32>(~var_0, 39447i)));
    let var_2 = Struct_3(vec4<u32>(u_input.b, 81296u, u_input.a.x & u_input.c, u_input.a.x), Struct_1(vec3<i32>(_wgslsmith_mult_i32(-var_0, var_0), var_1, -(i32(-1i) * -1i)), u_input.a.zyy, firstLeadingBit(_wgslsmith_div_u32(u_input.c, 4294967295u)), vec4<u32>(1u, u_input.c & ~u_input.b, ~0u, _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, ~u_input.b)), min(vec4<i32>(u_input.d >> (u_input.a.x % 32u), 17596i, ~var_0, countOneBits(1i)), -reverseBits(vec4<i32>(-22490i, u_input.d, 42551i, var_1)))), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b.b.x, -1i, ~u_input.a, u_input.a.x);
}

