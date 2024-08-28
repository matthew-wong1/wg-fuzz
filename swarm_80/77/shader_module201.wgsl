struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
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

var<private> global0: f32 = -1000f;

var<private> global1: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_f32(-1f);
    global0 = -1000f;
    let var_1 = 51445i;
    global0 = 291f;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1631f, _wgslsmith_f_op_f32(-557f - _wgslsmith_f_op_f32(floor(379f))), true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2180f, -176f, true)))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(arg_1, min(_wgslsmith_div_i32(-2147483647i, -(~(-33149i))), 3178i));
    let var_1 = ~vec3<i32>(0i, ~(-2147483647i), _wgslsmith_mult_i32(firstLeadingBit(23175i), -4850i));
    var var_2 = ~(~55778u);
    let var_3 = Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.a.x, 1u >> (~var_0.a.x % 32u), ~4294967295u), var_0.a | vec3<u32>(~4294967295u, arg_1.x, arg_1.x)), ((u_input.b ^ -1i) >> (var_0.a.x % 32u)) & var_0.b);
    var var_4 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, 50822i)))) * _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return var_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec4<f32> {
    global1 = array<vec2<bool>, 20>();
    global0 = 741f;
    var var_0 = Struct_1(_wgslsmith_mult_vec3_u32(abs(arg_0.a), abs(arg_0.a)), -2147483647i);
    global0 = 395f;
    var var_1 = arg_1.a.xz;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-214f, -1000f, -180f, 1000f))) + vec4<f32>(1230f, 875f, _wgslsmith_f_op_f32(floor(190f)), _wgslsmith_f_op_f32(ceil(1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), !(!vec4<bool>(true, true, var_1.x <= var_0.a.x, all(global1[_wgslsmith_index_u32(28007u, 20u)])))));
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = func_2(arg_1.x, vec3<u32>(min(44222u, ~(~27214u)), 1u, 22708u));
    var_0 = Struct_1(~(~(~var_0.a << (vec3<u32>(4294967295u, 0u, 45531u) % vec3<u32>(32u)))), _wgslsmith_mult_i32(~(-var_0.b >> (var_0.a.x % 32u)), var_0.b));
    var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-180f * arg_0.x) * arg_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x + -771f), _wgslsmith_f_op_f32(-866f - arg_0.x)))), arg_0.x), vec3<u32>(reverseBits(var_0.a.x), var_0.a.x, (reverseBits(var_0.a.x) | _wgslsmith_mod_u32(1109u, 1u)) & (var_0.a.x & ~var_0.a.x)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.wxx));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-118f, 167f)) * _wgslsmith_f_op_f32(round(693f))), _wgslsmith_f_op_f32(var_1.x - -292f))));
    return Struct_1(vec3<u32>(1u, 1u, max(43475u << (var_0.a.x % 32u), var_0.a.x)), 2147483647i);
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = arg_0;
    let var_2 = func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-836f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(223f, -161f)))), _wgslsmith_f_op_vec4_f32(func_4(var_1, Struct_1(vec3<u32>(arg_0.a.x, 0u, arg_0.a.x), arg_0.b))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-994f * 1494f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, 821f), 858f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1618f * -379f))), _wgslsmith_f_op_f32(758f * _wgslsmith_f_op_f32(f32(-1f) * -725f)), _wgslsmith_f_op_f32(f32(-1f) * -716f))), vec4<bool>(true, true, all(vec3<bool>(all(global1[_wgslsmith_index_u32(4294967295u, 20u)]), var_0.b > -12591i, true)), (_wgslsmith_f_op_f32(f32(-1f) * -431f) >= _wgslsmith_f_op_f32(step(385f, 1179f))) & true)).a.x;
    let var_3 = var_1;
    var var_4 = func_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1582f) + _wgslsmith_div_f32(1177f, _wgslsmith_f_op_f32(func_3(Struct_1(var_3.a, u_input.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-761f, 668f)))), _wgslsmith_f_op_vec4_f32(func_4(var_1, var_1)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1388f - 533f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -386f) * _wgslsmith_f_op_f32(f32(-1f) * -1251f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-224f - -319f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-325f + -1132f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-853f, 1740f))))), !select(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, all(vec3<bool>(true, false, false)), true)));
    return func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-829f + _wgslsmith_f_op_f32(291f - 792f))))), var_4.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<i32>) -> vec3<u32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(633f))) + _wgslsmith_f_op_f32(round(-1000f))));
    let var_0 = func_6(arg_0, func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(-587f, arg_1), arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1421f, -504f, 457f, 1355f) * vec4<f32>(458f, -182f, -1000f, 157f)))), vec4<f32>(-958f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-265f + -378f)), -637f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-252f - -281f) - _wgslsmith_f_op_f32(848f - -538f))), vec4<bool>(arg_2, any(select(vec2<bool>(arg_2, false), vec2<bool>(true, arg_2), vec2<bool>(arg_2, arg_2))), !(arg_2 && false), true)), _wgslsmith_add_i32(arg_0.b, _wgslsmith_mod_i32(select(-53708i, 4372i, arg_2), ~(-14328i))));
    global0 = -875f;
    global1 = array<vec2<bool>, 20>();
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-356f * 1095f));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1651f + -1751f));
    var var_0 = vec2<i32>(-2147483647i, u_input.a.x);
    global1 = array<vec2<bool>, 20>();
    var_0 = u_input.a.zy;
    let var_1 = Struct_1(~(~(~func_1(Struct_1(vec3<u32>(2735u, 25065u, 0u), u_input.b), vec3<u32>(1772u, 20819u, 0u), false, vec4<i32>(-50487i, -38946i, 0i, u_input.a.x)))), min(~u_input.b, countOneBits(func_5(vec4<f32>(817f, 899f, -1000f, 1561f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1503f, 1000f, 829f, -248f) + vec4<f32>(-484f, -830f, -1076f, -332f)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false)).b)));
    var var_2 = var_1;
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_mod_u32(1u, var_1.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(50599u), var_2.a.x, 1u, 0u ^ var_1.a.x), vec4<u32>(~28238u, var_2.a.x, 38767u, ~4294967295u)), abs(var_1.a.x)), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, 50905i, 0i), 1i, -1i, var_2.b << (1u % 32u))), -vec4<i32>(abs(-1i), var_2.b, 1i, 5314i << (var_1.a.x % 32u))));
    let var_4 = func_6(func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1164f, -1000f, -1000f) - vec4<f32>(928f, 1000f, 1139f, 662f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1471f, -255f, 1000f, 793f) * vec4<f32>(-955f, 478f, -500f, 1433f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(530f, -671f, -685f, 316f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(900f, 594f, 1488f, 398f))), vec4<bool>(true, true, true, true)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-303f, 1114f, -337f, -319f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1360f, -1032f, 187f, -2766f)))), vec4<f32>(1f, 1f, 1f, 1f)), select(vec4<bool>(true, select(false, false, true), select(true, true, false), any(vec3<bool>(false, false, false))), vec4<bool>(true, any(vec3<bool>(true, true, true)), u_input.a.x > -8514i, any(vec2<bool>(true, true))), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)))), var_1, -24754i);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, 53109i, _wgslsmith_dot_vec2_i32(~u_input.a.zy, u_input.a.xx)));
}

