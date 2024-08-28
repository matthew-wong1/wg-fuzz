struct Struct_1 {
    a: bool,
    b: i32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    var var_0 = !(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))));
    let var_1 = !select(select(!vec3<bool>(true, var_0.x, false), vec3<bool>(var_0.x, false, false), select(vec3<bool>(false, false, true), !vec3<bool>(var_0.x, var_0.x, false), true)), select(select(select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, true), false), !vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, true, false)), vec3<bool>(true, false, true), vec3<bool>(!var_0.x, all(vec3<bool>(false, var_0.x, true)), true)), var_0.x);
    let var_2 = Struct_2(54118i, Struct_1(true, -15457i, select(var_1.x, true, false)), vec4<u32>(~(~reverseBits(u_input.a.x)), 4294967295u, _wgslsmith_dot_vec2_u32(abs(~u_input.a.zx), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(48923u, u_input.a.x)), vec2<u32>(4294967295u, 22086u))), u_input.b >> (~min(u_input.b, 0u) % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1198f, _wgslsmith_f_op_f32(f32(-1f) * -1317f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(413f, -1765f)), 1f, 113f) * vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1395f, -872f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1137f - -957f) + -1034f), 1046f)));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-516f, var_2.d.x, _wgslsmith_f_op_f32(select(-1000f, 199f, var_3)), 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1786f, 206f, 569f, var_2.d.x) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-762f, var_2.d.x, 409f, 1301f)))))) + var_2.d);
    return _wgslsmith_f_op_f32(var_2.d.x + 1222f);
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<bool>) -> bool {
    let var_0 = !any(select(vec4<bool>(arg_0.x, !arg_1.x, !arg_1.x, !arg_0.x), vec4<bool>(false && arg_1.x, true, true, !arg_1.x), arg_1.x));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1108f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1321f) - 1f)));
    let var_2 = u_input.a.x;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f + _wgslsmith_f_op_f32(1787f * _wgslsmith_f_op_f32(func_3())))), -1388f);
    let var_3 = true;
    return true;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    let var_0 = 69279u >> (~u_input.a.x % 32u);
    var var_1 = vec4<bool>(false, !((any(vec4<bool>(false, true, false, true)) & false) & false), any(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true)), true)) && !select(false, func_2(vec3<bool>(false, true, true), vec2<bool>(false, true)), false), !any(vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_div_u32(u_input.a.x, 72940u);
    var var_3 = Struct_3(Struct_2(1i, Struct_1(var_1.x, 0i, true), vec4<u32>(~u_input.a.x ^ (var_0 ^ var_0), ~(u_input.b ^ var_0), var_0, min(var_0, var_0)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), arg_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_0.x)), _wgslsmith_f_op_f32(func_3()), !var_1.x)), 227f)), vec2<u32>(41645u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b, _wgslsmith_add_u32(39431u, 1u)), ~firstLeadingBit(u_input.b), u_input.b)), var_1.xxx, Struct_1(true, select(1i, -37180i, all(var_1.wwz)) ^ 1i, any(select(select(vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, true, false), vec4<bool>(var_1.x, true, true, true)), !vec4<bool>(false, false, false, var_1.x), true))));
    let var_4 = -vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_3.d.b, var_3.d.b, var_3.a.a, -10334i), vec4<i32>(1402i, var_3.d.b, -1i, var_3.a.b.b)), -1i), 0i), _wgslsmith_add_i32(4925i, ~(~(-2147483647i))), var_3.a.b.b | _wgslsmith_add_i32(var_3.d.b, ~5880i));
    return var_3.d;
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> Struct_3 {
    var var_0 = !arg_0.b.c & arg_0.b.c;
    var_0 = false;
    var var_1 = arg_0;
    var_0 = true;
    var var_2 = Struct_4(arg_0.b.a & arg_0.b.a);
    return Struct_3(arg_0, vec2<u32>(u_input.b, _wgslsmith_div_u32(countOneBits(1u), firstTrailingBit(arg_0.c.x))) >> (vec2<u32>(~30678u, 1u) % vec2<u32>(32u)), vec3<bool>(4294967295u <= _wgslsmith_mod_u32(_wgslsmith_div_u32(1u, u_input.b), ~var_1.c.x), !(!(true == var_2.a)), !var_1.b.c), Struct_1(arg_0.b.c, i32(-1i) * -_wgslsmith_div_i32(arg_0.a, 1i), var_2.a));
}

fn func_5(arg_0: Struct_3) -> bool {
    let var_0 = vec2<i32>(arg_0.d.b, arg_0.a.b.b);
    var var_1 = !(!(!(!(!vec4<bool>(false, arg_0.c.x, false, true)))));
    let var_2 = func_4(arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(897f, arg_0.a.d.x)), -208f))))).a;
    var_1 = select(!vec4<bool>(false, false, var_2.b.c, var_2.c.x <= 38410u), select(!(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, var_1.x, false), vec4<bool>(true, true, arg_0.c.x, true))), select(vec4<bool>(all(var_1.wy), var_2.d.x <= var_2.d.x, func_4(Struct_2(var_0.x, Struct_1(var_2.b.c, arg_0.d.b, arg_0.a.b.a), u_input.a, vec4<f32>(var_2.d.x, 305f, arg_0.a.d.x, arg_0.a.d.x)), arg_0.a.d.x).c.x, any(var_1.wx)), vec4<bool>(func_4(Struct_2(-2147483647i, var_2.b, vec4<u32>(var_2.c.x, 0u, var_2.c.x, 46528u), var_2.d), -206f).c.x, any(vec4<bool>(false, arg_0.d.a, true, true)), select(var_2.b.c, var_1.x, arg_0.d.c), var_2.b.a != true), !vec4<bool>(true, arg_0.c.x, true, var_1.x)), true), select(!vec4<bool>(true, func_1(vec2<f32>(var_2.d.x, 1351f)).a, func_4(Struct_2(18396i, arg_0.a.b, arg_0.a.c, var_2.d), -531f).c.x, false != var_2.b.c), vec4<bool>(!(!var_2.b.a), _wgslsmith_f_op_f32(exp2(arg_0.a.d.x)) >= arg_0.a.d.x, true, !func_4(Struct_2(2147483647i, Struct_1(false, -46282i, false), vec4<u32>(4294967295u, var_2.c.x, 1u, 36614u), arg_0.a.d), var_2.d.x).d.c), select(select(vec4<bool>(var_2.b.a, true, true, arg_0.c.x), vec4<bool>(false, false, true, arg_0.d.c), vec4<bool>(false, true, var_1.x, true)), select(vec4<bool>(var_1.x, false, true, var_2.b.a), select(vec4<bool>(var_2.b.a, false, var_1.x, arg_0.c.x), vec4<bool>(true, false, true, true), vec4<bool>(false, arg_0.d.a, true, arg_0.d.c)), true), !select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(false, true, var_1.x, arg_0.a.b.a), arg_0.d.c))));
    var_1 = vec4<bool>(var_2.b.c, true, !var_1.x, arg_0.d.a);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_5(func_4(Struct_2(34849i << (0u % 32u), func_1(vec2<f32>(-107f, 1000f)), u_input.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(651f, 2052f, -869f, -1406f))), 1455f));
    var_0 = select(true, true, func_4(func_4(Struct_2(0i, Struct_1(false, 18122i, true), vec4<u32>(25059u, 35589u, u_input.a.x, u_input.a.x), vec4<f32>(-713f, -1455f, 293f, 805f)), _wgslsmith_f_op_f32(ceil(1070f))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f) + _wgslsmith_f_op_f32(555f * 751f))).c.x) | (((u_input.a.x < 1u) != true) & func_4(func_4(Struct_2(1i, Struct_1(true, -8989i, true), vec4<u32>(u_input.b, 1u, u_input.a.x, u_input.a.x), vec4<f32>(1000f, 1000f, 157f, 793f)), _wgslsmith_f_op_f32(f32(-1f) * -1324f)).a, _wgslsmith_f_op_f32(round(1065f))).d.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_4(Struct_2(0i, Struct_1(true, 2147483647i, false), u_input.a, vec4<f32>(-1095f, -582f, -105f, 504f)), -1278f).a.d.zxx) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-3150f, -778f, -624f) - vec3<f32>(1635f, -489f, -990f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(324f, 629f, -578f)))))));
    var_0 = !((~0u << ((~u_input.a.x & max(4294967295u, 9795u)) % 32u)) >= _wgslsmith_div_u32(firstTrailingBit(reverseBits(u_input.b)), ~(~u_input.b)));
    let var_2 = func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1225f)) * var_1.x), _wgslsmith_f_op_f32(round(-316f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(639f, -970f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1012f, 801f)))))).c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b << (~(~1u >> (_wgslsmith_div_u32(58783u, 112016u) % 32u)) % 32u), -35045i, u_input.b, ~u_input.b);
}

