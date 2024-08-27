struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: u32 = 56559u;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>) -> vec2<bool> {
    let var_0 = true;
    var var_1 = -(arg_0.c | min(_wgslsmith_mult_i32(-1i, arg_0.c), u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, arg_0.a.x, 2646f, -1627f), arg_0.a, vec4<bool>(true, var_0, var_0, var_0))), arg_0.a) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(round(769f))))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(arg_0.a)) + vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(200f - arg_0.a.x), 816f)))));
    let var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(5758i, u_input.b.x) & max(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, u_input.b.x), u_input.b.zz), -u_input.b.xz), min(u_input.b.ww, u_input.b.yx)), _wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(u_input.b.zy, u_input.b.yz), ~_wgslsmith_mod_vec2_i32(u_input.b.yz, vec2<i32>(u_input.b.x, 20340i))) & ~firstLeadingBit(~u_input.b.wz));
    let var_4 = Struct_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-774f, var_2.x, 610f, _wgslsmith_f_op_f32(ceil(566f)))))), !vec3<bool>(any(!vec2<bool>(arg_0.b.x, true)), arg_1.x, true), _wgslsmith_dot_vec2_i32(var_3, (firstLeadingBit(vec2<i32>(-1i, 28122i)) ^ max(vec2<i32>(71537i, -62070i), u_input.b.yx)) ^ -vec2<i32>(var_3.x, arg_0.c)));
    return select(vec2<bool>(true, !var_4.b.x), select(!(!(!vec2<bool>(true, var_4.b.x))), !vec2<bool>(any(vec4<bool>(var_4.b.x, arg_0.b.x, arg_1.x, false)), true), all(var_4.b.yx)), vec2<bool>(var_0, false));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> vec3<bool> {
    global1 = u_input.e.x;
    let var_0 = Struct_5(arg_0.c, vec3<bool>(arg_0.e, true, true), 38896i);
    var var_1 = func_3(Struct_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0.c - vec4<f32>(138f, var_0.a.x, arg_0.a.x, 148f))), var_0.a), !var_0.b, max(-arg_0.d, u_input.d)), !vec3<bool>(any(var_0.b) && false, !(-975f > var_0.a.x), true));
    var_1 = !var_0.b.xz;
    let var_2 = -18349i;
    return vec3<bool>(false, var_0.b.x, !(true || !(arg_0.e && var_1.x)));
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4, arg_3: vec3<i32>) -> f32 {
    var var_0 = select(!select(!(!vec3<bool>(false, true, arg_2.b.e)), !(!vec3<bool>(false, arg_0.a.e, arg_2.b.e)), select(select(vec3<bool>(arg_0.a.b, false, true), vec3<bool>(false, true, false), arg_0.a.b), select(vec3<bool>(false, false, true), vec3<bool>(true, arg_0.a.e, false), arg_0.a.e), arg_0.a.b)), select(vec3<bool>(arg_0.a.b, !arg_2.b.b, !all(vec4<bool>(arg_2.b.e, arg_0.a.e, false, false))), !func_2(Struct_1(arg_2.a.xw, arg_2.b.e, arg_2.a, 22561i, arg_2.b.e), _wgslsmith_mult_vec2_u32(u_input.a.xx, vec2<u32>(arg_1, 4294967295u))), vec3<bool>(arg_0.a.b, arg_0.a.b, !arg_2.b.b)), !any(!(!vec2<bool>(arg_2.b.b, arg_0.a.e))));
    let var_1 = arg_2.d;
    let var_2 = Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f)), 134f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.e), 1032f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) - _wgslsmith_f_op_f32(625f * var_1.b)), -4339i >= select(49961i, 41410i, arg_2.b.b))), arg_2.d.b), !select(vec3<bool>(false, all(vec3<bool>(false, true, var_0.x)), false), func_2(Struct_1(arg_0.a.a, true, vec4<f32>(arg_0.b, 402f, arg_0.a.a.x, -856f), u_input.b.x, true), _wgslsmith_clamp_vec2_u32(u_input.e, u_input.e, global0.zx)), !arg_2.b.e), arg_3.x);
    global0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(abs(u_input.c), vec2<u32>(49583u, var_1.d.x)), firstLeadingBit(arg_1), reverseBits(_wgslsmith_clamp_u32(var_1.a.x, 0u, 3945u))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(global0.x, 24969u, arg_2.d.c)), ~var_1.d.xww) & ~vec3<u32>(75055u, u_input.c.x, 43410u));
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(vec4<f32>(380f, -593f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec2<f32>(938f, 438f), true, vec4<f32>(-1167f, 1634f, 344f, 240f), u_input.d, false), -1226f, 0i), 77531u, Struct_4(vec4<f32>(3442f, -867f, 677f, -235f), Struct_1(vec2<f32>(3358f, -619f), true, vec4<f32>(1074f, -1041f, -1459f, 638f), u_input.d, true), vec3<f32>(1618f, 349f, -689f), Struct_2(u_input.a.xy, -463f, u_input.e.x, vec4<u32>(global0.x, 67487u, global0.x, 57473u), 977f)), vec3<i32>(u_input.d, 25857i, 6752i))), -450f, true)) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1257f + 210f)))), _wgslsmith_f_op_f32(f32(-1f) * -648f)), !vec3<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), true, all(vec4<bool>(true, true, true, true))), _wgslsmith_sub_i32(select(_wgslsmith_clamp_i32(-81003i, -1i, u_input.d), -1i, global0.x != 1u) >> (_wgslsmith_clamp_u32(min(14076u, 73385u), 5071u, u_input.a.x) % 32u), _wgslsmith_mod_i32(2147483647i, -2147483647i)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.a))), func_2(Struct_1(vec2<f32>(-731f, -334f), var_0.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)), ~min(-32361i, -13395i), var_0.b.x), u_input.c | max(max(vec2<u32>(u_input.e.x, 4294967295u), vec2<u32>(1u, 1u)), u_input.a.xx)), ~reverseBits(34282i));
    global1 = 1u >> (1u % 32u);
    global0 = u_input.a;
    var var_2 = !func_3(var_1, !select(vec3<bool>(true, true, true), func_2(Struct_1(var_0.a.zx, var_1.b.x, var_0.a, var_0.c, true), global0.xz), var_0.b.x)).x;
    let var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-279f, -1025f), _wgslsmith_f_op_f32(2201f + -608f))))), _wgslsmith_f_op_f32(exp2(var_0.a.x)), -396f, -1261f), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-var_1.a))));
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(912f, var_0.a.x, var_0.a.x, 725f) * var_0.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_0.a.x, var_1.a.x, 2824f))), !vec4<bool>(true, false, var_0.b.x, var_0.b.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(max(var_1.a.yy, vec2<f32>(_wgslsmith_div_f32(2684f, -1360f), 216f))), false, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 1226f, _wgslsmith_f_op_f32(func_1(Struct_3(Struct_1(vec2<f32>(var_1.a.x, 754f), true, var_0.a, u_input.d, true), var_3.x, 34244i), 7104u, Struct_4(vec4<f32>(var_3.x, var_3.x, var_3.x, var_1.a.x), Struct_1(var_3.wx, var_0.b.x, var_0.a, u_input.d, var_0.b.x), var_1.a.xzw, Struct_2(u_input.c, 1029f, global0.x, vec4<u32>(u_input.a.x, 4115u, global0.x, 38311u), -193f)), u_input.b.wxx)), 1466f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(632f, -380f, -729f, var_3.x))))), u_input.d, true), var_1.a.ywz, Struct_2(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(u_input.c.x, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-2293f * -705f), -738f, !var_1.b.x))), 35999u, ~min(countOneBits(vec4<u32>(6626u, global0.x, global0.x, 42074u)), vec4<u32>(u_input.c.x, global0.x, global0.x, 61910u) ^ vec4<u32>(global0.x, 55590u, 54985u, u_input.a.x)), 446f));
    let var_5 = Struct_2(vec2<u32>(global0.x, 24821u), _wgslsmith_f_op_f32(ceil(var_3.x)), ~u_input.a.x, vec4<u32>(var_4.d.c, ~global0.x, ~(~global0.x), var_4.d.a.x) ^ var_4.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-173f)) + var_1.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_1.a.x, 1583f)) * _wgslsmith_f_op_f32(trunc(var_3.x))) * 1193f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(4294967295u, ~17131u, 33204u, 4294967295u) ^ ~var_5.d, vec2<u32>(~global0.x, firstLeadingBit(abs(global0.x))));
}

