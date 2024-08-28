struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: bool, arg_1: u32) -> Struct_2 {
    return Struct_2(u_input.a.x);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_1, arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-358f, arg_1, true))))))), ~(~u_input.b), select(select(arg_2.zwx, arg_0.wxx, true), select(select(select(arg_0.zzz, vec3<bool>(false, arg_0.x, false), arg_2.xwx), !vec3<bool>(true, arg_0.x, arg_2.x), arg_1 >= arg_1), vec3<bool>(all(arg_2.yw), true, arg_2.x), false), select(arg_2.wxx, select(vec3<bool>(true, arg_2.x, true), arg_2.yxy, select(arg_2.xzz, arg_0.wwx, false)), any(select(vec3<bool>(arg_0.x, true, false), arg_2.zzx, arg_0.x)))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(round(var_0.a)), u_input.b, !vec3<bool>(!arg_0.x, arg_2.x, !arg_0.x || var_0.c.x));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, _wgslsmith_f_op_f32(var_0.a.x - 745f), -1322f, _wgslsmith_div_f32(var_0.a.x, var_0.a.x)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_1, -2542f, var_0.a.x), vec4<f32>(-642f, arg_1, 522f, 1271f))), vec4<f32>(-2129f, arg_1, -172f, var_0.a.x), true))) + var_0.a), _wgslsmith_sub_u32(var_0.b, abs(_wgslsmith_clamp_u32(18922u << (u_input.b % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(81047u, var_0.b, 0u, u_input.b)), 4294967295u))), vec3<bool>(!var_0.c.x, true, all(arg_0.xwz) | !all(vec2<bool>(false, var_0.c.x))));
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_0.a.xx, vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(ceil(arg_1))), !vec2<bool>(arg_0.x, var_0.c.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(2034f, 1653f), var_0.a.zy), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(var_0.a.yy)), _wgslsmith_f_op_vec2_f32(step(var_0.a.xx, vec2<f32>(var_0.a.x, arg_1))))))), var_0.c.yz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(min(-1088f, var_0.a.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -173f) - vec2<f32>(var_0.a.x, var_0.a.x)) + _wgslsmith_f_op_vec2_f32(round(var_0.a.ww))) - vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x))))));
    var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, 850f, -1529f, var_0.a.x), vec4<f32>(arg_1, arg_1, var_0.a.x, var_1.x), vec4<bool>(true, false, false, arg_2.x))), vec4<f32>(var_1.x, var_1.x, arg_1, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.a + vec4<f32>(arg_1, arg_1, -1649f, -613f))), true))), select(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, u_input.b, var_0.b), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 12857u, u_input.b), vec3<u32>(u_input.b, u_input.b, var_0.b))), _wgslsmith_div_u32(countOneBits(~68181u), var_0.b), min(reverseBits(arg_3.a), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)) > _wgslsmith_div_i32(u_input.a.x & 0i, arg_3.a)), !select(vec3<bool>(false, true, arg_2.x), vec3<bool>(all(vec2<bool>(arg_2.x, arg_0.x)), true, true), !select(vec3<bool>(true, var_0.c.x, arg_2.x), arg_2.wxz, arg_2.x)));
    return firstLeadingBit(13220u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: f32, arg_3: vec2<bool>) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, u_input.a.x);
    let var_1 = Struct_1(arg_1.a, ~arg_1.b, vec3<bool>(true, !arg_1.c.x, ~_wgslsmith_mod_u32(arg_1.b, 17708u) <= arg_1.b));
    let var_2 = -_wgslsmith_mult_i32(1i, _wgslsmith_sub_i32(~(~var_0), -2147483647i));
    let var_3 = -1i;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_1.a + _wgslsmith_f_op_vec4_f32(-vec4<f32>(541f, 766f, arg_2, arg_2))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1297f))), arg_2, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(472f * 795f))), arg_3.x & select(true, true, var_1.c.x || true))), reverseBits(~_wgslsmith_sub_u32(arg_0, 51183u)), select(!(!select(var_1.c, vec3<bool>(arg_1.c.x, arg_1.c.x, true), vec3<bool>(false, arg_1.c.x, arg_1.c.x))), !var_1.c, vec3<bool>(var_1.c.x & true, all(!vec4<bool>(true, var_1.c.x, var_1.c.x, true)), !all(vec2<bool>(var_1.c.x, arg_1.c.x)))));
    return Struct_2(var_0);
}

fn func_1(arg_0: u32, arg_1: vec3<u32>) -> f32 {
    var var_0 = 1586f;
    var var_1 = _wgslsmith_f_op_f32(962f * _wgslsmith_f_op_f32(f32(-1f) * -1217f));
    let var_2 = vec4<i32>(1i, ~(-1i), u_input.a.x, 5576i);
    var_0 = 173f;
    var var_3 = func_4(u_input.b, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-417f, 1408f, -365f, -1000f), vec4<f32>(1000f, -1317f, 1866f, 498f))))), func_3(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true), false), 784f, vec4<bool>(true, true, true, false), func_2(false, firstTrailingBit(arg_0))), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(sign(1462f)), vec2<bool>(true, true));
    return 1f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-229f, 369f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1848f - 500f) * _wgslsmith_f_op_f32(f32(-1f) * -738f)) + _wgslsmith_f_op_f32(func_1(~u_input.b, countOneBits(vec3<u32>(u_input.b, 0u, u_input.b))))));
    var var_1 = reverseBits(_wgslsmith_mult_i32(-countOneBits(u_input.a.x << (u_input.b % 32u)), -_wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, u_input.a.x), vec2<i32>(u_input.a.x, 0i), true), vec2<i32>(77i, 1i) << (vec2<u32>(u_input.b, 42647u) % vec2<u32>(32u)))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2624f, -1000f, 750f, 1484f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(846f, -1262f, 168f, -594f))) - vec4<f32>(1f, 1f, 1f, 1f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(824f, 888f, 2083f, 304f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1049f, -1358f, -317f, -1000f)))))), ~28418u, select(vec3<bool>(true, var_0, true), select(select(vec3<bool>(var_0, var_0, true), !vec3<bool>(var_0, var_0, var_0), !vec3<bool>(false, true, var_0)), vec3<bool>(u_input.a.x >= 9673i, any(vec3<bool>(true, true, false)), !var_0), vec3<bool>(!var_0, true, u_input.a.x < u_input.a.x)), var_0));
    var_1 = 1i ^ u_input.a.x;
    var_1 = ~reverseBits(-15209i) >> (firstTrailingBit(select(4294967295u, var_2.b, !var_0 && (var_2.c.x & var_0))) % 32u);
    var var_3 = Struct_2(u_input.a.x);
    let var_4 = u_input.a;
    let var_5 = vec3<i32>(u_input.a.x ^ 25039i, _wgslsmith_add_i32(var_4.x << (var_2.b % 32u), _wgslsmith_div_i32(1i, max(var_3.a, -1i)) << ((u_input.b << (var_2.b % 32u)) % 32u)), u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.a.x * var_2.a.x))), var_2.a.yxz, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_5.x, var_5.x, var_5.x >> (var_2.b % 32u), -2451i)), firstTrailingBit(~(var_4 & var_4))), firstLeadingBit(~(~select(vec4<u32>(10076u, 631u, 104304u, 0u), vec4<u32>(4294967295u, 4745u, 33336u, 0u), vec4<bool>(var_0, var_0, true, false)))));
}

