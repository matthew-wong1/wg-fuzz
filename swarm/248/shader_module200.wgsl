struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_1(~abs(arg_0.d.a), _wgslsmith_add_vec4_i32(arg_0.a.b, arg_0.a.b), select(vec4<bool>(false, true, true, select(any(arg_0.a.c.ww), false, select(false, arg_0.d.c.x, arg_0.d.c.x))), !select(!vec4<bool>(false, arg_0.d.c.x, false, arg_0.b.x), select(vec4<bool>(false, true, true, false), vec4<bool>(arg_0.a.c.x, arg_0.a.c.x, false, arg_0.d.c.x), true), select(vec4<bool>(true, true, false, arg_0.a.c.x), arg_0.d.c, arg_0.d.c.x)), !(!vec4<bool>(true, false, arg_0.b.x, false))));
    var_0 = Struct_1(29226i >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c, u_input.a.x, 77204u), ~vec3<u32>(arg_0.c, u_input.a.x, arg_0.c)) & 112131u) % 32u), max(arg_0.d.b, ~arg_0.d.b >> (abs(vec4<u32>(u_input.a.x, arg_0.c, 1u, 4294967295u) << (vec4<u32>(57224u, 0u, u_input.a.x, arg_0.c) % vec4<u32>(32u))) % vec4<u32>(32u))), select(arg_0.b, arg_0.d.c, true));
    var_0 = arg_0.d;
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_i32(-_wgslsmith_div_i32(2147483647i, var_0.a), 22655i), select(countOneBits(select(vec4<i32>(-1i, arg_0.a.a, 1i, var_0.b.x), arg_0.a.b, vec4<bool>(true, arg_0.b.x, var_0.c.x, true))), -(~var_0.b), vec4<bool>(!var_0.c.x, 1u < arg_0.c, !var_0.c.x, true)), vec4<bool>(!(!var_0.c.x), select(!var_0.c.x, true, arg_0.c != 1u), true, true)), vec4<bool>(var_0.c.x, var_0.c.x, false || (true & any(vec3<bool>(false, true, false))), true), 21098u, Struct_1(~(reverseBits(var_0.b.x) | countOneBits(59747i)), var_0.b, arg_0.a.c));
    var var_2 = !(!any(!vec3<bool>(var_0.c.x, var_0.c.x, var_1.b.x)));
    return ((var_1.d.a << (~(~56021u) % 32u)) >> (arg_0.c % 32u)) ^ (var_0.b.x ^ var_1.a.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> bool {
    var var_0 = arg_1.x;
    var_0 = _wgslsmith_mod_i32(arg_1.x, arg_1.x);
    var_0 = -35816i;
    var_0 = i32(-1i) * -_wgslsmith_dot_vec3_i32(arg_0.b.yyw, ~(vec3<i32>(1i, arg_1.x, 25392i) & vec3<i32>(arg_0.b.x, 27768i, arg_0.b.x)));
    var_0 = _wgslsmith_dot_vec4_i32(~_wgslsmith_clamp_vec4_i32(select(vec4<i32>(arg_0.a, 1i, arg_1.x, arg_0.b.x), abs(vec4<i32>(-2147483647i, arg_1.x, 2147483647i, -37195i)), !arg_0.c), arg_0.b, ~arg_0.b), arg_0.b);
    return true;
}

fn func_2() -> vec2<f32> {
    let var_0 = func_4(Struct_1(min(_wgslsmith_add_i32(-3299i, 1i), abs(func_3(Struct_2(Struct_1(-1i, vec4<i32>(-20672i, 0i, 13638i, -10934i), vec4<bool>(false, false, true, true)), vec4<bool>(true, false, true, false), u_input.a.x, Struct_1(-1i, vec4<i32>(-8966i, 2147483647i, 0i, -2147483647i), vec4<bool>(true, true, false, true)))))), vec4<i32>(_wgslsmith_add_i32(21976i, abs(0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(16410i, 43458i, -2147483647i, -30424i), vec4<i32>(8428i, -1i, 1i, -45799i)), countOneBits(i32(-1i) * -2147483647i), abs(1i)), !vec4<bool>(true, true, select(true, true, true), all(vec4<bool>(false, false, true, true)))), reverseBits(-vec3<i32>(1i, 1i, -57179i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-644f, _wgslsmith_f_op_f32(f32(-1f) * -590f)), -3196f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1357f)) + _wgslsmith_f_op_f32(-1090f - 1353f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-758f, 318f, _wgslsmith_f_op_f32(-1855f + -944f), -247f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(552f + -1000f), 398f, 1f, _wgslsmith_div_f32(1172f, -177f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(613f, -330f, 213f, -325f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(895f, -1191f, 1882f, -621f))), select(select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(true, true, true, true), !vec4<bool>(false, var_0, var_0, false)), select(!vec4<bool>(var_0, false, var_0, true), !vec4<bool>(var_0, var_0, var_0, var_0), var_0), !vec4<bool>(false, var_0, var_0, var_0)))), vec4<bool>(all(select(vec3<bool>(var_0, var_0, false), vec3<bool>(true, var_0, true), var_0)) | !(var_0 | var_0), true, false, any(select(!vec2<bool>(var_0, false), select(vec2<bool>(var_0, true), vec2<bool>(true, var_0), var_0), select(vec2<bool>(var_0, false), vec2<bool>(var_0, true), true))))));
    var var_2 = Struct_2(Struct_1(1i, _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(66853i, -13646i, -2147483647i, 2926i) << (vec4<u32>(u_input.a.x, 1u, u_input.a.x, 629u) % vec4<u32>(32u)), vec4<i32>(0i, 0i, -1i, -2147483647i)), vec4<i32>(1i, 1i, 1i, 1i) & firstTrailingBit(vec4<i32>(-12777i, -2147483647i, 0i, -27636i))), !select(!vec4<bool>(false, var_0, var_0, false), vec4<bool>(var_0, var_0, var_0, var_0), true)), select(select(vec4<bool>(!var_0, var_0 && var_0, false, select(false, var_0, true)), !select(vec4<bool>(false, var_0, var_0, true), vec4<bool>(true, false, var_0, true), true), select(!var_0, !var_0, true)), select(select(vec4<bool>(var_0, var_0, true, true), !vec4<bool>(false, false, false, var_0), true), !select(vec4<bool>(var_0, var_0, false, var_0), vec4<bool>(true, true, false, false), vec4<bool>(false, var_0, var_0, var_0)), vec4<bool>(true, true, true, true)), var_0), ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(4294967295u, 102u, 0u, u_input.a.x)), max(vec4<u32>(0u, 95822u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x))), max(~vec4<u32>(20308u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(19289u, 25418u, u_input.a.x, 4294967295u) & vec4<u32>(1u, 13465u, u_input.a.x, 58883u))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, firstTrailingBit(1i), 1i)), _wgslsmith_mod_vec4_i32(abs(vec4<i32>(0i, -1i, 1i, -12852i)), vec4<i32>(1i, 1i, 1i, 1i)), !vec4<bool>(any(vec3<bool>(var_0, true, var_0)), true, true, false | var_0)));
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.x, -214f, var_0))), var_1.x)))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1047f, var_1.x, 986f, 238f) + vec4<f32>(2232f, -237f, 1289f, var_1.x))))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, var_1.x, var_1.x, 859f), vec4<f32>(var_1.x, -1695f, -381f, var_1.x)))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1828f, 1373f, var_1.x, -2467f)))), var_0)) - vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-1810f + _wgslsmith_f_op_f32(912f - 1000f)), 1f, var_1.x)));
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1370f, var_1.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -857f)))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(func_2())) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0 * vec2<f32>(arg_0.x, -1451f)) * vec2<f32>(1000f, arg_0.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_0 + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1000f))))), !vec2<bool>(true, arg_1.c.x))));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0 + arg_0)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(arg_0, _wgslsmith_f_op_vec2_f32(func_2())))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(592f - arg_0.x)))));
    let var_1 = arg_3;
    var var_2 = arg_3;
    var_0 = arg_0;
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 2147483647i, -16142i, -2147483647i), vec4<i32>(-87145i, 2147483647i, -2147483647i, -11433i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, -14327i, 38557i, 0i), vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)) << (vec4<u32>(40744u, u_input.a.x, 50802u, select(u_input.a.x, u_input.a.x, false)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(-9654i, reverseBits(45901i >> (u_input.a.x % 32u)), firstLeadingBit(func_1(vec2<f32>(2103f, 339f), Struct_1(-7142i, vec4<i32>(-1i, -1i, -1i, 1i), vec4<bool>(false, false, false, false)), -1868f, Struct_1(21434i, vec4<i32>(-45704i, 2147483647i, -2147483647i, -2147483647i), vec4<bool>(false, true, true, false)))), firstLeadingBit(-14421i)), vec4<i32>(-17251i, reverseBits(1i), -1i, firstLeadingBit(-2147483647i))), select(select(vec4<bool>(func_4(Struct_1(-33704i, vec4<i32>(-3837i, 12455i, -15332i, -1i), vec4<bool>(false, false, false, false)), vec3<i32>(-12393i, -32182i, 0i)), false, true, true), vec4<bool>(all(vec3<bool>(false, false, true)), true, false, true), (u_input.a.x != 4294967295u) || true), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true));
    var var_1 = ~(~_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(11971u, u_input.a.x, 77017u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 1u, 47745u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), select(vec3<u32>(u_input.a.x, 17647u, u_input.a.x) & vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(18947u, u_input.a.x, u_input.a.x), vec3<bool>(var_0.c.x, false, var_0.c.x))));
    let var_2 = 0u;
    let var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(40353u, var_1.x, var_1.x), ~abs(vec3<u32>(~var_2, countOneBits(var_2), 1u)));
    var var_4 = !select(var_0.c.yz, select(!var_0.c.wx, !var_0.c.wy, vec2<bool>(var_3.x != var_1.x, all(vec3<bool>(true, true, var_0.c.x)))), vec2<bool>(!all(vec2<bool>(false, true)), var_0.c.x));
    var_0 = Struct_1(var_0.b.x, _wgslsmith_add_vec4_i32(~(-abs(vec4<i32>(var_0.b.x, 1i, 2147483647i, var_0.a))), reverseBits(vec4<i32>(1i, 1i, ~var_0.a, ~(-6848i)))), vec4<bool>(!all(!var_0.c.zxy), var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-941f + -414f)) > _wgslsmith_f_op_vec2_f32(func_2()).x, true));
    var var_5 = Struct_1(var_0.a, var_0.b, select(vec4<bool>(all(var_0.c), select(false, any(var_0.c.zw), true), true, _wgslsmith_sub_u32(var_1.x, 18514u) <= _wgslsmith_mod_u32(var_2, var_3.x)), select(select(select(vec4<bool>(true, false, var_0.c.x, false), var_0.c, var_0.c.x), var_0.c, true), !var_0.c, vec4<bool>(true, var_0.c.x, var_0.c.x, var_4.x)), var_0.c));
    var_4 = vec2<bool>(true, _wgslsmith_f_op_f32(1941f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1369f - -145f) - 155f)) > _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_f_op_f32(f32(-1f) * -756f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-634f + -682f)))));
    let x = u_input.a;
    s_output = StorageBuffer(-3914i, _wgslsmith_sub_vec4_i32(reverseBits(min(firstLeadingBit(var_0.b), vec4<i32>(var_5.a, -2147483647i, var_5.a, var_0.a))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-3865i, var_0.a, var_5.a, var_0.a), firstLeadingBit(vec4<i32>(2147483647i, var_0.b.x, 2147483647i, var_5.b.x)))));
}

