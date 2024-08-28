struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-369f, -604f, 418f), vec3<f32>(1032f, -644f, -1805f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-962f, -1226f, -1446f))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-979f, 783f, -193f) * vec3<f32>(2017f, 541f, 1081f)), vec3<f32>(-977f, 459f, -921f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(880f, 633f, 579f) + vec3<f32>(265f, -189f, 345f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(668f, 1610f, 634f), vec3<f32>(309f, -688f, 626f), vec3<bool>(false, true, false)))))) * _wgslsmith_div_vec3_f32(vec3<f32>(748f, 1467f, 977f), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), 1488f, _wgslsmith_f_op_f32(round(1287f))))));
    return -657f;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = u_input.b.x;
    let var_1 = (var_0 ^ _wgslsmith_sub_u32(1u, var_0)) ^ ~arg_1.a;
    var var_2 = vec3<bool>(arg_3.b.a, !(arg_3.b.b.x > arg_3.e.b.x), arg_0.a.x);
    var var_3 = arg_3.b;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-457f, 1046f, var_3.b.x) * vec3<f32>(arg_3.b.b.x, -3645f, -2089f))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.e.b.x, -1000f, arg_3.e.b.x))) - vec3<f32>(1000f, 853f, _wgslsmith_f_op_f32(func_3(arg_1))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_3.b.x, arg_3.e.b.x, arg_3.e.b.x), vec3<f32>(var_3.b.x, var_3.b.x, -1785f))))))))));
    return ~(~arg_3.e.d.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: i32) -> bool {
    let var_0 = -_wgslsmith_clamp_i32(abs(arg_2), 1i, 1i);
    let var_1 = select(vec4<bool>(false, !(!all(vec2<bool>(false, false))), select(!all(vec4<bool>(true, false, true, true)), true, true && select(false, true, false)), !(false != (arg_1.a == 42321u))), select(!vec4<bool>(true, true, any(vec4<bool>(true, true, false, true)), true), vec4<bool>(true, _wgslsmith_f_op_f32(713f * 858f) >= _wgslsmith_f_op_f32(sign(-1100f)), true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false)))), (max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.a, arg_1.a), vec3<u32>(u_input.c.x, 1u, arg_1.a)), _wgslsmith_clamp_u32(u_input.b.x, arg_1.a, 47566u)) <= u_input.c.x) & true);
    var var_2 = firstLeadingBit(104046u);
    var var_3 = Struct_2(any(vec3<bool>(true, abs(1u) >= u_input.b.x, var_1.x)), Struct_1(select(!var_1.x, true, true) && var_1.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(435f, -1875f))) + vec2<f32>(-1000f, -1073f)), vec2<f32>(1f, 1f))), arg_0, ~min(~u_input.c, abs(vec2<u32>(arg_1.a, u_input.c.x))), 1i), vec4<i32>(-1i, _wgslsmith_mod_i32(abs(2147483647i), _wgslsmith_mod_i32(12917i, var_0)) | (~2147483647i << (select(arg_1.a, 0u, var_1.x) % 32u)), 14780i, countOneBits(-22597i) | arg_2), ~_wgslsmith_add_vec2_i32(firstLeadingBit(select(arg_0, vec2<i32>(arg_2, var_0), var_1.xx)), arg_0), Struct_1(any(vec3<bool>(!var_1.x, arg_2 <= -2147483647i, true)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(687f, 354f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-434f, -1036f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-369f, -1547f))), arg_0, min(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, arg_1.a), vec2<u32>(50156u, arg_1.a)) | u_input.b.xz, vec2<u32>(u_input.c.x, _wgslsmith_sub_u32(14697u, 1u))), _wgslsmith_dot_vec3_i32(vec3<i32>(32853i, arg_0.x, 2147483647i) ^ -vec3<i32>(arg_0.x, 0i, var_0), reverseBits(~vec3<i32>(2387i, -2147483647i, -1i)))));
    var var_4 = ~(~vec2<u32>(max(var_3.e.d.x, _wgslsmith_mult_u32(arg_1.a, 4294967295u)), _wgslsmith_mod_u32(var_3.b.d.x, u_input.b.x) & 0u));
    return var_3.a;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_4(vec2<bool>(func_4(_wgslsmith_div_vec2_i32(vec2<i32>(-3204i, 2147483647i) | vec2<i32>(u_input.a, 2147483647i), countOneBits(vec2<i32>(u_input.a, 9448i))), Struct_3(func_2(Struct_4(vec2<bool>(false, false), 48760u), Struct_3(80667u), -2147483647i, Struct_2(false, Struct_1(true, vec2<f32>(-1728f, -1155f), vec2<i32>(u_input.a, -886i), vec2<u32>(40277u, arg_0), 2147483647i), vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), Struct_1(true, vec2<f32>(-593f, 2095f), vec2<i32>(u_input.a, 1i), vec2<u32>(u_input.c.x, arg_0), 18960i)))), firstTrailingBit(68965i)), true), ~_wgslsmith_mod_u32(abs(39398u), 18687u));
    var var_1 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(u_input.b), max(vec3<u32>(~3922u, var_0.b, 17534u), u_input.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_0, abs(arg_0)), ~_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 41771u), vec3<u32>(u_input.c.x, select(~u_input.b.x, abs(var_0.b), false), ~72461u)));
    var_1 = vec3<u32>(_wgslsmith_sub_u32(var_1.x, _wgslsmith_add_u32(func_2(Struct_4(var_0.a, var_1.x), Struct_3(1u), 41265i, Struct_2(true, Struct_1(true, vec2<f32>(-1115f, 1000f), vec2<i32>(2147483647i, u_input.a), vec2<u32>(arg_0, 24345u), u_input.a), vec4<i32>(u_input.a, -6376i, 1i, -16816i), vec2<i32>(-37948i, u_input.a), Struct_1(var_0.a.x, vec2<f32>(-522f, 1000f), vec2<i32>(1i, 0i), vec2<u32>(var_0.b, 0u), -1i))) & (arg_0 << (75416u % 32u)), ~(~u_input.b.x))), select(_wgslsmith_mult_u32(var_0.b, ~u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b.xy, var_1.xz) & _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, var_1.x, 6050u, var_0.b), vec4<u32>(1u, var_1.x, u_input.b.x, var_1.x))), all(vec4<bool>(true, false, var_0.a.x, all(vec4<bool>(var_0.a.x, false, var_0.a.x, false))))), var_0.b & 0u);
    var_1 = u_input.b | vec3<u32>(_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0, abs(var_0.b)), 4294967295u), u_input.c.x, 95651u);
    let var_2 = !(!select(vec3<bool>(var_0.a.x, !var_0.a.x, true), select(select(vec3<bool>(var_0.a.x, true, true), vec3<bool>(var_0.a.x, var_0.a.x, true), var_0.a.x), select(vec3<bool>(false, false, false), vec3<bool>(var_0.a.x, var_0.a.x, true), false), false), false));
    return Struct_1(true, vec2<f32>(-431f, 1624f), ~(vec2<i32>(-1i) * -(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, u_input.a))), countOneBits(min(u_input.c, reverseBits(u_input.c)) >> (vec2<u32>(_wgslsmith_mult_u32(var_0.b, 78596u), 47072u) % vec2<u32>(32u))), _wgslsmith_add_i32(~u_input.a << (arg_0 % 32u), max(firstTrailingBit(u_input.a) >> (firstLeadingBit(4294967295u) % 32u), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(137f, -362f, -1507f)) - vec3<f32>(848f, -1046f, 1169f)))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1034f, var_0.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(round(-1705f)), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(max(var_0.x, -1000f))), _wgslsmith_f_op_f32(-562f + var_0.x))));
    var var_2 = Struct_2(false, func_1(_wgslsmith_mult_u32(~1u, max(u_input.c.x, ~36900u))), vec4<i32>(~(-2147483647i), countOneBits(reverseBits(0i ^ u_input.a)), select(_wgslsmith_add_i32(u_input.a & 7281i, ~1i), u_input.a, true), u_input.a), -_wgslsmith_mult_vec2_i32(vec2<i32>(~u_input.a, ~u_input.a), select(min(vec2<i32>(6577i, 16899i), vec2<i32>(u_input.a, u_input.a)), ~vec2<i32>(0i, u_input.a), true)), func_1(~u_input.c.x));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.b.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -307f))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(var_1.zwx + _wgslsmith_f_op_vec3_f32(var_1.wyy - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-428f, 1207f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -535f))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_2.b.b.x - var_0.x), -905f, _wgslsmith_f_op_f32(var_1.x - 1000f)) * _wgslsmith_f_op_vec3_f32(-var_1.wxw)), var_2.e.c.x, (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b.x, var_2.b.d.x, 0u, var_2.b.d.x), vec4<u32>(var_2.e.d.x, var_2.e.d.x, 1u, var_2.e.d.x)) ^ (vec4<u32>(u_input.c.x, 3047u, u_input.b.x, 4294967295u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(1484u, var_2.e.d.x, var_2.b.d.x, 4294967295u), vec4<u32>(25088u, 49306u, u_input.b.x, u_input.c.x)))) & vec4<u32>(31929u, ~var_2.b.d.x, 1u ^ u_input.c.x, ~(37821u << (var_2.b.d.x % 32u))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(~1i, 0i), var_2.e.c.x, var_2.d.x), reverseBits(vec3<i32>(1i, 9492i, -var_2.e.c.x))), _wgslsmith_f_op_vec2_f32(-var_0.yx));
}

