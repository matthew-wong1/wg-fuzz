struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: bool,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32> = vec4<f32>(-1411f, -474f, -859f, -1914f);

var<private> global2: Struct_2 = Struct_2(-384f, Struct_1(vec3<f32>(-400f, 735f, 1498f), vec3<u32>(24739u, 16111u, 73967u), vec3<i32>(2147483647i, 1i, -59366i), 26066u, true), true, -1363f, 978f);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: f32) -> f32 {
    var var_0 = 54078u;
    var var_1 = global2.b;
    global0 = -(~(-2147483647i));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(7144i, _wgslsmith_dot_vec3_i32(u_input.b.xxz, var_1.c), _wgslsmith_mod_i32(u_input.b.x, var_1.c.x)), _wgslsmith_clamp_vec3_i32(u_input.b.xzw, global2.b.c, global2.b.c)), -1i);
    var var_3 = var_2.x | _wgslsmith_add_i32(~countOneBits(_wgslsmith_sub_i32(-1i, global2.b.c.x)), 1i);
    return 1f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = abs(arg_2.c.x);
    var var_1 = Struct_1(arg_0.a, arg_0.b, abs(arg_0.c), arg_1.b.x, arg_1.e);
    global0 = i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_1.c, abs(vec3<i32>(17294i, arg_0.c.x, 1i))), _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.c.x, arg_1.c.x), 1i));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.a.x)))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1142f, -1092f, _wgslsmith_f_op_f32(f32(-1f) * -971f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -969f), global2.e, _wgslsmith_f_op_f32(arg_2.a.x - arg_2.a.x))), max(~reverseBits(vec3<u32>(var_1.b.x, 55888u, 4294967295u)), arg_2.b), ~vec3<i32>(~16063i, -24705i & arg_0.c.x, -1i), arg_0.b.x, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(667f, global2.d)))) == arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.x - 263f) * -1483f))) + -149f), -650f);
    return !vec4<bool>(true, !arg_0.e, arg_1.e, false);
}

fn func_2() -> u32 {
    var var_0 = -808f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))));
    let var_2 = select(!vec2<bool>(any(func_3(Struct_1(vec3<f32>(var_1.x, global1.x, var_1.x), global2.b.b, u_input.b.wwx, u_input.a.x, true), global2.b, Struct_1(global2.b.a, global2.b.b, vec3<i32>(u_input.c.x, -2147483647i, 2147483647i), u_input.a.x, false))), all(!vec2<bool>(global2.b.e, global2.b.e))), func_3(global2.b, Struct_1(_wgslsmith_f_op_vec3_f32(exp2(global1.ywz)), vec3<u32>(~u_input.a.x, global2.b.d | 1u, _wgslsmith_add_u32(65053u, global2.b.d)), u_input.b.xzx, _wgslsmith_sub_u32(firstTrailingBit(0u), ~82596u), true), global2.b).zy, !(!select(true, true, global2.c)));
    var var_3 = global2.b.a;
    let var_4 = global2.b;
    return u_input.a.x;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: i32, arg_3: u32) -> f32 {
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global2.a)))))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.xxy)), vec3<u32>(30588u, ~69142u, _wgslsmith_div_u32(arg_3, arg_3)) << ((vec3<u32>(28337u, 0u, 0u) & ~global2.b.b) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, -3680i), u_input.b.wzw), ~global2.b.c), global2.b.c >> (vec3<u32>(4294967295u, 29436u, arg_3) % vec3<u32>(32u))), _wgslsmith_mod_u32(~27391u, ~arg_3) | (~arg_3 & (global2.b.b.x ^ 1u)), true), any(!(!vec3<bool>(false, global2.c, global2.b.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(213f - -305f)), _wgslsmith_f_op_f32(min(arg_0.x, arg_1.x)));
    global2 = Struct_2(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1144f + arg_1.x))) * 1970f)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0, vec3<f32>(-673f, -1185f, global2.b.a.x)))), abs(global2.b.b), vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(-2147483647i, arg_2), firstTrailingBit(0i)), abs(reverseBits(-47052i)), _wgslsmith_clamp_i32(global2.b.c.x & 2147483647i, arg_2, global2.b.c.x << (u_input.a.x % 32u))), _wgslsmith_dot_vec3_u32(global2.b.b, (vec3<u32>(4294967295u, arg_3, 38303u) & vec3<u32>(arg_3, u_input.a.x, 0u)) >> (vec3<u32>(59094u, global2.b.d, 32207u) % vec3<u32>(32u))), any(select(vec2<bool>(global2.c, false), vec2<bool>(true, true), vec2<bool>(true, global2.c))) || true), false, _wgslsmith_f_op_f32(ceil(global2.b.a.x)), _wgslsmith_div_f32(-1480f, _wgslsmith_f_op_f32(-1131f - _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-arg_1.x)))));
    let var_0 = 2147483647i;
    var var_1 = var_0;
    var var_2 = !(!func_3(global2.b, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(403f, global1.x, arg_1.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3, 4294967295u, global2.b.b.x), vec3<u32>(99348u, 13953u, u_input.a.x), vec3<u32>(global2.b.d, 4294967295u, 23836u)), vec3<i32>(-52517i, 14120i, global2.b.c.x), func_2(), global2.c), Struct_1(arg_0, ~vec3<u32>(arg_3, u_input.a.x, u_input.a.x), u_input.b.xzz | global2.b.c, ~global2.b.d, true)).xwx);
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(sign(global2.a))))))), global2.b.b, vec3<i32>(_wgslsmith_div_i32(0i << (u_input.a.x % 32u), global2.b.c.x), select(u_input.c.x, global2.b.c.x, false) >> (37191u % 32u), u_input.b.x), ~firstLeadingBit(abs(u_input.a.x)), any(!vec4<bool>(true, select(false, global2.c, global2.c), global2.b.d != 19240u, any(vec4<bool>(global2.b.e, global2.b.e, false, false)))));
    global2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.x - -372f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-545f - var_0.a.x) + -932f)))), var_0, global2.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-320f * _wgslsmith_f_op_f32(-711f - global2.d)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(723f))))))));
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-991f * global1.x) + _wgslsmith_f_op_f32(-1134f + var_0.a.x)), _wgslsmith_f_op_f32(func_1(global2.d, _wgslsmith_mult_u32(global2.b.b.x, u_input.a.x), _wgslsmith_f_op_f32(floor(-843f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(174f, _wgslsmith_f_op_f32(exp2(var_0.a.x))) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, var_0.a.x, var_0.a.x)), vec2<f32>(_wgslsmith_f_op_f32(-633f - global1.x), _wgslsmith_div_f32(global2.d, -163f)), -(33082i << (var_0.d % 32u)), func_2()))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1135f + global1.x)), global1.x, _wgslsmith_f_op_f32(1f + var_0.a.x), global2.a), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e), global2.e), _wgslsmith_f_op_f32(abs(2056f)), _wgslsmith_f_op_f32(min(global2.b.a.x, global1.x)), 1f), global2.b.c.x < ~_wgslsmith_add_i32(-41583i, 2147483647i))));
    var var_1 = vec2<bool>(false, all(select(!vec4<bool>(false, global2.c, var_0.e, true), select(vec4<bool>(false, var_0.e, false, false), vec4<bool>(global2.b.e, global2.c, global2.b.e, global2.b.e), vec4<bool>(true, true, true, true)), !vec4<bool>(false, true, var_0.e, var_0.e))));
    global1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.a.x, var_0.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -831f)), 113f), 660f)));
    var_1 = select(!select(vec2<bool>(var_0.e || true, all(vec2<bool>(false, var_1.x))), !(!vec2<bool>(var_0.e, false)), vec2<bool>(false, any(vec3<bool>(true, true, true)))), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-396f, 1404f, global2.d))), global2.b.b, abs(vec3<i32>(27080i, var_0.c.x, -11559i)), 4294967295u, var_1.x), var_0, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global2.b.a.x, 129f))), min(_wgslsmith_mod_vec3_u32(vec3<u32>(15185u, global2.b.d, var_0.b.x), var_0.b), var_0.b), global2.b.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 1u, var_0.d, u_input.a.x), vec4<u32>(var_0.d, 1u, var_0.b.x, 7340u)) & _wgslsmith_mod_u32(4294967295u, var_0.d), !(var_1.x | var_1.x))).yx, !vec2<bool>(true, !any(vec3<bool>(var_0.e, false, global2.b.e))));
    var var_2 = select(func_3(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(var_0.a.x, 1000f), var_0.a.x), min(select(var_0.b, global2.b.b, var_0.e), global2.b.b), _wgslsmith_clamp_vec3_i32(var_0.c, firstLeadingBit(global2.b.c), global2.b.c), var_0.b.x, !(var_0.e | var_0.e)), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.yxy)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.e, global1.x, 2106f)))), _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a.x, global2.b.d, 6713u), global2.b.b, var_0.e), vec3<u32>(4294967295u, 69990u, 24631u)), vec3<i32>(_wgslsmith_dot_vec2_i32(global2.b.c.zz, vec2<i32>(239i, u_input.c.x)), _wgslsmith_dot_vec3_i32(global2.b.c, vec3<i32>(u_input.c.x, u_input.b.x, 45066i)), 0i), _wgslsmith_dot_vec2_u32(global2.b.b.zy, ~vec2<u32>(0u, 52449u)), !var_1.x), Struct_1(vec3<f32>(-247f, var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x + -477f)), abs(select(var_0.b, var_0.b, var_1.x)), vec3<i32>(min(1i, 0i), ~(-11295i), 0i << (1u % 32u)), 50015u, var_1.x)).xww, !(!vec3<bool>(!global2.b.e, global2.c, global2.b.c.x <= var_0.c.x)), func_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.a * var_0.a)), max(~var_0.b, _wgslsmith_mod_vec3_u32(global2.b.b, vec3<u32>(3907u, 1u, 5294u))), _wgslsmith_add_vec3_i32(global2.b.c, global2.b.c) | _wgslsmith_clamp_vec3_i32(vec3<i32>(global2.b.c.x, 1i, var_0.c.x), global2.b.c, var_0.c), ~(~73030u), !(u_input.a.x > 0u)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-606f, -1000f, -307f)), abs(var_0.b), vec3<i32>(_wgslsmith_div_i32(var_0.c.x, 1i), u_input.b.x, global2.b.c.x), _wgslsmith_add_u32(_wgslsmith_add_u32(var_0.b.x, 40989u), ~84680u), var_0.e), var_0).wxw);
    var var_3 = !func_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1536f, global1.x, var_0.a.x) * vec3<f32>(global2.b.a.x, global2.e, -644f)), vec3<u32>(46676u, var_0.b.x, ~global2.b.b.x), min(vec3<i32>(u_input.b.x, global2.b.c.x, 1i), u_input.b.yxz), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, global2.b.d), ~vec4<u32>(global2.b.d, 24872u, u_input.a.x, 20268u)), true), global2.b, Struct_1(global2.b.a, global2.b.b, ~vec3<i32>(global2.b.c.x, u_input.b.x, 1i), u_input.a.x, all(vec2<bool>(false, true)))).yz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, -1528f, firstTrailingBit(_wgslsmith_mod_i32(var_0.c.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(-26326i, var_0.c.x, global2.b.c.x), _wgslsmith_dot_vec4_i32(u_input.b, u_input.b)))));
}

