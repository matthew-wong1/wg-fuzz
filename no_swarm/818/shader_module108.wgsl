struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    var var_0 = Struct_2(174f, Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.zx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-632f, 321f) * vec2<f32>(468f, 1065f)))), u_input.a.yzz, !any(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), false))), Struct_1(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(select(1000f, arg_0.x, false)), arg_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.zx))))), ~(~u_input.a.zxw), true), Struct_1(_wgslsmith_f_op_vec2_f32(arg_0.xy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(782f, arg_0.x) + vec2<f32>(arg_0.x, 795f)) - arg_0.yx)), u_input.a.yww, all(select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), true)))));
    let var_1 = Struct_4(Struct_1(arg_0.ww, u_input.a.zxw, false), Struct_2(_wgslsmith_div_f32(-800f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_0.d.a * arg_0.yx), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, -108f), var_0.d.a))), ~vec3<u32>(var_0.c.b.x, u_input.a.x, u_input.a.x), !(false && var_0.b.c)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_0.zx - vec2<f32>(arg_0.x, -279f)))), u_input.a.zyw, var_0.b.c), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yw) + _wgslsmith_f_op_vec2_f32(arg_0.zw + vec2<f32>(var_0.c.a.x, -1519f))), var_0.c.b, true)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.a.zxw & vec3<u32>(u_input.a.x, 0u, 18669u), var_0.d.b), vec3<u32>(~(~87691u), _wgslsmith_mult_u32(39075u, 1u >> (0u % 32u)), u_input.a.x)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(-arg_0.x), var_0.c, var_1.a, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1480f) * 122f)), abs(~var_0.d.b), any(vec3<bool>(!var_1.b.c.c, true, 79488u <= var_0.d.b.x))));
    var var_2 = _wgslsmith_f_op_f32(ceil(var_0.b.a.x));
    let var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(786f + arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(741f, _wgslsmith_f_op_f32(arg_0.x + 1051f))) - var_0.d.a.x)), select(var_1.b.c.b, var_1.b.b.b, select(select(!vec3<bool>(var_0.b.c, var_0.b.c, true), select(vec3<bool>(true, true, var_0.b.c), vec3<bool>(var_0.b.c, true, false), vec3<bool>(var_0.d.c, var_0.b.c, true)), !vec3<bool>(var_0.c.c, var_0.d.c, false)), select(select(vec3<bool>(var_1.b.b.c, var_1.b.c.c, false), vec3<bool>(var_0.c.c, false, var_1.a.c), var_0.c.c), !vec3<bool>(false, var_1.b.d.c, var_1.b.c.c), any(vec3<bool>(false, false, true))), !select(vec3<bool>(var_1.b.c.c, var_1.a.c, false), vec3<bool>(true, var_0.d.c, false), vec3<bool>(true, true, var_1.b.b.c)))), true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2(arg_0: bool, arg_1: u32) -> i32 {
    var var_0 = vec4<f32>(170f, 1000f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1140f))));
    var_0 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -893f), -2421f, 958f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1481f) * _wgslsmith_f_op_f32(floor(var_0.x)))))));
    var var_1 = u_input.a.x;
    let var_2 = -38465i;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1555f, var_0.x, 1287f, -396f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -2911f) * vec4<f32>(-1282f, var_0.x, 1125f, 974f)), vec4<bool>(false, arg_0, false, arg_0)))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(-416f)), -629f), vec3<u32>(_wgslsmith_div_u32(min(u_input.a.x, u_input.a.x), 0u), u_input.a.x, _wgslsmith_div_u32(arg_1 << (80791u % 32u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), all(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), arg_0), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - -1000f) + var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, -244f)))), _wgslsmith_mult_vec3_u32(firstLeadingBit(_wgslsmith_add_vec3_u32(u_input.a.zwx, u_input.a.wzw)), _wgslsmith_add_vec3_u32(max(u_input.a.zyy, vec3<u32>(arg_1, 10115u, 4294967295u)), u_input.a.wyw)), all(select(select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, false, arg_0), false), vec3<bool>(arg_0, false, arg_0), true))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.zw))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.x, 596f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-595f, var_0.x) + var_0.yy)), !arg_0)), u_input.a.yzx, false));
    return firstTrailingBit(_wgslsmith_sub_i32(-_wgslsmith_sub_i32(u_input.b.x, u_input.b.x), u_input.b.x));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec4<f32>(arg_1.a.x, 1625f, -968f, arg_1.a.x))))) - _wgslsmith_f_op_f32(step(1000f, arg_2))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1815f, 1740f))), any(!vec4<bool>(1i >= arg_0, true, !arg_1.c, false)), all(vec2<bool>(true, true)), arg_1.c);
    let var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(select(arg_1.a, vec2<f32>(1679f, 383f), var_0.wy)), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1068f) - _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, -2148f, -1417f, -222f), vec4<f32>(810f, arg_1.a.x, arg_2, -200f))))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_1.a, arg_1.a)) - _wgslsmith_f_op_vec2_f32(min(arg_1.a, vec2<f32>(arg_1.a.x, 751f)))), reverseBits(u_input.a.xww << (vec3<u32>(27181u, 74810u, 4294967295u) % vec3<u32>(32u))), (4294967295u <= u_input.a.x) != all(vec2<bool>(var_0.x, false))), arg_1, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1.a.x, arg_2))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-420f, arg_2), vec2<f32>(-524f, arg_1.a.x), var_0.x))), vec3<u32>(4294967295u, arg_1.b.x, 73262u) | vec3<u32>(arg_1.b.x, u_input.a.x, 4294967295u), arg_1.c & arg_1.c)));
    var var_2 = arg_0;
    let var_3 = var_0.wxw;
    let var_4 = arg_1.b.x;
    return arg_1;
}

fn func_1() -> Struct_5 {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(i32(-1i) * -1i, 35448i), ~1i, -8182i), ~u_input.b.x, min(-2147483647i, max(-u_input.b.x, 1i))) | (~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 8757i), u_input.b.zz), u_input.b.x, 49331i, 60837i) ^ vec4<i32>(-70346i, 1i >> (_wgslsmith_mult_u32(u_input.a.x, 43453u) % 32u), 1i, (1i << (u_input.a.x % 32u)) | _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, 0i)));
    var var_1 = -214i;
    var var_2 = 299f;
    var var_3 = func_4(-_wgslsmith_mult_i32(func_2(true, u_input.a.x) ^ (24818i << (0u % 32u)), var_0.x), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(121f, 711f), vec2<f32>(1043f, -290f), true))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(234f, -2003f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-520f, 864f), vec2<f32>(1327f, 1251f), false))))), ~vec3<u32>(~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 35811u), 33710u), true), 292f);
    var var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(508f)) - 2374f) + _wgslsmith_f_op_f32(-var_3.a.x)), var_3.a.x, 1550f, 361f));
    return Struct_5(vec2<f32>(-1216f, var_4.x), Struct_2(176f, func_4(_wgslsmith_div_i32(var_0.x, ~(-25397i)), func_4(u_input.b.x, func_4(var_0.x, Struct_1(var_4.xz, vec3<u32>(u_input.a.x, var_3.b.x, u_input.a.x), var_3.c), 977f), _wgslsmith_f_op_f32(max(var_4.x, var_4.x))), _wgslsmith_f_op_f32(-var_3.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, var_4.x)) * var_4.yw), _wgslsmith_sub_vec3_u32(vec3<u32>(79236u, 0u, var_3.b.x), vec3<u32>(57573u, u_input.a.x, u_input.a.x)), var_3.c), func_4(-21314i, func_4(_wgslsmith_sub_i32(var_0.x, var_0.x), func_4(u_input.b.x, Struct_1(var_4.wx, var_3.b, false), var_4.x), -674f), -740f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec4<u32>(var_0.b.c.b.x, (firstTrailingBit(1u) | abs(countOneBits(18923u))) & _wgslsmith_div_u32(abs(~u_input.a.x), u_input.a.x), (var_0.b.b.b.x & ~_wgslsmith_dot_vec3_u32(var_0.b.c.b, var_0.b.d.b)) >> (_wgslsmith_mod_u32(var_0.b.c.b.x, u_input.a.x) % 32u), 29561u);
    let var_2 = Struct_3(func_1().b, u_input.b.x);
    var var_3 = vec3<u32>(2722u, ~(~22043u), ~22025u);
    let var_4 = var_2;
    var_3 = _wgslsmith_div_vec3_u32(min(var_2.a.d.b, firstTrailingBit(vec3<u32>(firstTrailingBit(4294967295u), ~8024u, min(u_input.a.x, var_1.x)))), vec3<u32>(_wgslsmith_mod_u32(~23498u, 1u), 9128u, func_1().b.d.b.x) << ((~_wgslsmith_div_vec3_u32(var_0.b.b.b, vec3<u32>(4294967295u, 4294967295u, var_4.a.c.b.x)) & var_0.b.c.b) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b.x, abs(u_input.b.x)), vec2<i32>(_wgslsmith_div_i32(-2147483647i, var_4.b), 24042i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_4.a.d.a.x, var_2.a.a, var_2.a.b.a.x, var_2.a.a))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1123f, -457f, -952f, var_2.a.a) - vec4<f32>(-778f, 872f, -1072f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(187f, var_4.a.d.a.x, 1000f, var_4.a.b.a.x))))), var_0.a.x, -1i, var_3.x);
}

