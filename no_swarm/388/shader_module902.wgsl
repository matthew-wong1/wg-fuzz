struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(~(~u_input.a), 69711u, max(u_input.c, 21067u) & u_input.c), ~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, 67767u, 33277u) | vec3<u32>(u_input.c, 57664u, u_input.c), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 12984u, u_input.a), vec3<u32>(u_input.a, 1u, 4294967295u), vec3<u32>(4294967295u, 1836u, u_input.c)), ~vec3<u32>(u_input.a, 0u, u_input.a))), _wgslsmith_mod_vec3_u32(vec3<u32>(~u_input.a, ~(u_input.c | u_input.c), u_input.c), vec3<u32>(~(~52372u), 1u & countOneBits(u_input.c), 0u)));
    let var_1 = _wgslsmith_f_op_f32(-global0.x);
    let var_2 = Struct_4(vec2<i32>(~u_input.b.x, abs(-33535i)) & ~(select(u_input.b, vec2<i32>(0i, 2147483647i), false) | reverseBits(u_input.b)), Struct_1(1989f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.xx + global0.zz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-835f, var_1, var_1, var_1))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-288f, global0.x, -959f, 597f)) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, -522f, 260f, var_1), vec4<f32>(global0.x, global0.x, -1194f, -353f)))), _wgslsmith_add_u32(~var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(58710u, 52938u, 1u), vec3<u32>(1u, 4294967295u, var_0.x))) >> (max(_wgslsmith_add_u32(1170u, 22048u), ~1u) % 32u)), Struct_2(firstLeadingBit(vec4<u32>(7023u, u_input.a, u_input.c, u_input.a) >> (vec4<u32>(u_input.c, var_0.x, var_0.x, 4294967295u) % vec4<u32>(32u))), Struct_1(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(trunc(var_1))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.x, -173f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-470f, 548f, 756f, 976f)))), u_input.c << (u_input.c % 32u))));
    var var_3 = select(!select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), 1u < u_input.a), vec4<bool>(true, true, true, true)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true)), all(vec4<bool>(true, true, false, true)))), select(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false))), select(vec4<bool>(false, true, false, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)))), vec4<bool>(true, !select(any(vec4<bool>(true, true, false, true)), false, any(vec4<bool>(false, false, false, true))), all(vec2<bool>(false, false)), true));
    let var_4 = -2099f;
    return _wgslsmith_f_op_f32(step(-441f, _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1236f * 1408f) + -392f))))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> vec4<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(-arg_3.b.c.zxz);
    var var_0 = ~vec3<i32>(-(~_wgslsmith_clamp_i32(-27105i, -1i, 2147483647i)), abs(abs(max(u_input.b.x, arg_1))), ~(~arg_0));
    global0 = arg_3.b.c.xxz;
    let var_1 = arg_3.b;
    var var_2 = !(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    return vec4<f32>(-589f, var_1.a, 251f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3()))));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_5(true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0.x, 362f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, global0.x))), global0.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-801f, -290f, global0.x, global0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, 1041f))) * _wgslsmith_f_op_vec4_f32(func_2(u_input.d.x, u_input.d.x, 660f, Struct_2(vec4<u32>(47039u, u_input.a, 0u, 82631u), Struct_1(global0.x, vec2<f32>(893f, global0.x), vec4<f32>(global0.x, 1672f, 492f, global0.x), u_input.c)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(548f, global0.x)) * -1715f) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1000f, global0.x, true))))), _wgslsmith_f_op_f32(max(-326f, var_1.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_3()), global0.x, -992f, _wgslsmith_div_f32(var_1.x, -710f))))));
    let var_2 = Struct_5(any(vec3<bool>(var_0.a || all(vec3<bool>(var_0.a, var_0.a, true)), true, true)));
    var var_3 = Struct_5(false);
    return Struct_2(vec4<u32>(80348u >> (u_input.c % 32u), 4294967295u, 3105u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.c), select(vec2<u32>(u_input.c, u_input.a), vec2<u32>(69981u, 0u), vec2<bool>(true, var_3.a)))), Struct_1(global0.x, vec2<f32>(-1000f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(max(var_1.x, var_1.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, var_1.x, 1000f, -825f)))), ~_wgslsmith_sub_u32(reverseBits(4294967295u), ~u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_5(select(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), false, any(vec3<bool>(all(vec4<bool>(true, false, false, true)), all(vec3<bool>(true, false, false)), true))));
    var var_2 = Struct_4(~_wgslsmith_clamp_vec2_i32(firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-43417i, 43257i), vec2<i32>(u_input.d.x, u_input.b.x))), firstLeadingBit(vec2<i32>(u_input.b.x, u_input.b.x)), reverseBits(select(vec2<i32>(u_input.d.x, u_input.d.x), vec2<i32>(u_input.b.x, u_input.b.x), var_1.a))), func_1().b, var_0);
    let var_3 = vec4<bool>(var_1.a, true, true, var_1.a);
    let var_4 = any(select(!select(var_3, var_3, false), !select(var_3, vec4<bool>(var_3.x, var_1.a, false, var_3.x), vec4<bool>(var_3.x, var_3.x, false, false)), vec4<bool>(~37032u != ~var_2.b.d, all(select(vec4<bool>(var_3.x, true, true, var_1.a), vec4<bool>(false, true, var_1.a, var_1.a), var_1.a)), var_1.a, false | (global0.x >= var_2.c.b.c.x))));
    let var_5 = var_0.a.xw;
    let var_6 = var_2.c.b.c;
    var_2 = Struct_4(u_input.d.wy, Struct_1(global0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_mod_i32(0i, 2147483647i), max(var_2.a.x, 37824i), var_2.c.b.b.x, Struct_2(var_0.a, Struct_1(var_0.b.c.x, var_0.b.c.xw, vec4<f32>(265f, var_0.b.c.x, 961f, -822f), 31113u)))).wz), func_1().b.c, ~_wgslsmith_div_u32(~11583u, 4294967295u)), func_1());
    var_1 = Struct_5(!var_4);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, vec4<i32>(_wgslsmith_div_i32(var_2.a.x, _wgslsmith_clamp_i32(firstTrailingBit(u_input.b.x), u_input.d.x, u_input.b.x)), ~_wgslsmith_sub_i32(~1i, _wgslsmith_dot_vec3_i32(u_input.d.wxx, u_input.d.xxy)), max(var_2.a.x, 2147483647i), 2147483647i), var_0.a.ywz, reverseBits(~_wgslsmith_sub_u32(4294967295u | u_input.c, var_2.b.d)), ~(~func_1().a.ww));
}

