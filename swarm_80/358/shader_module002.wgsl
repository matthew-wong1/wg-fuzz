struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>) -> u32 {
    return arg_1.b.c.x;
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(1391f - global1.b.a.x), _wgslsmith_f_op_f32(trunc(405f)), 946f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1231f, global1.b.a.x, global1.d.a.x), global1.d.a)))), Struct_1(global1.e.a, ~_wgslsmith_clamp_u32(1u, global1.e.d, global1.b.b.c.x), vec4<u32>(57078u, 8029u, func_3(select(global1.d.b.c.x, u_input.d, false), global1.d, _wgslsmith_f_op_vec2_f32(-global1.b.a.zy)), 1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.b.b, 14612u, 29940u), u_input.a.zxy) % 32u)), ~(~19435u)));
    let var_1 = -19442i;
    let var_2 = global1.e.a;
    global1 = Struct_3(vec2<u32>(u_input.c, ~(~global1.d.b.c.x)), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, var_0.a.x, -1421f))) - _wgslsmith_f_op_vec3_f32(-global1.b.a))), var_0.b), var_0.a.x == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-173f + _wgslsmith_f_op_f32(-var_0.a.x)), global1.d.a.x), global1.d, Struct_1(var_0.b.a, firstLeadingBit(~19435u), vec4<u32>(~func_3(78205u, Struct_2(vec3<f32>(var_0.a.x, -203f, global1.d.a.x), Struct_1(global1.e.a, 61117u, vec4<u32>(101964u, u_input.d, var_0.b.d, 4294967295u), var_0.b.b)), var_0.a.xy), _wgslsmith_dot_vec2_u32(global1.d.b.c.yx >> (u_input.a.xw % vec2<u32>(32u)), global1.d.b.c.yw), global1.b.b.c.x & firstLeadingBit(global1.d.b.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d, var_0.b.b, u_input.d) & vec4<u32>(var_0.b.b, 111825u, 4142u, 4294967295u), vec4<u32>(var_0.b.c.x, global1.d.b.b, global1.d.b.b, 21987u))), _wgslsmith_mult_u32(1u, u_input.c)));
    global1 = Struct_3(abs(~abs(min(vec2<u32>(1u, 23892u), vec2<u32>(4294967295u, u_input.a.x)))), var_0, true, Struct_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(406f, var_0.a.x, var_0.a.x) + vec3<f32>(322f, global1.b.a.x, -148f))))), global1.d.b), Struct_1(vec3<bool>(false, 56121u < _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.d, global1.a.x, 4294967295u, var_0.b.d), global1.e.c), !all(var_0.b.a.zx)), global1.b.b.d, min(~global1.b.b.c, vec4<u32>(~85274u, var_0.b.c.x, ~0u, ~1u)), var_0.b.c.x));
    return Struct_4(Struct_3(abs(_wgslsmith_div_vec2_u32(var_0.b.c.xz, u_input.a.xz & var_0.b.c.wy)), Struct_2(vec3<f32>(415f, global1.b.a.x, _wgslsmith_f_op_f32(-918f - 461f)), global1.e), ~_wgslsmith_mult_u32(u_input.d, 4294967295u) >= var_0.b.c.x, Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) * _wgslsmith_div_vec3_f32(vec3<f32>(-669f, -227f, -1055f), vec3<f32>(var_0.a.x, var_0.a.x, 1000f))), global1.e), var_0.b), -countOneBits(u_input.b.wxw));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<f32> {
    global0 = true;
    global0 = false;
    var var_0 = _wgslsmith_mod_i32(~_wgslsmith_mult_i32(0i, 31276i), ~_wgslsmith_sub_i32(arg_1.x, 1i));
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(global1.b.a + arg_0.a.d.a), vec3<f32>(arg_0.a.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.a.x, 490f))), _wgslsmith_f_op_f32(sign(1186f)))));
    var var_2 = arg_0;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_2.a.b.a.zx - var_1.zz) + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b.a.x, 180f) * vec2<f32>(global1.b.a.x, global1.b.a.x))))))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: f32, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(global1.d.a.xy, vec2<f32>(arg_2, -699f)), _wgslsmith_f_op_vec2_f32(-global1.d.a.yx)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-176f, global1.d.a.x) - global1.d.a.yy))))), _wgslsmith_f_op_vec2_f32(func_4(func_2(), vec2<i32>(u_input.b.x, firstLeadingBit(u_input.b.x)), firstTrailingBit(arg_3), Struct_1(select(func_2().a.e.a, arg_1.zzw, vec3<bool>(global1.b.b.a.x, arg_1.x, arg_0)), ~(~u_input.a.x), global1.e.c, ~4294967295u ^ func_3(1u, global1.b, vec2<f32>(830f, global1.d.a.x))))));
    let var_1 = global1.e;
    let var_2 = Struct_1(select(select(global1.d.b.a, select(!vec3<bool>(false, arg_0, true), func_2().a.d.b.a, vec3<bool>(true, true, var_1.a.x)), select(vec3<bool>(arg_1.x, arg_0, false), var_1.a, all(arg_1.xyx))), !vec3<bool>(true, !arg_0, true), global1.e.a.x), func_2().a.b.b.c.x, u_input.a & vec4<u32>(50556u, var_1.b, 23415u, firstTrailingBit(0u)), func_3(~u_input.d, func_2().a.d, _wgslsmith_f_op_vec2_f32(round(global1.b.a.xx))));
    let var_3 = var_2.b;
    global0 = false;
    return Struct_4(Struct_3(select((vec2<u32>(34730u, 9676u) >> (vec2<u32>(u_input.a.x, var_1.b) % vec2<u32>(32u))) >> (var_1.c.zw % vec2<u32>(32u)), ~vec2<u32>(global1.a.x, var_2.d), global1.b.b.a.x), global1.d, any(vec2<bool>(false, arg_0)), func_2().a.b, func_2().a.b.b), vec3<i32>(-(arg_3.x >> (1u % 32u)), -(i32(-1i) * -1i), -_wgslsmith_mult_i32(~arg_3.x, u_input.b.x >> (var_2.b % 32u))));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_3) -> Struct_3 {
    var var_0 = 4294967295u;
    var var_1 = arg_3.b.a.x;
    let var_2 = false;
    let var_3 = arg_0;
    var var_4 = u_input.b.x <= -25627i;
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_1(true, !select(!vec4<bool>(global1.d.b.a.x, global1.c, true, true), !vec4<bool>(true, false, global1.e.a.x, true), all(vec4<bool>(global1.e.a.x, global1.b.b.a.x, global1.c, false))), _wgslsmith_f_op_f32(-global1.b.a.x), u_input.b.xw), func_2().b.zy, select(17530u, 23377u, !global1.d.b.a.x), Struct_3(_wgslsmith_div_vec2_u32(u_input.a.yy, ~(~vec2<u32>(global1.a.x, 0u))), Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.a.x, global1.b.a.x, global1.d.a.x)), global1.b.b), true, Struct_2(global1.b.a, Struct_1(global1.b.b.a, 4294967295u, vec4<u32>(1u, 18190u, 55347u, 0u), ~4294967295u)), Struct_1(global1.b.b.a, _wgslsmith_mult_u32(abs(65238u), _wgslsmith_div_u32(0u, global1.a.x)), firstLeadingBit(firstTrailingBit(u_input.a)), select(_wgslsmith_sub_u32(global1.b.b.c.x, u_input.c), select(53573u, u_input.c, false), true))));
    var var_0 = func_5(func_2(), ~vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, u_input.b), countOneBits(vec4<i32>(-30369i, u_input.b.x, u_input.b.x, 18115i))), u_input.b.x), 1u, func_5(func_1(func_1(u_input.b.x > u_input.b.x, select(vec4<bool>(global1.b.b.a.x, false, false, global1.b.b.a.x), vec4<bool>(global1.c, false, false, false), false), 1615f, select(vec2<i32>(-7511i, u_input.b.x), vec2<i32>(u_input.b.x, 2147483647i), global1.b.b.a.yy)).a.b.b.a.x, select(!vec4<bool>(global1.c, true, false, global1.b.b.a.x), vec4<bool>(true, true, true, true), vec4<bool>(false, global1.d.b.a.x, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1156f) * _wgslsmith_f_op_f32(f32(-1f) * -1053f)), vec2<i32>(39845i, 1i)), max(vec2<i32>(2147483647i, -1i & u_input.b.x), _wgslsmith_mod_vec2_i32(u_input.b.zy, ~vec2<i32>(14564i, u_input.b.x))), _wgslsmith_add_u32(38677u, ~global1.a.x ^ global1.d.b.b), Struct_3(select(vec2<u32>(global1.e.b, 50279u), u_input.a.ww, global1.d.b.a.x) >> (~vec2<u32>(u_input.c, 78176u) % vec2<u32>(32u)), func_1(any(vec4<bool>(global1.b.b.a.x, global1.e.a.x, true, global1.d.b.a.x)), !vec4<bool>(global1.c, global1.d.b.a.x, false, global1.e.a.x), _wgslsmith_f_op_f32(floor(-472f)), _wgslsmith_div_vec2_i32(u_input.b.wy, vec2<i32>(-2147483647i, u_input.b.x))).a.b, true, func_5(Struct_4(Struct_3(global1.d.b.c.wz, global1.d, false, Struct_2(vec3<f32>(-753f, 2145f, -134f), Struct_1(global1.e.a, 26155u, global1.e.c, u_input.a.x)), global1.b.b), u_input.b.xyw), u_input.b.yx, 1u, Struct_3(vec2<u32>(global1.d.b.c.x, global1.e.d), Struct_2(global1.d.a, Struct_1(vec3<bool>(true, true, global1.c), 2589u, vec4<u32>(14821u, u_input.d, 4294967295u, u_input.a.x), 1u)), true, global1.b, global1.d.b)).d, global1.b.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(828f * -1585f), global1.d.a.x, _wgslsmith_div_f32(-493f, global1.d.a.x)), func_3(func_2().a.d.b.d, func_1(global1.b.b.a.x, select(select(vec4<bool>(false, var_0.e.a.x, true, var_0.e.a.x), vec4<bool>(global1.e.a.x, true, var_0.b.b.a.x, true), global1.b.b.a.x), !vec4<bool>(false, var_0.c, true, var_0.b.b.a.x), true), global1.d.a.x, countOneBits(max(vec2<i32>(u_input.b.x, 13033i), vec2<i32>(1642i, u_input.b.x)))).a.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-123f * 851f)), _wgslsmith_f_op_f32(global1.b.a.x - _wgslsmith_f_op_f32(abs(var_0.b.a.x))))));
}

