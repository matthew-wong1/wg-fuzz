struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: i32 = 37389i;

var<private> global2: vec4<u32> = vec4<u32>(47814u, 23741u, 28429u, 30462u);

var<private> global3: f32 = -2437f;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> vec2<i32> {
    let var_0 = arg_0.c;
    global0 = u_input.d.yz << (_wgslsmith_div_vec2_u32(vec2<u32>(global2.x ^ _wgslsmith_clamp_u32(1u, 71892u, u_input.e.x), select(~arg_0.a.e.x, ~27048u, arg_0.a.b)), abs(~(~vec2<u32>(20894u, 40554u)))) % vec2<u32>(32u));
    var var_1 = -1223f;
    let var_2 = -1136f;
    var var_3 = -46489i;
    return select(max(~_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 48023i), -arg_0.a.d.xy), ~(vec2<i32>(-1i) * -vec2<i32>(global0.x, global0.x))), countOneBits(-(~u_input.d.xx)) | vec2<i32>(global0.x, global0.x), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<bool>, arg_3: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1847f, 1510f, arg_0.c)))), _wgslsmith_f_op_f32(-1312f * 629f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1945f * -3177f), _wgslsmith_f_op_f32(432f - 2138f)), -234f))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-518f, 274f, -124f, 1471f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(abs(-1012f)), _wgslsmith_f_op_f32(f32(-1f) * -985f), -1016f, -1252f), vec4<f32>(_wgslsmith_f_op_f32(select(289f, 1000f, arg_0.c)), _wgslsmith_f_op_f32(min(290f, 1439f)), _wgslsmith_f_op_f32(ceil(-1625f)), _wgslsmith_f_op_f32(f32(-1f) * -737f)), vec4<bool>(arg_2.x, true, true, true)))));
    let var_1 = arg_0;
    global2 = vec4<u32>(global2.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 48978u, global2.x, 0u), u_input.e), u_input.b), ~(4294967295u | global2.x)), _wgslsmith_add_u32(~u_input.b.x, _wgslsmith_mod_u32(arg_0.a.x, u_input.e.x)) | ~4294967295u), u_input.b.x, 60684u);
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(491f, var_0.x, var_0.x, -470f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-523f, var_0.x, var_0.x, 388f) - vec4<f32>(var_0.x, var_0.x, var_0.x, -130f)))) - vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -604f)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.x)) - -741f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, -868f), vec4<f32>(644f, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, arg_2.x, false))) * vec4<f32>(705f, var_0.x, var_0.x, -157f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 766f, 556f, var_0.x) + vec4<f32>(-1593f, -1000f, 706f, 262f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 993f, var_0.x) + vec4<f32>(705f, var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 1000f, 1864f, var_0.x))))))));
    var var_2 = Struct_2(true, all(!(!(!arg_0.d))), _wgslsmith_add_vec2_i32(arg_1, _wgslsmith_mult_vec2_i32(arg_1, _wgslsmith_mult_vec2_i32(vec2<i32>(-6801i, 2147483647i), arg_1)) & u_input.d.zz), _wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(-43986i), global0.x, -arg_1.x), _wgslsmith_mult_vec3_i32(u_input.d, ~vec3<i32>(global0.x, -14170i, -2147483647i)) & vec3<i32>(29246i, _wgslsmith_mult_i32(u_input.c, u_input.a), 1i)), _wgslsmith_clamp_vec3_u32(select(~abs(vec3<u32>(4294967295u, u_input.e.x, 10566u)), u_input.e.ywy << (countOneBits(u_input.b.xxz) % vec3<u32>(32u)), select(arg_0.d, select(arg_0.d, vec3<bool>(arg_2.x, true, arg_3.x), true), true)), ~(global2.zyz ^ firstLeadingBit(u_input.e.zyw)), ~vec3<u32>(select(var_1.a.x, arg_0.a.x, true), 850u, ~37518u)));
    return global0.x;
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-655f, 635f) - vec2<f32>(-1842f, -1380f)))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-409f, 1139f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(132f, 807f) - vec2<f32>(1974f, -1139f)), vec2<f32>(164f, -748f))), vec2<f32>(_wgslsmith_f_op_f32(-664f + 1147f), -1000f))));
    var var_1 = vec2<bool>(u_input.d.x >= func_4(Struct_1(firstTrailingBit(vec3<u32>(u_input.b.x, arg_0.x, global2.x)), true, all(vec3<bool>(true, false, false)), vec3<bool>(true, true, true), ~vec2<u32>(global2.x, 35391u)), func_3(Struct_3(Struct_2(true, false, u_input.d.zy, u_input.d, u_input.b.www), vec4<f32>(var_0.x, var_0.x, 860f, -665f), -405f)), vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), false), true)), true);
    var_1 = !vec2<bool>(all(select(vec2<bool>(true, true), select(vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, true), vec2<bool>(var_1.x, true)), all(vec2<bool>(true, false)))), all(vec3<bool>(global0.x <= 55351i, all(vec3<bool>(true, var_1.x, false)), true)));
    global2 = ~_wgslsmith_sub_vec4_u32(u_input.e, ~(~u_input.b ^ abs(u_input.e)));
    var var_2 = Struct_4(vec4<bool>(all(select(!vec2<bool>(var_1.x, true), vec2<bool>(true, true), all(vec3<bool>(true, var_1.x, var_1.x)))), true, var_1.x, true));
    return -536f;
}

fn func_1(arg_0: u32) -> bool {
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<u32>(global2.x, global2.x))) - -1776f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1069f)), 1f), all(vec2<bool>(true, true))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    global2 = abs(vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~(u_input.e.x | (arg_0 << (u_input.b.x % 32u))), 41051u, abs(1u)));
    var var_0 = vec4<bool>(!(u_input.c <= -global0.x) & all(vec4<bool>(all(vec3<bool>(false, true, true)), all(vec3<bool>(false, false, false)), true, true)), true, true, select(true, true || any(vec2<bool>(true, true)), true));
    let var_1 = u_input.b.x;
    var var_2 = Struct_1(vec3<u32>(arg_0, _wgslsmith_mult_u32(abs(arg_0), ~var_1), _wgslsmith_add_u32(82615u, ~(var_1 << (global2.x % 32u)))), var_0.x, !var_0.x & var_0.x, var_0.wwx, min(~(~global2.yx), select(max(max(global2.zy, global2.wy), u_input.b.yw), ~(~global2.wy), var_0.x & any(vec2<bool>(var_0.x, true)))));
    return false;
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> bool {
    global2 = ~u_input.e;
    let var_0 = ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(2442u, global2.x), firstLeadingBit(~arg_0.a.x));
    global1 = global0.x;
    global3 = -2269f;
    let var_1 = vec4<i32>(global0.x, u_input.d.x, u_input.c, _wgslsmith_div_i32(-countOneBits(u_input.c), -select(1i, -104144i, arg_1)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 33475i;
    global0 = -vec2<i32>(~(~(34174i & u_input.c)), global0.x);
    var var_0 = Struct_1(~u_input.b.yxw, select(!any(vec2<bool>(true, true)), true, (global0.x << (39730u % 32u)) > -_wgslsmith_mult_i32(u_input.c, -18645i)), !(!func_5(Struct_1(u_input.e.wzz, false, false, vec3<bool>(false, true, false), global2.wy), func_1(u_input.e.x), _wgslsmith_f_op_f32(1329f * -1046f))), select(vec3<bool>(true, true, true), !(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true)), vec3<bool>(true, false, false)), vec2<u32>(~_wgslsmith_mult_u32(global2.x, 23082u) << (1u % 32u), ~_wgslsmith_div_u32(0u, 16253u)));
    var var_1 = Struct_4(!vec4<bool>(countOneBits(u_input.d.x) < _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, u_input.d.x, global0.x), vec4<i32>(u_input.a, -2147483647i, 27311i, -2147483647i)), var_0.c, var_0.d.x, var_0.b && var_0.c));
    let var_2 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(global2.xw, vec2<u32>(var_0.a.x, 4294967295u)), reverseBits(var_0.a.xz)), global2.x);
    var_1 = Struct_4(!select(!var_1.a, var_1.a, var_1.a));
    global0 = -(~(((u_input.d.zx & vec2<i32>(-1i, global0.x)) & _wgslsmith_div_vec2_i32(u_input.d.yy, vec2<i32>(global0.x, 0i))) | vec2<i32>(global0.x ^ u_input.a, global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f))), -vec3<i32>(1i, u_input.a, func_4(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 68855u), var_0.b, false, vec3<bool>(true, var_1.a.x, true), vec2<u32>(79844u, var_2)), u_input.d.yx, !var_1.a.xy, !vec2<bool>(var_0.d.x, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(3073f, 1000f, -298f, 559f), vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(1f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1504f), _wgslsmith_f_op_f32(1000f * -358f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-719f - -259f), 512f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1526f))), var_1.a.x)), _wgslsmith_add_u32(_wgslsmith_add_u32(~var_2 ^ var_0.e.x, ~reverseBits(4294967295u)), 30305u));
}

