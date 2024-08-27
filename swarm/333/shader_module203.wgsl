struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<bool>,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1060f * -1000f), 1341f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -657f) + -191f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-743f, 749f))), vec2<f32>(686f, -526f), select(vec2<bool>(arg_0.c.b, true), vec2<bool>(arg_0.c.b, true), arg_0.a.zz)))))));
    var var_1 = arg_0.b << (_wgslsmith_sub_u32(firstTrailingBit(~arg_0.c.a >> (_wgslsmith_mod_u32(arg_0.d.a, 8773u) % 32u)), ~(~firstTrailingBit(0u))) % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1254f, -650f, var_0.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1855f, var_0.x, var_0.x, -491f), vec4<f32>(var_0.x, var_0.x, 2149f, 1000f), true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, -1000f, 1232f, 991f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(418f, var_0.x, 2477f, -313f)))))));
    var var_3 = Struct_4(any(vec2<bool>(true, true)) | any(!select(vec4<bool>(arg_0.a.x, false, true, arg_0.a.x), vec4<bool>(arg_0.d.b, false, arg_0.a.x, arg_0.c.b), arg_0.a)), select(select(!(!arg_0.a.wyx), vec3<bool>(true, arg_0.c.b, arg_0.c.b), arg_0.a.yzz), !vec3<bool>(false, arg_2 <= 1i, var_0.x != 136f), vec3<bool>(arg_0.d.b, arg_0.a.x, true)), arg_0, firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.c | (vec3<i32>(u_input.c.x, u_input.d.x, 0i) & vec3<i32>(u_input.c.x, u_input.c.x, arg_2)), abs(u_input.c))));
    var var_4 = vec4<f32>(163f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(1031f * 358f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_2.x)))));
    return var_3.a & !var_3.c.c.b;
}

fn func_4(arg_0: i32, arg_1: bool) -> vec3<i32> {
    var var_0 = !(!select(vec2<bool>(arg_1, true), vec2<bool>(false, select(arg_1, arg_1, false)), true));
    return u_input.c;
}

fn func_2() -> vec3<bool> {
    global0 = 978f;
    var var_0 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2327f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-295f - -741f) * _wgslsmith_f_op_f32(select(-365f, -558f, false)))), 1253f)), vec2<u32>(u_input.e.x, _wgslsmith_mult_u32(60610u, 0u)), Struct_2(vec4<bool>(true, true, true, true), u_input.a << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 22456u, u_input.e.x, u_input.e.x), vec4<u32>(1u, 4294967295u, u_input.e.x, u_input.e.x) ^ vec4<u32>(u_input.b, 46461u, 0u, 4294967295u)) % 32u), Struct_1(34378u, true), Struct_1(u_input.b, false)));
    var var_1 = Struct_5(func_4(_wgslsmith_mult_i32(-(~u_input.d.x), u_input.a), true & func_3(Struct_2(vec4<bool>(var_0.c.c.b, true, false, false), -29956i, var_0.c.c, Struct_1(13847u, var_0.c.c.b)), _wgslsmith_clamp_u32(0u, 4113u, 5265u), ~(-1i))), vec2<f32>(var_0.a, -1758f), Struct_4(var_0.c.a.x, select(select(var_0.c.a.xyz, select(var_0.c.a.yzw, vec3<bool>(var_0.c.a.x, true, true), var_0.c.a.x), select(vec3<bool>(var_0.c.c.b, var_0.c.d.b, var_0.c.c.b), var_0.c.a.yyw, var_0.c.c.b)), var_0.c.a.zyw, !func_3(Struct_2(var_0.c.a, 33270i, var_0.c.c, var_0.c.c), var_0.c.d.a, var_0.c.b)), var_0.c, countOneBits(u_input.d)), var_0.c.c.b);
    var_1 = Struct_5(vec3<i32>(i32(-1i) * -51391i, _wgslsmith_add_i32(~var_0.c.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(var_0.c.b, 11367i, var_0.c.b, var_1.c.d.x), -vec4<i32>(4622i, var_0.c.b, var_0.c.b, var_0.c.b))), 0i), _wgslsmith_f_op_vec2_f32(exp2(var_1.b)), var_1.c, true);
    var_1 = Struct_5(vec3<i32>(-var_1.a.x, _wgslsmith_mult_i32(min(_wgslsmith_sub_i32(var_0.c.b, var_0.c.b), -2147483647i), var_0.c.b), var_1.c.c.b), var_1.b, var_1.c, !any(select(vec3<bool>(true, var_0.c.d.b, true), !var_0.c.a.xzx, vec3<bool>(var_0.c.a.x, var_1.d, false))));
    return !var_0.c.a.wxy;
}

fn func_1(arg_0: f32) -> Struct_4 {
    var var_0 = ~(_wgslsmith_div_vec3_u32(~vec3<u32>(50215u, 4294967295u, u_input.e.x), vec3<u32>(1u, u_input.e.x, u_input.e.x)) ^ countOneBits(vec3<u32>(u_input.b, 69447u, u_input.e.x) | vec3<u32>(0u, 46261u, 46186u))) << (vec3<u32>(~u_input.e.x, 4294967295u, ~1u) % vec3<u32>(32u));
    let var_1 = Struct_4(false, func_2(), Struct_2(vec4<bool>(true, true, true, true), _wgslsmith_mod_i32(u_input.a, u_input.d.x), Struct_1(58509u, false), Struct_1(4294967295u, false)), vec3<i32>(u_input.a, -1i, min(21503i, 40829i ^ reverseBits(u_input.a))));
    let var_2 = 9649u;
    let var_3 = _wgslsmith_mod_i32(firstTrailingBit(u_input.d.x), 1i);
    var var_4 = _wgslsmith_div_vec2_u32(u_input.e, _wgslsmith_div_vec2_u32(select(u_input.e, abs(var_0.xy), func_2().yx), u_input.e) >> (~vec2<u32>(~u_input.e.x, 1u) % vec2<u32>(32u)));
    return Struct_4(var_1.c.c.b && all(vec3<bool>(true, arg_0 != arg_0, var_1.c.a.x)), var_1.c.a.yyx, Struct_2(!var_1.c.a, -16238i, Struct_1(~var_2, true), Struct_1(firstLeadingBit(9783u), !var_1.b.x)), u_input.c);
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(sign(920f)))));
    var var_1 = arg_0.d;
    var var_2 = func_1(_wgslsmith_f_op_f32(max(arg_1, -342f))).c;
    let var_3 = vec3<f32>(arg_1, _wgslsmith_f_op_f32(min(1784f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(827f * 397f))))), _wgslsmith_f_op_f32(ceil(-1273f)));
    let var_4 = arg_0.c;
    return var_4.a.xyw;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-483f, _wgslsmith_f_op_f32(abs(1057f))))));
    let var_0 = func_5(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -300f) - 1123f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(156f, 767f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f) * -720f))));
    global0 = _wgslsmith_f_op_f32(trunc(-1518f));
    let var_1 = ~vec3<u32>(firstTrailingBit(countOneBits(10005u)), 0u, 4294967295u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1055f, 311f, var_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -135f) - -699f), _wgslsmith_f_op_f32(select(-773f, -1000f, func_2().x))), false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.yy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -1812f, var_2, var_2))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, _wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(ceil(var_2)), -101f))));
}

