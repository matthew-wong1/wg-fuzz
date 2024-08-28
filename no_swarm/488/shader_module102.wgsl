struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(u_input.a.x, ~(~(~vec4<u32>(64483u, 3746u, 45196u, u_input.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1086f * _wgslsmith_f_op_f32(-430f - -283f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -841f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1284f), -562f)), Struct_1(_wgslsmith_sub_i32(reverseBits(u_input.a.x) << (0u % 32u), abs(-1i)), ~vec4<u32>(0u, ~u_input.c.x, 0u, reverseBits(1u)), -766f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-463f, -1253f) + _wgslsmith_f_op_f32(1279f + -1128f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-568f, -949f, false)), -1000f) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-541f, -291f), vec2<f32>(574f, -400f))), vec2<f32>(1363f, -103f))))), Struct_1(u_input.a.x, vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.c.x, 19041u, 4294967295u), ~vec4<u32>(0u, 1u, u_input.b, 0u)), _wgslsmith_div_u32(u_input.b >> (33949u % 32u), ~67976u), _wgslsmith_div_u32(~21488u, 1u), 1u), 247f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 326f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(108f, -518f), vec2<f32>(-355f, -1566f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-515f, -448f) * vec2<f32>(433f, -617f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1078f, 386f))))), _wgslsmith_clamp_i32(-1i, u_input.a.x, -50587i), -2147483647i < _wgslsmith_dot_vec2_i32(abs(u_input.a.xz), ~u_input.a.zy));
    var var_1 = var_0.a.b.zz;
    let var_2 = vec4<i32>(u_input.a.x, u_input.a.x, ~_wgslsmith_div_i32(1i, abs(var_0.d)), (~select(var_0.c.a, 92144i, true) | var_0.a.a) << (reverseBits(var_1.x) % 32u));
    var var_3 = var_0.c.b.x;
    var_1 = ~(~abs(max(u_input.c.xy, ~u_input.c.zx)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.c.e)))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2294f)) - _wgslsmith_div_f32(arg_1.b.c, _wgslsmith_f_op_f32(-arg_1.a.d))), _wgslsmith_f_op_f32(-234f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x))), -476f, arg_0.e.x) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1225f, arg_1.a.e.x, 321f, -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.e.x, arg_1.c.d, arg_1.c.c, -1000f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1854f, -1126f, arg_0.c, arg_1.b.e.x), vec4<f32>(arg_1.a.d, arg_0.e.x, 1249f, arg_0.c), vec4<bool>(false, arg_1.e, arg_1.e, arg_1.e)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(642f, arg_1.b.c, 642f, 227f) * vec4<f32>(-634f, arg_0.d, -598f, 1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e.x, arg_1.b.d, arg_0.d, arg_1.a.c) + vec4<f32>(arg_0.d, -954f, arg_0.c, 1879f)))), _wgslsmith_f_op_f32(-arg_0.c) < 2648f)));
    var var_1 = arg_1.a.e;
    var var_2 = select(~(-_wgslsmith_add_vec2_i32(~u_input.a.xz, select(vec2<i32>(arg_1.b.a, 2147483647i), u_input.a.xx, arg_1.e))), vec2<i32>(_wgslsmith_mult_i32(42181i | abs(u_input.a.x), u_input.a.x), max(29312i, -u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1351f, -852f))) <= _wgslsmith_f_op_f32(trunc(var_0.x)));
    let var_3 = arg_1;
    var_2 = -(_wgslsmith_mult_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.a.yy, u_input.a.xy), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.c.a, 27231i), ~u_input.a.zx)) & u_input.a.yz);
    return _wgslsmith_clamp_u32(arg_0.b.x, var_3.a.b.x, u_input.b);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(1i, min(max(_wgslsmith_div_i32(18662i, -2147483647i), abs(0i)), _wgslsmith_mod_i32(~12994i, ~(-13305i)))), vec4<u32>(func_4(Struct_1(u_input.a.x, _wgslsmith_sub_vec4_u32(vec4<u32>(57439u, 4294967295u, 32488u, 54023u), vec4<u32>(34090u, u_input.b, u_input.c.x, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -708f), _wgslsmith_f_op_f32(-1000f - 2266f), _wgslsmith_f_op_vec2_f32(func_3())), Struct_2(Struct_1(u_input.a.x, vec4<u32>(1u, 1168u, u_input.c.x, u_input.c.x), -1897f, 188f, vec2<f32>(169f, -1296f)), Struct_1(1i, vec4<u32>(4294967295u, 16435u, u_input.b, u_input.c.x), 1000f, -811f, vec2<f32>(1322f, 873f)), Struct_1(u_input.a.x, vec4<u32>(0u, 39866u, 4294967295u, 1u), 889f, -1060f, vec2<f32>(1187f, 659f)), ~u_input.a.x, all(vec2<bool>(false, true))), reverseBits(u_input.c.x << (u_input.c.x % 32u))), 42116u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 30359u, 15516u, 0u), vec4<u32>(43990u, 4294967295u, 5070u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.c.x, u_input.b, 34806u)), vec4<u32>(10921u, 1u, 0u, 0u) ^ vec4<u32>(u_input.b, 1u, 1773u, 6218u), ~vec4<u32>(u_input.b, 0u, 1u, 37184u)), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(78457u, u_input.b, 56204u, u_input.c.x), vec4<u32>(u_input.b, u_input.b, 104300u, 31853u), false), _wgslsmith_mult_vec4_u32(vec4<u32>(78501u, u_input.b, 18999u, u_input.c.x), vec4<u32>(u_input.b, u_input.b, 0u, u_input.c.x)), max(vec4<u32>(u_input.b, u_input.b, u_input.c.x, 21931u), vec4<u32>(8149u, 5914u, 1u, u_input.b)))), func_4(Struct_1(1i, ~vec4<u32>(1u, 4294967295u, u_input.b, 4294967295u), -1115f, _wgslsmith_f_op_f32(sign(1337f)), vec2<f32>(1012f, 458f)), Struct_2(Struct_1(u_input.a.x, vec4<u32>(u_input.c.x, u_input.c.x, 55967u, u_input.c.x), 102f, -1085f, vec2<f32>(211f, 1000f)), Struct_1(0i, vec4<u32>(u_input.c.x, u_input.b, 4294967295u, u_input.c.x), -839f, -335f, vec2<f32>(-372f, -1702f)), Struct_1(u_input.a.x, vec4<u32>(u_input.b, 30013u, u_input.c.x, 8786u), -2014f, 300f, vec2<f32>(-122f, -1609f)), u_input.a.x | -2147483647i, false), _wgslsmith_sub_u32(~1u, 25166u))), 1839f, -2135f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(778f, 145f) * vec2<f32>(1000f, 123f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1309f, 1074f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(594f, -486f))))));
    let var_1 = ~var_0.b;
    var var_2 = 0u;
    var_2 = ~25084u;
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a.x, ~var_0.a, 8689i & u_input.a.x, _wgslsmith_clamp_i32(-var_0.a, var_0.a, u_input.a.x)), ~(vec4<i32>(-1i) * -(vec4<i32>(var_0.a, var_0.a, u_input.a.x, -2147483647i) ^ vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x))));
    return Struct_1(_wgslsmith_mult_i32(abs(_wgslsmith_div_i32(firstLeadingBit(0i), var_0.a)), -1i), vec4<u32>(func_4(Struct_1(_wgslsmith_mod_i32(-40708i, -72386i), var_0.b, -814f, _wgslsmith_f_op_f32(min(var_0.e.x, 1091f)), var_0.e), Struct_2(var_0, var_0, Struct_1(u_input.a.x, var_1, var_0.e.x, -614f, var_0.e), abs(var_0.a), var_0.c == -225f), max(var_1.x, 1u)), var_0.b.x, countOneBits(~1u), u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(floor(var_0.d))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(763f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1069f), -431f, true))), 819f, (true || all(vec4<bool>(true, true, false, true))) & true)), var_0.e);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = vec4<u32>(42158u, arg_0.b.x, func_2().b.x, u_input.c.x);
    var var_1 = vec4<bool>(select(arg_1.e, any(!(!vec2<bool>(arg_1.e, arg_1.e))), arg_1.e), false, any(vec3<bool>(false, !arg_1.e && !arg_1.e, arg_1.e)), (all(select(vec4<bool>(arg_1.e, true, false, arg_1.e), vec4<bool>(arg_1.e, false, arg_1.e, true), vec4<bool>(false, false, true, false))) || arg_1.e) && arg_1.e);
    var var_2 = !var_1.x;
    var var_3 = arg_1.b.d;
    var_2 = true;
    return _wgslsmith_f_op_vec2_f32(-func_2().e);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_5(Struct_1(abs(-arg_0.a), ~vec4<u32>(8779u, 1u, arg_0.b.x ^ 0u, ~arg_3), -580f, arg_0.e.x, _wgslsmith_f_op_vec2_f32(trunc(arg_0.e))), Struct_2(func_2(), func_2(), func_2(), _wgslsmith_div_i32(u_input.a.x, ~u_input.a.x), true)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-250f, -700f) * arg_0.e.x), -1055f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(-245f * var_0.x))) - _wgslsmith_f_op_f32(1000f * arg_0.e.x))));
    let var_2 = ~min(1u, func_4(arg_0, Struct_2(func_2(), func_2(), Struct_1(-2147483647i, arg_0.b, -305f, -1462f, vec2<f32>(arg_0.c, var_1.x)), u_input.a.x, true), _wgslsmith_div_u32(func_2().b.x, 0u)));
    var var_3 = func_2();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * var_0.x);
}

fn func_6(arg_0: i32, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = Struct_1(select(u_input.a.x, arg_0, all(vec4<bool>(true, true, true, true))), var_0.b, _wgslsmith_div_f32(var_0.e.x, arg_1.x), _wgslsmith_f_op_f32(-1145f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1683f) + _wgslsmith_f_op_f32(sign(var_0.e.x))) * 407f)), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(860f))), arg_1.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.e)))))));
    var var_2 = ~(~23997i);
    var var_3 = true;
    var_2 = -min(~arg_0, -arg_0) ^ 0i;
    return Struct_2(var_0, Struct_1(reverseBits(_wgslsmith_div_i32(u_input.a.x, var_0.a)) | 21901i, func_2().b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_vec2_f32(func_3()).x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(arg_1.zy))))))), func_2(), -36882i | countOneBits(var_0.a), !(_wgslsmith_mult_i32(var_0.a, 2147483647i) < var_0.a) || true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    let var_1 = func_6(-_wgslsmith_mult_i32(abs(1i), 40915i), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-444f - -128f))), _wgslsmith_f_op_f32(func_1(Struct_1(-60553i, vec4<u32>(0u, u_input.c.x, 0u, u_input.b), -178f, 526f, vec2<f32>(453f, -1130f)), -vec2<i32>(u_input.a.x, u_input.a.x), 805f, u_input.b)), -1544f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1602f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(-1170f, 523f, true)), 1f)), 1f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a.d * var_1.a.d))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.c), _wgslsmith_f_op_f32(-1967f * 195f)))) - _wgslsmith_f_op_vec2_f32(func_5(var_1.a, var_1)));
    var_0 = _wgslsmith_clamp_u32(u_input.c.x, ~func_2().b.x, _wgslsmith_mult_u32(u_input.c.x, _wgslsmith_add_u32(65904u, max(firstLeadingBit(u_input.b), 1u))));
    var_0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(~(~var_1.c.b.ywz), max(u_input.c, var_1.a.b.zwx ^ u_input.c)), reverseBits(22093u), u_input.c.x), 26404u);
    var var_3 = func_6(-firstTrailingBit(~2147483647i) & (0i & (-1i & _wgslsmith_sub_i32(var_1.b.a, var_1.d))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1412f, var_1.b.d))), -1055f, _wgslsmith_f_op_f32(var_2.x + -1463f)));
    let x = u_input.a;
    s_output = StorageBuffer(4803u, 26778u);
}

