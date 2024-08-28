struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    var var_0 = vec4<f32>(-227f, -550f, arg_1.b.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(240f, 159f)) - _wgslsmith_f_op_f32(-188f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-279f * 389f) - _wgslsmith_f_op_f32(-arg_0.e.b.x)))));
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(abs(arg_1.d) ^ select(50454i, -31904i, true), ~(~arg_1.e.x)), vec2<i32>(~arg_1.e.x, u_input.a.x)), firstTrailingBit(select(arg_1.e << (~vec2<u32>(4294967295u, arg_0.a.x) % vec2<u32>(32u)), select(u_input.c.xy, ~vec2<i32>(-2147483647i, -79i), vec2<bool>(true, true)), all(vec3<bool>(true, false, false)) & true)));
    var_1 = arg_1.d;
    var_1 = _wgslsmith_div_i32(-2147483647i, -min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -6872i, 0i, 2147483647i), vec4<i32>(arg_1.e.x, u_input.b, u_input.c.x, u_input.c.x)), i32(-1i) * -19009i) ^ max(-u_input.b, -14228i));
    let var_2 = Struct_4(arg_0.e, Struct_3(arg_0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1f)))), abs(4294967295u), arg_0.d, arg_0.e), ~4294967295u);
    return var_2.a.b.x;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-453f, arg_0, arg_0, arg_0))))));
    let var_1 = Struct_4(Struct_1(vec2<f32>(1106f, _wgslsmith_f_op_f32(func_3(Struct_3(vec2<u32>(0u, 20664u), arg_0, 27903u, 37765u, Struct_1(vec2<f32>(arg_0, 2104f), var_0, var_0.yzw)), Struct_2(Struct_1(var_0.xz, var_0, var_0.wyx), Struct_1(var_0.ww, var_0, vec3<f32>(var_0.x, 554f, 1540f)), var_0.wyz, u_input.b, vec2<i32>(u_input.c.x, -22600i))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(var_0)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, -1123f, var_0.x, arg_0), vec4<f32>(var_0.x, var_0.x, 509f, -498f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(var_0.yxy, var_0.wwx))))), Struct_3(~vec2<u32>(1u, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1108f - var_0.x)), _wgslsmith_div_u32(~(~5872u), 1u), ~_wgslsmith_mult_u32(48816u, 35567u) >> (countOneBits(1u) % 32u), Struct_1(_wgslsmith_f_op_vec2_f32(var_0.yx * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_0.x), vec2<f32>(arg_0, var_0.x)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(var_0)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, arg_0, var_0.x, var_0.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.yzy), vec3<f32>(321f, arg_0, arg_0)))), _wgslsmith_mod_u32(~select(1u, max(0u, 82744u), true), firstTrailingBit(0u) & ~_wgslsmith_add_u32(97409u, 20660u)));
    var var_2 = Struct_4(var_1.a, var_1.b, var_1.c);
    let var_3 = i32(-1i) * -2574i;
    var_2 = var_1;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2263f))), _wgslsmith_div_f32(769f, _wgslsmith_f_op_f32(round(-614f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1335f, arg_0, 152f, 1000f)) + _wgslsmith_f_op_vec4_f32(abs(var_0)))))), var_0.yxy);
}

fn func_1() -> f32 {
    var var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(320f - _wgslsmith_f_op_f32(499f - 2422f)), 127f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2299f, 1573f, -526f, 1017f), vec4<f32>(-1000f, 541f, 694f, -588f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(161f, -619f, -698f) - vec3<f32>(223f, 1000f, -401f))))), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-411f, -125f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1725f, 215f, 977f) - vec3<f32>(235f, 957f, -1056f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-224f, 1835f, 345f))) - vec3<f32>(424f, -1185f, 767f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-615f, -1045f, 436f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-425f, 1762f, -996f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-914f, -447f, -1712f)), all(vec2<bool>(true, false))))))), ~abs(1i), _wgslsmith_clamp_vec2_i32(-(~vec2<i32>(17230i, u_input.c.x)), -abs(u_input.a.zy), u_input.a.yz ^ -vec2<i32>(18036i, u_input.b)));
    var var_1 = Struct_4(var_0.b, Struct_3(vec2<u32>(_wgslsmith_mod_u32(4294967295u, firstTrailingBit(1u)), _wgslsmith_clamp_u32(4294967295u, _wgslsmith_mod_u32(4294967295u, 11504u), ~134874u)), func_2(_wgslsmith_f_op_f32(f32(-1f) * -523f)).c.x, _wgslsmith_mult_u32(_wgslsmith_add_u32(~4294967295u, ~27910u), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 61219u), vec2<u32>(0u, 35645u)))), _wgslsmith_add_u32(firstLeadingBit(~4294967295u), reverseBits(_wgslsmith_sub_u32(10468u, 1u))), func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-315f)), _wgslsmith_f_op_f32(f32(-1f) * -1428f))))), abs(~reverseBits(0u)));
    var_0 = Struct_2(func_2(-116f), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b.b.x, 978f), _wgslsmith_f_op_vec2_f32(exp2(var_1.a.a)), true))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(-var_0.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b.b.x))), -1898f), var_1.a.b.wxz), var_0.a.c, u_input.b, _wgslsmith_clamp_vec2_i32(~vec2<i32>(-18112i, 1i), vec2<i32>(_wgslsmith_mult_i32(reverseBits(-33044i), 50188i >> (var_1.b.c % 32u)), u_input.a.x), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -19449i) | vec2<i32>(var_0.d, 11129i), ~(var_0.e >> (vec2<u32>(4520u, var_1.c) % vec2<u32>(32u))))));
    let var_2 = true;
    let var_3 = 179f;
    return -305f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), all(vec2<bool>(true, true)), true, all(vec3<bool>(true, false, false)) & false), vec4<bool>(true, true, true, true), !vec4<bool>(false, true, any(vec3<bool>(false, false, true)), true)), vec4<bool>(any(vec4<bool>(true, true, true, any(vec3<bool>(true, false, true)))), true, true, false));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), 1f))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(525f + -1440f) + _wgslsmith_f_op_f32(-1073f + 1437f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1114f))))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1223f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-818f, 1769f, all(var_0.wz))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1494f, 555f)) + _wgslsmith_f_op_f32(f32(-1f) * -284f))))));
    var var_3 = 1f;
    var var_4 = -vec3<i32>(min(-57521i, _wgslsmith_mult_i32(47818i, reverseBits(u_input.c.x))), reverseBits((i32(-1i) * -2147483647i) << (0u % 32u)), u_input.c.x);
    var var_5 = var_0;
    var var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f * 759f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f), _wgslsmith_f_op_f32(f32(-1f) * -1054f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(947f))), -944f) - _wgslsmith_div_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(1559f * _wgslsmith_f_op_f32(f32(-1f) * -847f)), _wgslsmith_f_op_f32(f32(-1f) * -1431f), _wgslsmith_f_op_f32(-591f * -1379f)), func_2(664f).b));
    var var_7 = Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f))).b.zw, vec4<f32>(var_6.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_6.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_6.x - var_6.x), _wgslsmith_f_op_f32(func_3(Struct_3(vec2<u32>(0u, 22561u), -545f, 81u, 4294967295u, Struct_1(var_6.xx, vec4<f32>(var_6.x, 1292f, 137f, var_6.x), var_6.ywz)), Struct_2(Struct_1(var_6.zw, vec4<f32>(var_6.x, 890f, var_6.x, -2117f), var_6.wwx), Struct_1(var_6.ww, vec4<f32>(2321f, -699f, var_6.x, 1938f), var_6.zzw), var_6.wxw, 1i, vec2<i32>(u_input.a.x, u_input.c.x))))), _wgslsmith_div_f32(var_6.x, 1000f)), var_6.zwy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(min(vec3<u32>(12157u, 4294967295u, ~1u), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(57568u, 1u, 22005u))), ~(~(~vec3<u32>(89638u, 1u, 21491u)))), _wgslsmith_f_op_f32(736f + -2753f), _wgslsmith_sub_vec4_i32(-(~(-vec4<i32>(-14133i, var_4.x, 1i, u_input.a.x))), countOneBits(vec4<i32>(firstLeadingBit(var_4.x), u_input.a.x, -u_input.a.x, -2147483647i >> (1u % 32u)))), vec4<u32>(1u, 1u, 1u, 1u), 1257f);
}

