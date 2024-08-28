struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: i32 = 1i;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> u32 {
    return ~(firstTrailingBit(min(_wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(35065u, arg_1)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 82602u, arg_0.c, 64147u), u_input.a))) << (arg_0.c % 32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_add_u32(abs(u_input.a.x), func_2(Struct_1(vec4<i32>(-2147483647i, u_input.b, arg_2.d, u_input.b), arg_2.b, 1u, u_input.b, -1i), ~52308u, vec4<f32>(arg_2.b.x, 585f, arg_2.b.x, 1118f))), Struct_1(~arg_2.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-arg_2.b))), arg_2.c, _wgslsmith_sub_i32(arg_2.d & 50459i, arg_2.e), abs(1i))), Struct_2(689f, u_input.a.x, Struct_1(vec4<i32>(-u_input.b, _wgslsmith_sub_i32(1i, u_input.c.x), -u_input.c.x, -44229i), arg_2.b, _wgslsmith_div_u32(arg_2.c, 4294967295u), -1900i, i32(-1i) * -u_input.b)));
    global1 = arg_2.e;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.b.x, -353f), var_0.b.a))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_2.b.x, arg_2.b.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(962f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_2.b.x, arg_2.b.x)))))));
    let var_1 = true;
    return var_0.a.c.b.x;
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-713f + -1328f)) * -1000f), _wgslsmith_f_op_f32(func_1(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), u_input.a.yxw, Struct_1(abs(vec4<i32>(u_input.b, 48610i, u_input.c.x, -1i)), vec3<f32>(260f, 944f, 1297f), 51362u, 25505i, -2147483647i))))) - -112f);
    let var_0 = -max(~(-vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), ~vec3<i32>(u_input.b, 36475i, 0i));
    global1 = ~(~u_input.b);
    global1 = min(_wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(var_0.zz, -vec2<i32>(10740i, var_0.x)), -_wgslsmith_div_i32(_wgslsmith_add_i32(var_0.x, var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -20842i, -55859i), var_0))), _wgslsmith_mod_i32(abs(var_0.x) & -10120i, -25317i));
    var var_1 = !vec2<bool>(~(~u_input.a.x) > 4294967295u, all(vec3<bool>(true, true, true)) || (u_input.a.x == ~u_input.a.x));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-1002f))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32) -> i32 {
    var var_0 = all(!vec4<bool>(!any(vec3<bool>(false, true, false)), true, true, all(vec2<bool>(false, false)) || (arg_0.d <= u_input.c.x)));
    let var_1 = arg_0;
    global1 = -var_1.a.x;
    let var_2 = _wgslsmith_mod_u32(~(~var_1.c), ~(~1u));
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1261f - -884f)), _wgslsmith_add_u32(arg_0.c >> (~_wgslsmith_mod_u32(0u, 37628u) % 32u), var_2), var_1);
    return var_3.c.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(func_4(Struct_1(-vec4<i32>(u_input.c.x, -51742i, -4785i, u_input.b), _wgslsmith_div_vec3_f32(vec3<f32>(1659f, 396f, 1001f), vec3<f32>(212f, -432f, 811f)), ~127283u, select(0i, u_input.c.x, true), _wgslsmith_add_i32(u_input.c.x, 16547i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 22503i, u_input.b, 2147483647i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.c.x, 2147483647i, u_input.b, u_input.c.x)) | _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, u_input.c.x, -35050i, u_input.b), vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<bool>(true, false, false, true), vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u), Struct_1(vec4<i32>(u_input.c.x, u_input.c.x, 36788i, u_input.c.x), vec3<f32>(-1000f, -285f, 1645f), 0u, -1i, u_input.c.x))) * _wgslsmith_f_op_f32(func_3()))) >= _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, u_input.b), 0i), any(vec2<bool>(false, true)), !(!(!(u_input.a.x <= 53768u))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 3927u, Struct_1(countOneBits(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, u_input.c.x, u_input.b, u_input.c.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1474f, 773f, 1000f)))))), 1u, 2147483647i, min(_wgslsmith_dot_vec2_i32(max(u_input.c, vec2<i32>(u_input.c.x, u_input.b)), ~vec2<i32>(2147483647i, 2147483647i)), _wgslsmith_add_i32(u_input.b, u_input.c.x) | u_input.b)));
    global1 = ~var_1.c.e;
    let var_2 = -1000f;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(178f, var_1.c.b.x)) + _wgslsmith_f_op_f32(-1059f + 116f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * _wgslsmith_f_op_f32(-var_2))))));
    let var_4 = ~_wgslsmith_mult_vec2_i32(u_input.c, max(max(vec2<i32>(u_input.b, -1i), vec2<i32>(var_1.c.d, 0i)), u_input.c)) & (var_1.c.a.xz | countOneBits(vec2<i32>(~43967i, min(0i, 20836i))));
    var var_5 = vec3<bool>(true, true, !(!var_0.x));
    var var_6 = abs(_wgslsmith_div_vec2_i32(var_1.c.a.yy, abs(vec2<i32>(var_4.x, func_4(Struct_1(vec4<i32>(58585i, var_1.c.e, u_input.c.x, 41563i), vec3<f32>(var_1.c.b.x, 409f, var_2), 45269u, 28338i, var_1.c.e), vec4<i32>(var_1.c.d, 2147483647i, u_input.b, 57567i), 750f)))));
    var var_7 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - -513f), ~0u, Struct_1(vec4<i32>(-2147483647i, _wgslsmith_mult_i32(-var_1.c.d, _wgslsmith_dot_vec4_i32(var_1.c.a, var_1.c.a)), u_input.b, var_6.x), var_1.c.b, var_1.b, countOneBits(_wgslsmith_add_i32(var_6.x, _wgslsmith_div_i32(-19635i, 9984i))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_div_i32(-2147483647i, var_4.x), i32(-1i) * -2147483647i), max(~1i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1240f));
}

