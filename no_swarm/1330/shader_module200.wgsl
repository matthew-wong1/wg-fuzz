struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1789f), -1725f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(610f - -1780f)))));
    let var_1 = 32962u << ((u_input.a.x & u_input.a.x) % 32u);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, var_0.x, var_0.x))), vec3<f32>(632f, _wgslsmith_f_op_f32(-var_0.x), var_0.x)))));
    let var_2 = -5436i;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.zz) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, -2308f))))));
    return var_0.yy;
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = true;
    var_0 = true;
    let var_1 = 33427i <= select(u_input.b.x, -u_input.b.x, !arg_1);
    var var_2 = _wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_mod_vec2_i32(max(u_input.b.yx, vec2<i32>(1i, u_input.b.x)) & firstLeadingBit(u_input.b.wz), vec2<i32>(-5992i, 1i)), arg_0.x, u_input.b.x));
    let var_3 = select(select(select(select(vec2<bool>(var_1, var_1), select(vec2<bool>(true, true), vec2<bool>(true, arg_1), vec2<bool>(var_1, true)), vec2<bool>(true, false)), vec2<bool>(true, var_1 || false), vec2<bool>(all(vec3<bool>(true, false, arg_1)), true)), select(!vec2<bool>(false, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(arg_1, false), true), true), !(!select(vec2<bool>(true, var_1), vec2<bool>(false, arg_1), vec2<bool>(false, false)))), select(select(!select(vec2<bool>(false, var_1), vec2<bool>(arg_1, arg_1), false), vec2<bool>(var_2.x > 129f, true), select(vec2<bool>(arg_1, arg_1), select(vec2<bool>(arg_1, false), vec2<bool>(true, arg_1), vec2<bool>(true, true)), var_2.x <= var_2.x)), select(!select(vec2<bool>(true, var_1), vec2<bool>(true, true), var_1), vec2<bool>(true, false), false | arg_1), select(select(select(vec2<bool>(var_1, true), vec2<bool>(var_1, true), vec2<bool>(true, true)), select(vec2<bool>(false, arg_1), vec2<bool>(false, var_1), vec2<bool>(var_1, arg_1)), vec2<bool>(arg_1, false)), select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, false), vec2<bool>(var_1, true)), vec2<bool>(var_1, arg_1), true), var_2.x == _wgslsmith_f_op_f32(-867f + -647f))), !(!(u_input.a.x >= 1u)));
    return Struct_2(Struct_1(abs(abs(abs(vec4<u32>(27229u, 1u, 1u, u_input.a.x)))), 1i, vec2<i32>(_wgslsmith_sub_i32(select(2147483647i, u_input.b.x, var_1), -15969i ^ u_input.b.x), -u_input.b.x), !var_1, vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.x)), 444f, _wgslsmith_f_op_f32(abs(var_2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-613f, var_2.x))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(681f, var_2.x), vec2<f32>(var_2.x, -369f), true))))))), select(var_3, vec2<bool>(all(vec3<bool>(true, false, false)) || any(vec3<bool>(true, var_1, var_1)), arg_1), vec2<bool>(true, false)), Struct_1(~u_input.a, ~u_input.b.x, u_input.b.wz, false, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1566f, -191f, 584f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(587f, 1798f, 1000f) + vec3<f32>(1000f, 1292f, var_2.x)), vec3<f32>(var_2.x, 234f, 614f))))));
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_3(firstLeadingBit(1u), Struct_1(vec4<u32>(~0u, _wgslsmith_mult_u32(u_input.a.x, arg_0.a), ~(u_input.a.x >> (u_input.a.x % 32u)), _wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(arg_0.c.d.a.ww, vec2<u32>(0u, 1u)))), abs(max(-1i, select(-2147483647i, 27082i, arg_0.b.d))), vec2<i32>(u_input.b.x << (1u % 32u), _wgslsmith_add_i32(u_input.b.x, u_input.b.x)), arg_0.d.e.x != _wgslsmith_f_op_f32(ceil(-787f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.e.x, -1528f, arg_0.b.e.x) + vec3<f32>(arg_0.e.e.x, arg_0.c.d.e.x, 1000f)) + arg_0.d.e)), func_2(vec2<u32>(u_input.a.x, arg_0.c.d.a.x), all(select(!vec3<bool>(false, arg_0.c.a.d, arg_0.d.d), select(vec3<bool>(true, false, true), vec3<bool>(arg_0.b.d, arg_0.b.d, false), vec3<bool>(arg_0.c.d.d, true, false)), false))), Struct_1(arg_0.e.a | arg_0.c.a.a, -1i, select(-(~vec2<i32>(arg_0.d.c.x, arg_0.c.a.c.x)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(arg_0.e.c.x, u_input.b.x)), ~vec2<i32>(1i, arg_0.e.c.x), ~vec2<i32>(arg_0.c.a.b, u_input.b.x)), func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0.d.a.x, 1u), arg_0.b.a.yz), any(vec3<bool>(arg_0.b.d, false, false))).c), (arg_0.e.c.x << (~1u % 32u)) == -5254i, _wgslsmith_f_op_vec3_f32(arg_0.d.e * _wgslsmith_f_op_vec3_f32(-func_2(vec2<u32>(13457u, u_input.a.x), true).d.e))), arg_0.e);
    var var_1 = _wgslsmith_add_u32(abs(~1u), ~(arg_0.e.a.x & ~(~43937u)));
    let var_2 = func_2(_wgslsmith_mult_vec2_u32(vec2<u32>(73974u, u_input.a.x), ~(~vec2<u32>(4294967295u, arg_0.d.a.x)) ^ vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(0u, 4294967295u))), var_0.c.c.x).d;
    var_1 = ~min(_wgslsmith_add_u32(~_wgslsmith_mod_u32(1u, var_0.d.a.x), ~59336u), min(568u, ~0u));
    let var_3 = var_0;
    return 20769u & select(_wgslsmith_sub_u32(var_2.a.x, countOneBits(~0u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~var_0.e.a.x, arg_0.c.d.a.x), _wgslsmith_mod_u32(~arg_0.b.a.x, abs(21407u))), any(vec4<bool>(true, arg_0.e.d, any(arg_0.c.c), false)));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = !(!vec3<bool>(!(u_input.a.x == u_input.a.x), !any(vec3<bool>(true, false, false)), true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-842f + 484f), -854f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-804f + _wgslsmith_f_op_f32(round(1805f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(347f)), 467f))));
    let var_2 = func_2(~u_input.a.zy, false);
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(1352f, -311f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f) + _wgslsmith_f_op_f32(abs(var_2.a.e.x)))) * var_2.a.e.x), 950f));
    var var_4 = func_2(arg_1.xz, var_2.a.d).d;
    return func_2(arg_1.zx, func_1(Struct_3(39984u, var_2.d, Struct_2(var_2.d, vec2<f32>(1228f, -164f), vec2<bool>(var_2.d.d, true), Struct_1(var_4.a, arg_0.x, var_4.c, false, var_2.a.e)), func_2(vec2<u32>(var_4.a.x, u_input.a.x), true).a, func_2(vec2<u32>(arg_1.x, var_4.a.x), var_4.d).d)) >= _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a.x & var_4.a.x, ~u_input.a.x), 46202u, _wgslsmith_div_u32(3575u, 29254u))).d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>((u_input.a.x << (31516u % 32u)) ^ ~u_input.a.x, ~firstLeadingBit(3673u), u_input.a.x, u_input.a.x), vec4<u32>(~u_input.a.x ^ u_input.a.x, u_input.a.x, max(u_input.a.x, ~0u), func_1(Struct_3(39109u, Struct_1(u_input.a, u_input.b.x, u_input.b.wy, false, vec3<f32>(-1015f, -706f, 386f)), Struct_2(Struct_1(u_input.a, u_input.b.x, u_input.b.xx, false, vec3<f32>(-862f, -1312f, -798f)), vec2<f32>(-1429f, 215f), vec2<bool>(false, false), Struct_1(u_input.a, u_input.b.x, vec2<i32>(-23230i, u_input.b.x), false, vec3<f32>(583f, -325f, 684f))), Struct_1(u_input.a, u_input.b.x, u_input.b.xx, false, vec3<f32>(149f, 563f, 861f)), Struct_1(u_input.a, u_input.b.x, vec2<i32>(0i, u_input.b.x), true, vec3<f32>(-396f, 272f, -297f)))) >> (_wgslsmith_mod_u32(u_input.a.x, 3865u) % 32u))), countOneBits(select(-(u_input.b ^ vec4<i32>(u_input.b.x, 13176i, u_input.b.x, 2147483647i)), vec4<i32>(i32(-1i) * -1i, 1i, -10091i, _wgslsmith_mult_i32(-1i, -1i)), true)));
    var var_1 = ~(~vec2<u32>(u_input.a.x, abs(_wgslsmith_mod_u32(var_0.a.x, var_0.a.x))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.e.x, _wgslsmith_f_op_f32(-276f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e.x + var_0.e.x))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1743f + -514f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.e.x * var_0.e.x), _wgslsmith_f_op_f32(ceil(var_0.e.x)))))) * 1177f));
    var var_4 = var_0.a.xww;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, u_input.b.x);
}

