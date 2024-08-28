struct Struct_1 {
    a: vec4<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> i32 {
    let var_0 = Struct_2(2147483647i, Struct_1(arg_3.b.a ^ arg_3.b.a, 1u << (_wgslsmith_clamp_u32(~arg_0, 1u, ~0u) % 32u)), 4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_3.e.x, arg_3.d.x, arg_3.e.x)))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(arg_3.e, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-588f, -1743f), vec2<f32>(127f, -1086f), true))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_3.e * arg_3.d.zx)))))));
    var var_1 = arg_3.b;
    var var_2 = Struct_2(_wgslsmith_mult_i32(-(~countOneBits(2147483647i)), i32(-1i) * -1i), Struct_1(var_1.a, ~firstLeadingBit(arg_2) | ~arg_0), 32460u, var_0.d, vec2<f32>(-1000f, -992f));
    var var_3 = var_1.a & _wgslsmith_mult_vec4_i32(-(~vec4<i32>(-12552i, 15153i, var_2.a, u_input.b.x)), countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-13368i, arg_1.a.x, var_2.b.a.x, 1i), vec4<i32>(27139i, u_input.b.x, -2147483647i, -51895i))) << (~vec4<u32>(1u, var_1.b, var_2.c, 61424u) % vec4<u32>(32u)));
    var_3 = arg_3.b.a;
    return -2147483647i;
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(283f + arg_0)))));
    let var_1 = Struct_1(vec4<i32>(u_input.b.x, _wgslsmith_mult_i32(0i, u_input.b.x), -33208i, _wgslsmith_clamp_i32(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -1i, -60018i), vec4<i32>(39203i, 32045i, u_input.b.x, 1i)) << (~u_input.a % 32u), -33550i)), u_input.a);
    let var_2 = !(!vec4<bool>(true, false, all(select(vec2<bool>(true, true), vec2<bool>(false, true), false)), true));
    let var_3 = Struct_2(1740i, Struct_1(vec4<i32>(select(_wgslsmith_mod_i32(-47939i, u_input.b.x), var_1.a.x | u_input.b.x, var_2.x || false), func_3(~0u, Struct_1(var_1.a, var_1.b), 1094u, Struct_2(1i, var_1, 1u, vec3<f32>(-671f, -1000f, 309f), vec2<f32>(var_0.x, -948f))), -1i, -1i >> (reverseBits(var_1.b) % 32u)), 0u), firstTrailingBit(_wgslsmith_clamp_u32(~var_1.b, 43944u ^ u_input.a, u_input.a << (u_input.a % 32u)) & abs(19632u & u_input.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1588f, 957f, 121f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, -515f, -1152f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(2314f)), arg_0, _wgslsmith_f_op_f32(round(arg_0))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1355f, -895f, var_0.x), vec3<f32>(640f, var_0.x, arg_0))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-333f + _wgslsmith_f_op_f32(trunc(var_0.x))), var_0.x) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1373f, 915f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-905f, arg_0))))));
    let var_4 = _wgslsmith_mult_vec4_u32(firstLeadingBit(~firstLeadingBit(vec4<u32>(u_input.a, 72689u, var_3.b.b, 4294967295u) ^ vec4<u32>(4294967295u, 57183u, u_input.a, var_1.b))), vec4<u32>(0u, ~reverseBits(~56894u), 0u, ~var_1.b));
    return Struct_2(_wgslsmith_div_i32(u_input.b.x, -45871i), var_1, 0u, vec3<f32>(_wgslsmith_f_op_f32(var_3.e.x + -1938f), _wgslsmith_f_op_f32(sign(-318f)), 1050f), _wgslsmith_f_op_vec2_f32(-var_3.d.zz));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<f32>, arg_3: bool) -> vec4<bool> {
    var var_0 = func_2(792f);
    var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, func_2(_wgslsmith_f_op_f32(arg_2.x * 826f)).e.x))));
    var_0 = func_2(650f);
    var var_1 = var_0.e.x;
    let var_2 = !vec3<bool>(any(vec4<bool>(any(vec3<bool>(arg_3, arg_3, arg_3)), false, all(vec2<bool>(true, true)), true)), _wgslsmith_f_op_f32(floor(-639f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(228f))), false);
    return select(vec4<bool>(var_2.x, !any(!vec2<bool>(var_2.x, arg_3)), var_2.x, !(!var_2.x || true)), vec4<bool>(all(select(vec2<bool>(var_2.x, arg_3), var_2.xx, arg_3)) == (var_0.b.b == ~u_input.a), var_2.x, arg_1 >= 2147483647i, all(select(!var_2, vec3<bool>(false, arg_3, arg_3), !vec3<bool>(false, true, var_2.x)))), any(!vec4<bool>(!arg_3, arg_1 >= arg_1, 1043f > var_0.d.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(func_1(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-349f, 958f) * vec2<f32>(1020f, 1000f)))), true)), all(vec3<bool>(true, true, true)), false);
    var var_1 = vec2<i32>(~_wgslsmith_dot_vec4_i32(func_2(_wgslsmith_f_op_f32(abs(131f))).b.a, -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, 74354i, 2147483647i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -42799i, 0i))), ~_wgslsmith_dot_vec2_i32(u_input.b, abs(vec2<i32>(39704i, -20938i))));
    var_1 = vec2<i32>(-1i) * -u_input.b;
    var_1 = -func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2429f, -976f) * _wgslsmith_f_op_f32(floor(-1700f))), _wgslsmith_div_f32(-1024f, 1366f))).b.a.wx;
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-458f, -1000f)));
    var_1 = vec2<i32>(2147483647i, _wgslsmith_sub_i32(var_1.x, -3570i));
    let var_3 = Struct_1(-_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_add_i32(var_1.x, var_1.x), ~u_input.b.x, ~2147483647i), vec4<i32>(var_1.x, -27609i, 0i, -u_input.b.x)), u_input.a | u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(~select(max(var_3.a.zxy, vec3<i32>(var_3.a.x, 0i, -18200i)), func_2(_wgslsmith_f_op_f32(-var_2.x)).b.a.wxw, var_0));
}

