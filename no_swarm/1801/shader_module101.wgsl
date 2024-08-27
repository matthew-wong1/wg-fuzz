struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: vec4<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec3<u32>) -> f32 {
    let var_0 = reverseBits(arg_1.x);
    var var_1 = -_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(u_input.c.x, u_input.a), 1361i, -1i), vec3<i32>(u_input.a, 0i, u_input.a) & vec3<i32>(16701i, u_input.a, -1i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.c.x, u_input.c.x), u_input.c.yxw) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(32811u, 0u, 1635u), vec3<u32>(var_0, 4294967295u, arg_1.x), select(vec3<u32>(37422u, 53337u, arg_1.x), arg_1, vec3<bool>(false, true, true))) % vec3<u32>(32u)));
    global0 = false;
    global0 = true;
    global0 = true;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1844f * -1958f)) + _wgslsmith_div_f32(-1529f, _wgslsmith_f_op_f32(round(662f)))) * -1360f)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = countOneBits(u_input.c.x);
    var_0 = -24071i;
    var var_1 = _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(-u_input.c.wyx, u_input.c.xzy, ~vec3<i32>(-27367i, u_input.a, u_input.a)), vec3<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, u_input.c.x)), -u_input.c.zy), ~(u_input.c.x << (u_input.e % 32u)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), u_input.c.wz))) ^ -vec3<i32>(u_input.a, u_input.a, _wgslsmith_div_i32(~52524i, reverseBits(-73024i)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-893f, -359f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(647f * -184f), _wgslsmith_f_op_f32(func_3(arg_0, vec3<u32>(4294967295u, 4294967295u, 101905u)))))) + _wgslsmith_f_op_f32(-607f + _wgslsmith_div_f32(-413f, 1f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1019f), _wgslsmith_f_op_f32(select(-1000f, 114f, false))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(613f, 1059f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(657f, 1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1079f, -1000f)))))), !(arg_0 < ~(~u_input.e)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), false), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), true), vec4<bool>(false, true, true, true)), select(vec4<bool>(all(vec4<bool>(true, true, true, true)), u_input.c.x <= 1922i, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false)))), ~abs(countOneBits(32540i) >> ((41403u | u_input.d) % 32u)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) - -201f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b)), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_0.b.x, 233f)))), arg_0.a)), -977f != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a + arg_2.a), arg_1.a))), !arg_0.d, ~(~arg_0.e));
    global0 = arg_0.c;
    global0 = _wgslsmith_clamp_u32(~u_input.e, 32134u, u_input.b.x) >= abs(u_input.d);
    let var_1 = var_0.c;
    let var_2 = arg_0.e;
    return -175f;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_0, _wgslsmith_f_op_f32(-3488f * -402f))), _wgslsmith_f_op_f32(round(-1443f)), true))), _wgslsmith_f_op_f32(sign(-780f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-668f - 1000f) + -924f), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 + arg_0)), _wgslsmith_f_op_f32(func_4(Struct_1(arg_0, vec2<f32>(arg_0, arg_0), false, vec4<bool>(false, true, false, false), 2147483647i), func_2(0u), Struct_1(arg_0, vec2<f32>(arg_0, arg_0), false, vec4<bool>(true, true, true, false), -8247i))))))));
    let var_2 = 1i;
    var var_3 = !select(vec3<bool>(true, true, true), vec3<bool>(func_2(u_input.b.x).d.x, any(vec4<bool>(true, true, true, true)), false), !select(func_2(67948u).d.xxx, vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)));
    let var_4 = Struct_1(var_1.x, vec2<f32>(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, arg_0) + _wgslsmith_f_op_f32(var_1.x * var_1.x)), arg_0))), true, vec4<bool>(true, var_3.x, true, u_input.e >= _wgslsmith_add_u32(~u_input.e, ~108727u)), var_2);
    return Struct_1(395f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(166f)))))), !(var_1.x >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x)))), !var_4.d, firstLeadingBit(arg_2));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> f32 {
    var var_0 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(2827f, arg_0.b.x)), arg_0.b.x))), _wgslsmith_f_op_f32(-arg_0.a)), ~(vec4<i32>(1i, arg_0.e | arg_0.e, _wgslsmith_clamp_i32(-20541i, 0i, 21879i), ~arg_0.e) & u_input.c), -2147483647i, vec4<i32>(countOneBits(-arg_0.e), func_1(arg_0.a, vec4<i32>(-1i) * -u_input.c, u_input.c.x, ~vec4<i32>(33399i, arg_0.e, 0i, -1i)).e, _wgslsmith_sub_i32(countOneBits(arg_0.e) & 32995i, arg_0.e), ~(7965i & _wgslsmith_mod_i32(-24084i, arg_0.e))));
    global0 = false;
    var var_1 = Struct_1(-1169f, vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2545f) - _wgslsmith_f_op_f32(arg_0.a + -338f))))), true, vec4<bool>(false && arg_1, all(arg_2), !arg_1, arg_2.x), _wgslsmith_sub_i32(~(i32(-1i) * -u_input.c.x), _wgslsmith_sub_i32(2147483647i, var_0.e | -arg_0.e)));
    var var_2 = func_1(_wgslsmith_f_op_f32(arg_0.a + var_0.b.x), ~_wgslsmith_add_vec4_i32(~vec4<i32>(var_1.e, -33697i, arg_0.e, arg_0.e), (vec4<i32>(var_0.e, 2147483647i, var_0.e, var_1.e) << (vec4<u32>(38339u, u_input.d, 0u, u_input.d) % vec4<u32>(32u))) & firstTrailingBit(vec4<i32>(26254i, u_input.c.x, u_input.c.x, 0i))), _wgslsmith_mult_i32(-arg_0.e, reverseBits(reverseBits(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c)))), _wgslsmith_mod_vec4_i32(-firstTrailingBit(-u_input.c), reverseBits(vec4<i32>(-4986i, u_input.a | 48325i, 1i, ~38524i))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1f), -593f), var_1.b, !vec2<bool>(false, _wgslsmith_f_op_f32(abs(var_1.a)) > _wgslsmith_f_op_f32(step(var_0.b.x, 636f)))));
    return var_3.x;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * -1261f));
    var var_1 = vec4<bool>(u_input.e >= u_input.d, true, (arg_0.x < _wgslsmith_f_op_f32(sign(arg_0.x))) | (u_input.a >= reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 1i), vec3<i32>(u_input.c.x, 0i, 1i)))), arg_1.d.x);
    let var_2 = _wgslsmith_clamp_i32(func_2(24976u).e, _wgslsmith_add_i32(-_wgslsmith_mod_i32(u_input.a, 0i), 49308i), arg_1.e) < func_1(-493f, _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.e, 13625i, u_input.a, arg_1.e), u_input.c, u_input.c), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.e, arg_1.e, 1i, arg_1.e), vec4<i32>(arg_1.e, 33887i, 13304i, 0i))), _wgslsmith_mult_vec4_i32(u_input.c, ~u_input.c)), -min(_wgslsmith_mod_i32(u_input.c.x, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.e, u_input.a), vec2<i32>(u_input.a, arg_1.e))), select(select(vec4<i32>(0i, u_input.c.x, arg_1.e, 52302i), countOneBits(u_input.c), vec4<bool>(arg_1.c, true, var_1.x, arg_1.c)), u_input.c, func_2(u_input.d).d)).e;
    global0 = true;
    let var_3 = arg_1;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-662f, 725f, false)), -714f)))), 1366f, _wgslsmith_f_op_f32(floor(1686f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1692f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_1(997f, vec4<i32>(u_input.a, u_input.a, 0i, u_input.a), 34202i, u_input.c), true, func_1(434f, u_input.c, u_input.c.x, u_input.c).d)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 969f))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(433f + 1169f), -755f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-181f, 594f)) + vec2<f32>(-879f, -1000f))), true, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(false, true)), u_input.e <= 1u), vec4<bool>(true, true, true, true)), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(u_input.c, -vec4<i32>(u_input.a, 28539i, 0i, 0i)), -_wgslsmith_add_i32(u_input.c.x, u_input.c.x))));
    global0 = !(_wgslsmith_f_op_f32(-var_0.b.x) < _wgslsmith_f_op_f32(func_3(~u_input.e, vec3<u32>(56882u, u_input.d << (u_input.d % 32u), 0u))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.e, 1u, vec4<u32>(_wgslsmith_sub_u32(u_input.b.x, 42553u) | u_input.d, _wgslsmith_sub_u32(43709u, u_input.e), 49185u, 1u));
}

