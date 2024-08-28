struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: f32, arg_1: vec4<bool>, arg_2: f32, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = ~_wgslsmith_mult_u32(1u, ~(1u >> (u_input.a.x % 32u)));
    var var_1 = ~(~select(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 71595u, var_0, var_0), vec4<u32>(u_input.b, var_0, u_input.d, 43990u), vec4<u32>(u_input.d, 40449u, var_0, u_input.d)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-77771i, -1782i, u_input.c, u_input.c), ~vec4<i32>(65967i, u_input.c, u_input.c, u_input.c)), 52738u < (441u ^ u_input.d)));
    let var_2 = Struct_1(vec3<u32>(~4294967295u, u_input.a.x, u_input.a.x) ^ _wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.d, 1u, 19501u)), ~select(vec3<u32>(u_input.d, u_input.d, 0u), vec3<u32>(var_0, u_input.a.x, u_input.d), arg_3.xzx)), _wgslsmith_mult_i32(2147483647i, var_1.x), max(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, var_1.x, u_input.c, u_input.c) & vec4<i32>(1i, var_1.x, 13107i, var_1.x), abs(vec4<i32>(-1i, var_1.x, -4534i, u_input.c))) & ~(~vec4<i32>(-27778i, -2147483647i, -1i, -1816i)), vec4<i32>(u_input.c, -_wgslsmith_mod_i32(-7886i, -1954i), -countOneBits(u_input.c), 1i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1967f, arg_0))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_0)))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2, arg_2)))), vec4<bool>(true, arg_1.x, true, false));
    let var_3 = !select(!arg_3.xw, vec2<bool>(!(0u <= var_2.a.x), all(arg_3.yxz)), select(vec2<bool>(any(arg_1.wy), arg_1.x), arg_1.ww, vec2<bool>(all(var_2.e.xy), !arg_3.x)));
    var_1 = var_2.c;
    return vec4<u32>(var_0, _wgslsmith_div_u32(var_0, reverseBits(1u)), 48667u, ~7956u);
}

fn func_2() -> Struct_1 {
    let var_0 = select(select(func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-410f + 1000f))), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -900f), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)))), _wgslsmith_clamp_vec4_u32(firstLeadingBit(abs(vec4<u32>(u_input.b, 4294967295u, 1u, 0u))), ~(~vec4<u32>(u_input.b, 4294967295u, 33433u, u_input.b)), min(~vec4<u32>(1u, 4294967295u, 1861u, u_input.d), vec4<u32>(u_input.b, u_input.a.x, u_input.d, 0u))), !select(true, false, u_input.c < u_input.c)), vec4<u32>(reverseBits(_wgslsmith_mod_u32(_wgslsmith_sub_u32(51295u, u_input.b), abs(89372u))), _wgslsmith_div_u32(abs(select(4294967295u, u_input.a.x, false)), ~(~u_input.b)), u_input.a.x, u_input.d), true & select(any(vec2<bool>(true, true)), u_input.c >= -1i, u_input.c >= u_input.c));
    return Struct_1(func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1522f)) + _wgslsmith_f_op_f32(round(-838f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-274f)), _wgslsmith_f_op_f32(f32(-1f) * -1029f))))), select(select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), any(vec2<bool>(true, false)) || (u_input.c != -35634i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(293f)) + -403f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(126f * -1049f))), vec4<bool>(true, true, true, false)).wwz, u_input.c, vec4<i32>(max(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -2147483647i, u_input.c, -5576i), vec4<i32>(u_input.c, 21426i, u_input.c, 0i)), -u_input.c), _wgslsmith_mod_i32(max(u_input.c, 1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(-6714i, 18952i)))), 2147483647i, min(u_input.c, _wgslsmith_div_i32(14546i, ~0i)), u_input.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1136f, -412f)) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(732f, -1673f), vec2<f32>(-979f, 665f)))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-632f, 875f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(963f, -967f) - vec2<f32>(595f, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))))), vec4<bool>(true | all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true))), false, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-3596i, u_input.c, 0i, u_input.c), vec4<i32>(u_input.c, u_input.c, -2147483647i, 0i))) <= abs(1i), true | (any(vec2<bool>(false, false)) || any(vec2<bool>(false, true)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(2265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), -1216f))), vec3<f32>(_wgslsmith_f_op_f32(func_2().d.x - arg_0.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1050f - arg_0.d.x) - _wgslsmith_f_op_f32(arg_0.d.x + arg_0.d.x)), -1442f), 1014f));
    return arg_0;
}

fn func_1(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    var_0 = func_4(func_2());
    let var_1 = vec3<u32>(var_0.a.x, ~60256u, u_input.a.x);
    var var_2 = vec4<i32>(_wgslsmith_add_i32((32262i ^ var_0.b) & 10119i, _wgslsmith_dot_vec4_i32(arg_0.c >> (vec4<u32>(4294967295u, u_input.d, var_1.x, 45372u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, arg_0.c.x, 2147483647i, var_0.b), arg_0.c, vec4<i32>(-2147483647i, var_0.b, -5994i, 18358i)))) | -2147483647i, reverseBits(_wgslsmith_mult_i32(u_input.c, _wgslsmith_clamp_i32(func_2().c.x, _wgslsmith_clamp_i32(var_0.b, arg_0.b, u_input.c), arg_0.b))), 0i, -(~23521i));
    var_0 = func_4(Struct_1(select(min(vec3<u32>(var_0.a.x, 1u, 4294967295u), vec3<u32>(arg_0.a.x, arg_0.a.x, var_0.a.x)) ^ _wgslsmith_div_vec3_u32(var_1, vec3<u32>(1u, 0u, 1u)), ~arg_0.a, vec3<bool>(arg_0.e.x, !arg_0.e.x, arg_0.e.x)), -2147483647i, countOneBits(~vec4<i32>(var_2.x, var_2.x, var_0.b, 3833i) | min(vec4<i32>(arg_0.c.x, var_2.x, var_0.b, -28565i), vec4<i32>(-2147483647i, var_2.x, 2147483647i, 1i))), arg_0.d, select(arg_0.e, vec4<bool>(arg_0.d.x != 715f, !arg_0.e.x, var_0.e.x, true), !var_0.e.x | false)));
    return ~(-arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(reverseBits(_wgslsmith_mult_u32(4294967295u, u_input.d)), 29433u, _wgslsmith_clamp_u32(20795u, ~27723u, _wgslsmith_mod_u32(41507u, u_input.b))), _wgslsmith_add_vec3_u32(select(~vec3<u32>(u_input.d, u_input.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.d), vec3<u32>(4294967295u, 1u, 49393u)), vec3<bool>(true, true, true)), ~firstTrailingBit(vec3<u32>(52310u, 15684u, 36082u)))), func_1(Struct_1(~countOneBits(vec3<u32>(0u, 0u, u_input.b)), 63072i, abs(vec4<i32>(-6185i, u_input.c, u_input.c, u_input.c)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1711f, -679f))), vec4<bool>(true, true, true, true))), firstTrailingBit(-vec4<i32>(-u_input.c, u_input.c, 2147483647i, _wgslsmith_add_i32(u_input.c, 2147483647i))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1817f, 875f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(105f, -583f) - vec2<f32>(-912f, 760f))))))), !vec4<bool>(~67052u <= u_input.a.x, func_4(func_4(Struct_1(vec3<u32>(4294967295u, u_input.b, u_input.d), u_input.c, vec4<i32>(11525i, 0i, u_input.c, 23066i), vec2<f32>(-363f, 1416f), vec4<bool>(false, false, true, true)))).e.x, true, true));
    let var_1 = !select(vec4<bool>(!var_0.e.x, var_0.e.x | var_0.e.x, true, all(!var_0.e.zz)), !(!vec4<bool>(true, false, var_0.e.x, var_0.e.x)), !vec4<bool>(false, any(vec2<bool>(true, var_0.e.x)), any(vec3<bool>(false, var_0.e.x, var_0.e.x)), all(var_0.e)));
    let var_2 = !(!vec4<bool>(var_1.x, all(var_1.yyy), var_1.x, var_0.d.x <= -704f));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-800f + var_0.d.x)));
    let var_4 = !func_4(func_4(func_2())).e.xx;
    var var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 * -727f) - var_3)), _wgslsmith_f_op_f32(-1309f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(258f, var_3, true)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1372f + var_5.d.x)))))), ~func_2().b);
}

