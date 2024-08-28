struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = (_wgslsmith_mod_u32(~0u, arg_0.a) <= _wgslsmith_sub_u32(_wgslsmith_mult_u32(~1u, ~4294967295u), 0u)) && true;
    var_0 = all(!(!vec4<bool>(false, any(vec3<bool>(true, false, true)), true, true)));
    let var_1 = max(0u, arg_0.a);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(347f + 1608f), _wgslsmith_f_op_f32(873f + -1000f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1214f, 2476f, true))))) - 1078f));
    var_0 = !(!select(~0u == (var_1 | arg_0.a), false, true));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, -999f, -931f, -388f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-394f, 1083f, -967f, -656f), vec4<f32>(269f, 448f, var_2, 850f), false))) * vec4<f32>(_wgslsmith_f_op_f32(-var_2), 850f, _wgslsmith_f_op_f32(-190f - var_2), _wgslsmith_f_op_f32(var_2 * -202f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(2323f)), 612f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -465f) - _wgslsmith_f_op_f32(ceil(-2872f))), -992f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-170f, _wgslsmith_f_op_f32(-429f - -752f), _wgslsmith_div_f32(1455f, -850f), -751f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1439f, 1131f, 1572f, 1728f)) + _wgslsmith_f_op_vec4_f32(func_3(Struct_3(3804u)))), vec4<bool>(true, true, true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(150f, 932f, -2350f, 1677f))) + vec4<f32>(-659f, 1000f, -399f, 1686f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(384f, -682f, -874f, -883f) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-549f, 2560f, -943f, -737f), vec4<f32>(574f, -231f, -178f, -1000f))))), vec4<bool>(true, true, any(vec2<bool>(false, false)), any(vec3<bool>(false, true, true)) && true))));
    let var_1 = Struct_1(true, var_0.xzx);
    let var_2 = Struct_3(_wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(82483u, 14812u, 72325u, 0u), select(vec4<u32>(1u, 17239u, 4294967295u, 4294967295u), vec4<u32>(78929u, 58442u, 1u, 114878u), var_1.a)), 0u));
    let var_3 = u_input.a;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2074f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_f32(-2399f - _wgslsmith_f_op_f32(-1227f + -659f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(961f, 492f, any(vec2<bool>(var_1.a, false))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(floor(var_0.x)))), _wgslsmith_f_op_f32(floor(var_1.b.x)));
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> f32 {
    let var_0 = arg_0;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(2025f, var_0.d.x) - 1132f)), _wgslsmith_f_op_f32(f32(-1f) * -2293f))), _wgslsmith_f_op_f32(-func_2().b.x));
    var_1 = vec2<f32>(1000f, 1000f);
    var var_2 = Struct_2(~_wgslsmith_mod_vec3_i32(~vec3<i32>(-1i, 2147483647i, 28267i), vec3<i32>(u_input.a, 1i, u_input.a) & var_0.a) >> (countOneBits(_wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(var_0.b, 8068u, 48141u)), ~vec3<u32>(var_0.b, 1u, arg_0.b), abs(vec3<u32>(arg_0.b, 25347u, 1u)))) % vec3<u32>(32u)), max(select(arg_0.b, ~(~var_0.b), true), ~var_0.b), Struct_1(arg_1.a, _wgslsmith_div_vec3_f32(var_0.c.b, vec3<f32>(-1687f, _wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_div_f32(var_1.x, 972f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_0.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(var_0.d))), select(!vec4<bool>(var_0.c.a, true, var_0.c.a, arg_1.a), select(vec4<bool>(var_0.c.a, arg_1.a, true, var_0.c.a), vec4<bool>(var_0.c.a, false, false, arg_1.a), vec4<bool>(false, var_0.c.a, var_0.c.a, false)), true)))));
    var var_3 = func_2();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x + 500f) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_vec4_f32(func_3(Struct_3(var_2.b))).x), arg_0.c.b.x));
}

fn func_1() -> u32 {
    var var_0 = ~0u;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(vec3<i32>(~48833i, _wgslsmith_mod_i32(2008i, u_input.a), u_input.a), abs(~4294967295u), func_2(), _wgslsmith_f_op_vec4_f32(-vec4<f32>(633f, -1949f, 664f, 507f))), Struct_1(all(vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(839f + 428f), -2862f, _wgslsmith_f_op_f32(602f + 2071f))))) - 621f);
    var var_2 = true;
    var var_3 = vec4<i32>(-u_input.a, u_input.a, 1i, 2147483647i);
    var_0 = 95u;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -684f) + -596f));
    let var_1 = func_1() | 0u;
    var var_2 = Struct_2(_wgslsmith_add_vec3_i32(min(select(vec3<i32>(u_input.a, -2018i, u_input.a), vec3<i32>(-14415i, -29122i, u_input.a), false), vec3<i32>(u_input.a, u_input.a, -2147483647i)) >> (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~vec3<i32>(u_input.a, _wgslsmith_mult_i32(2147483647i, -1i), _wgslsmith_mod_i32(u_input.a, u_input.a))), 73476u, func_2(), vec4<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(477f - -206f), 356f, var_0));
    var var_3 = select(vec4<bool>(var_2.c.a, true, false, false), select(vec4<bool>(!(var_2.a.x <= 0i), var_2.a.x <= ~(-53681i), select(any(vec2<bool>(var_2.c.a, var_2.c.a)), func_2().a, var_2.c.a), true), select(vec4<bool>(true, true, all(vec2<bool>(true, false)), true), !select(vec4<bool>(var_2.c.a, var_2.c.a, var_2.c.a, var_2.c.a), vec4<bool>(var_2.c.a, var_2.c.a, false, var_2.c.a), var_2.c.a), !(!vec4<bool>(var_2.c.a, false, var_2.c.a, var_2.c.a))), !vec4<bool>(true, true, -32377i < var_2.a.x, var_2.c.a)), select(vec4<bool>(!(!var_2.c.a), true, ~var_2.b == var_1, true), !(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(var_2.c.a, var_2.c.a, false, var_2.c.a))), vec4<bool>(_wgslsmith_f_op_f32(trunc(var_0)) != -264f, !var_2.c.a | !var_2.c.a, all(select(vec3<bool>(false, true, true), vec3<bool>(true, var_2.c.a, var_2.c.a), vec3<bool>(true, var_2.c.a, var_2.c.a))), false)));
    var var_4 = Struct_3(1u);
    let var_5 = func_2();
    let var_6 = vec3<f32>(_wgslsmith_f_op_f32(1000f - var_0), -1215f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-526f)), var_0), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_5.b.x, _wgslsmith_f_op_f32(step(-276f, var_0)))), false)));
    var var_7 = _wgslsmith_mod_u32(var_1, ~var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(vec3<i32>(var_2.a.x, -11694i, u_input.a), 1u, var_5, _wgslsmith_f_op_vec4_f32(select(var_2.d, var_2.d, vec4<bool>(var_2.c.a, var_5.a, var_3.x, var_3.x)))), Struct_1(!var_5.a, var_5.b)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -859f)), 931f));
}

