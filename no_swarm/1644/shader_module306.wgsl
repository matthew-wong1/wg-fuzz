struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<f32>,
    d: i32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_add_u32(u_input.a, 0u) << (~(~(~u_input.c.x)) % 32u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1607f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-846f * _wgslsmith_div_f32(-340f, -1485f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -591f), 724f))));
    let var_2 = vec3<u32>(32252u, u_input.d, ~(~(4294967295u << (var_0 % 32u))) ^ _wgslsmith_mult_u32(firstLeadingBit(u_input.c.x), 4294967295u >> ((3288u ^ var_0) % 32u)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(-963f, _wgslsmith_f_op_f32(trunc(852f))), vec2<f32>(196f, -1000f)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1493f, -659f)), vec2<f32>(524f, 590f), true)), !select(true, true, 44420i > u_input.b.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-547f, 453f, 1377f, 535f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(255f, -1432f, 147f, 892f), vec4<f32>(-1261f, 1000f, -480f, -1000f))))), -firstTrailingBit(u_input.b.x), vec2<u32>(1u, _wgslsmith_add_u32(u_input.d, 4294967295u))), Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1504f, 659f)), vec2<f32>(_wgslsmith_f_op_f32(round(1484f)), 126f))), true, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-893f, -448f, -509f, -295f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(650f, 426f, -751f, 1000f) * vec4<f32>(773f, 136f, 365f, -1086f))))), u_input.b.x, _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0, u_input.a), vec2<u32>(firstLeadingBit(69216u), u_input.c.x), vec2<u32>(_wgslsmith_div_u32(var_2.x, 35409u), firstLeadingBit(var_2.x)))));
    var var_4 = select(!select(vec2<bool>(var_3.c.e.x > var_3.c.e.x, false), !(!vec2<bool>(var_3.c.b, var_3.c.b)), vec2<bool>(var_3.c.b, var_3.b.b)), select(select(select(vec2<bool>(var_3.c.b, true), vec2<bool>(var_3.c.b, true), !vec2<bool>(var_3.b.b, var_3.c.b)), select(!vec2<bool>(false, var_3.c.b), !vec2<bool>(var_3.b.b, var_3.b.b), !var_3.c.b), vec2<bool>(var_3.b.b, var_3.b.b)), !(!(!vec2<bool>(var_3.b.b, var_3.c.b))), vec2<bool>(any(!vec2<bool>(false, var_3.b.b)), !var_3.c.b)), true);
    return !(!any(vec2<bool>(false, true)));
}

fn func_2() -> bool {
    let var_0 = vec2<u32>(11464u, ~(~reverseBits(u_input.a))) & u_input.c.zy;
    let var_1 = ~vec4<u32>(~firstLeadingBit(u_input.c.x << (var_0.x % 32u)), 523u, u_input.d, var_0.x);
    let var_2 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(450f, 1336f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(987f, 136f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-970f + -1461f)))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1523f * 1761f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-544f)), -431f)), func_3(), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(465f, 1686f), -808f, _wgslsmith_f_op_f32(-949f + -1948f), -336f) - vec4<f32>(_wgslsmith_f_op_f32(-128f - -266f), -1000f, -616f, 170f)), max(2147483647i, u_input.b.x), vec2<u32>(4294967295u, ~u_input.d) >> (select(vec2<u32>(73090u, 14906u), u_input.c.zy, vec2<bool>(true, true)) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-3070f, -1043f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-856f, 997f)))), (_wgslsmith_f_op_f32(round(1360f)) >= _wgslsmith_f_op_f32(trunc(927f))) || true, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(119f, -516f, 411f, -141f) * vec4<f32>(-201f, -447f, 1193f, -342f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-142f, 277f, 1000f, -761f)), true)), -2147483647i, _wgslsmith_mod_vec2_u32(firstTrailingBit(reverseBits(u_input.c.yz)), ~countOneBits(u_input.c.yy))));
    var var_3 = var_2;
    var var_4 = Struct_2(_wgslsmith_f_op_vec2_f32(var_2.a - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_3.a.x - -110f), _wgslsmith_div_f32(-2834f, -1573f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.c.x, var_3.b.a.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.c.x, -1549f))), var_3.b.b))), var_3.c, var_2.b);
    return !((_wgslsmith_add_u32(17264u, var_2.b.e.x) >= 1u) & false) && false;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1276f, -1344f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(255f, 1667f))))), func_2(), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(314f, -714f, -457f, -1038f) - vec4<f32>(-329f, -442f, 625f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1120f, 286f, -554f, 614f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-433f, -1364f, 720f, 856f), vec4<f32>(184f, -1138f, -1147f, -955f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1546f, 644f, -1909f, -158f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-557f, -688f, -108f, -1295f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(549f, 540f, -1545f, 423f), vec4<f32>(449f, -588f, -253f, 453f), vec4<bool>(false, true, true, true))), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-789f, -1187f, -453f, -1129f), vec4<f32>(1387f, -611f, -1213f, -1000f), vec4<bool>(false, false, false, false))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1549f, -1027f, -350f, -329f))))))), _wgslsmith_mult_i32(2147483647i, 0i), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(4294967295u), u_input.a >> (24772u % 32u), ~u_input.c.x, _wgslsmith_add_u32(1u, 46188u)), max(vec4<u32>(u_input.c.x, u_input.a, 1u, 58144u), vec4<u32>(u_input.c.x, u_input.c.x, 87250u, 0u))), 91729u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.c.yw))), all(select(vec2<bool>(true, 4294967295u != u_input.c.x), vec2<bool>(true, any(vec3<bool>(var_0.b, false, true))), false)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(var_0.c.x, var_0.c.x)), var_0.c.x, _wgslsmith_f_op_f32(-var_0.c.x), var_0.c.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c)), vec4<bool>(false, true, true, !var_0.b))))), _wgslsmith_dot_vec3_i32(~max(~vec3<i32>(var_0.d, 1i, var_0.d), vec3<i32>(-23597i, var_0.d, var_0.d)), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(4163i, 0i, u_input.b.x), vec3<i32>(var_0.d, -2851i, -2147483647i), vec3<i32>(var_0.d, var_0.d, u_input.b.x)), abs(vec3<i32>(-42695i, var_0.d, u_input.b.x))) ^ ~vec3<i32>(var_0.d, var_0.d, var_0.d)), ~vec2<u32>(59510u, u_input.a));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1263f, _wgslsmith_f_op_f32(-878f - -2636f)) * _wgslsmith_f_op_f32(select(1371f, _wgslsmith_f_op_f32(-var_1.a.x), true)));
    let var_3 = -477f;
    var_2 = var_3;
    return _wgslsmith_f_op_f32(round(125f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -404f)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(151f, -760f), vec2<f32>(1f, 1f)))), !all(vec4<bool>(false, true, false, false)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1404f, -192f, -1595f, -356f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-955f, 864f, -1669f, 325f)))))), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), u_input.b | vec2<i32>(24302i, -8606i)) ^ u_input.b.x, vec2<u32>(~0u, ~(u_input.c.x ^ 1u))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(554f, -404f) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(270f, 894f))))), true, vec4<f32>(426f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1212f)), _wgslsmith_f_op_f32(f32(-1f) * -1269f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(137f - 503f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1004f), 1724f, any(vec4<bool>(true, true, true, false))))), -54943i, vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a), 4294967295u)));
    var var_1 = _wgslsmith_clamp_u32(0u, var_0.b.e.x, 4294967295u);
    var var_2 = Struct_2(var_0.a, var_0.b, var_0.c);
    var var_3 = var_0.b;
    var var_4 = 47330u;
    var var_5 = select(vec4<bool>(var_2.b.b, var_2.c.b, !var_3.b, true), vec4<bool>(var_0.b.d <= var_0.c.d, any(!(!vec3<bool>(true, false, var_2.b.b))), true, true), !vec4<bool>(_wgslsmith_mult_u32(var_0.c.e.x, var_2.c.e.x) <= firstLeadingBit(1u), false, var_0.b.b, true && var_0.b.b));
    var_4 = max(98457u, abs(_wgslsmith_add_u32(4294967295u, var_2.c.e.x) & _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(var_2.c.e.x, var_3.e.x, var_0.c.e.x))) ^ min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.e.x, var_3.e.x, 1u, var_3.e.x), vec4<u32>(var_3.e.x, var_2.c.e.x, u_input.c.x, 0u)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_3.e.x, var_0.c.e.x), vec2<u32>(u_input.a, 4294967295u))));
    var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, -953f), var_3.a.x)))), _wgslsmith_f_op_f32(round(var_3.c.x))), Struct_1(var_0.a, true, var_3.c, 80327i, var_2.c.e >> (var_2.b.e % vec2<u32>(32u))), var_2.b);
    var var_6 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.a) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1796f, var_3.c.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a.x, var_3.c.x))), !var_3.b))), var_0.c, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(-1i, var_2.b.d), 0i ^ _wgslsmith_div_i32(~var_3.d, var_2.b.d), var_6.b.d), _wgslsmith_f_op_f32(-var_0.c.c.x), -abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.d, -24790i, var_0.b.d), _wgslsmith_div_vec3_i32(vec3<i32>(var_6.b.d, -53342i, var_2.c.d), vec3<i32>(var_2.c.d, 16317i, -14859i)))), ~vec4<i32>(_wgslsmith_mult_i32(~var_2.b.d, i32(-1i) * -25514i), 29101i & -var_3.d, var_0.b.d, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.d, 24263i, var_6.c.d), vec3<i32>(u_input.b.x, 1i, var_2.c.d))), -922f);
}

