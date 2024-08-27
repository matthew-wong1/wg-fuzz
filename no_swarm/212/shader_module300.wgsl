struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 25> = array<vec2<f32>, 25>(vec2<f32>(734f, -811f), vec2<f32>(-652f, 182f), vec2<f32>(1115f, -491f), vec2<f32>(677f, 309f), vec2<f32>(1562f, 1197f), vec2<f32>(-668f, -1367f), vec2<f32>(-1111f, -349f), vec2<f32>(817f, 462f), vec2<f32>(253f, -407f), vec2<f32>(-1832f, -2185f), vec2<f32>(378f, -1465f), vec2<f32>(-1000f, 585f), vec2<f32>(-782f, 789f), vec2<f32>(341f, 1360f), vec2<f32>(994f, -834f), vec2<f32>(-1183f, 1221f), vec2<f32>(411f, -439f), vec2<f32>(-279f, -138f), vec2<f32>(-157f, -233f), vec2<f32>(-1396f, -1578f), vec2<f32>(291f, -434f), vec2<f32>(294f, -788f), vec2<f32>(530f, -136f), vec2<f32>(447f, -1169f), vec2<f32>(-577f, 586f));

var<private> global1: vec3<u32> = vec3<u32>(1u, 0u, 68119u);

var<private> global2: Struct_4;

var<private> global3: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(2218f, 282f), vec2<f32>(-534f, 703f), vec2<f32>(-1469f, 547f), vec2<f32>(1598f, 2665f), vec2<f32>(111f, 394f), vec2<f32>(-256f, 704f), vec2<f32>(-1134f, 1122f), vec2<f32>(-746f, 361f), vec2<f32>(1488f, 1002f), vec2<f32>(1000f, -381f), vec2<f32>(951f, 108f), vec2<f32>(-1000f, 494f), vec2<f32>(-991f, -1020f), vec2<f32>(-1163f, -215f), vec2<f32>(588f, -936f), vec2<f32>(646f, 1760f), vec2<f32>(233f, -699f), vec2<f32>(-1640f, -880f), vec2<f32>(-149f, -1033f), vec2<f32>(-952f, 882f));

var<private> global4: Struct_1 = Struct_1(vec3<u32>(32705u, 1u, 24244u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>) -> bool {
    global1 = vec3<u32>(13771u, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~(vec2<u32>(49519u, global4.a.x) << (global4.a.zy % vec2<u32>(32u))), ~global4.a.yy ^ _wgslsmith_div_vec2_u32(vec2<u32>(arg_0, global4.a.x), global4.a.xx)), vec2<u32>(~(~1u), global4.a.x)), _wgslsmith_div_u32(10557u, reverseBits(~global4.a.x)) >> (~firstTrailingBit(_wgslsmith_div_u32(global4.a.x, arg_0)) % 32u));
    global2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a)));
    var var_0 = Struct_3(Struct_2(Struct_1(vec3<u32>(18084u, arg_0, global1.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global2.a), 421f) - global3[_wgslsmith_index_u32(~5407u, 20u)]), -1000f, Struct_1(~_wgslsmith_div_vec3_u32(global4.a, vec3<u32>(21295u, 1u, 0u)))), vec2<bool>(true, !select(true, arg_1.x, select(true, arg_1.x, false))), false);
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(global4.a.x, var_0.a.a.a.x >> (min(abs(10716u), _wgslsmith_dot_vec2_u32(global1.zy, global4.a.yz)) % 32u)), vec2<u32>(_wgslsmith_mult_u32(abs(max(38915u, arg_0)), arg_0), arg_0 & _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 69600u, global1.x, 0u), ~vec4<u32>(119111u, global1.x, 2026u, 9656u))));
    return !(var_0.a.c <= _wgslsmith_f_op_f32(-var_0.a.c)) && (abs(-32726i >> (arg_0 % 32u)) != ~1960i);
}

fn func_2(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = vec4<bool>(false, select(any(!arg_0.xx), func_3(84730u >> (global4.a.x % 32u), arg_0.zz) & arg_0.x, arg_0.x), !((true | arg_0.x) | (all(arg_0) == (true & arg_0.x))), true);
    var var_1 = _wgslsmith_mod_vec2_i32(u_input.a, u_input.a);
    global4 = Struct_1(vec3<u32>(~(~(~0u)), max(abs(global4.a.x) >> (global4.a.x % 32u), _wgslsmith_div_u32(~global4.a.x, _wgslsmith_div_u32(global1.x, 2218u))), 2169u));
    global2 = Struct_4(global2.a);
    global2 = Struct_4(global2.a);
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1018f))), _wgslsmith_f_op_f32(round(-1345f)));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: u32) -> Struct_2 {
    var var_0 = all(select(vec2<bool>(global2.a != _wgslsmith_f_op_f32(1359f * global2.a), select(true, u_input.a.x > u_input.a.x, u_input.a.x <= -35027i)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, false, true, true))), vec2<bool>(true, true), all(vec4<bool>(true, false, false, false))), true));
    global4 = Struct_1(~(~global4.a));
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a)))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1239f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + 499f)), -1095f)));
    var_2 = -1426f;
    return Struct_2(Struct_1(global4.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1097f, -1503f)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.x, arg_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1))), Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(global4.a.yz, global1.yy), 8507u, 1u)));
}

fn func_5(arg_0: Struct_4, arg_1: bool, arg_2: Struct_4, arg_3: Struct_2) -> Struct_1 {
    global0 = array<vec2<f32>, 25>();
    global4 = Struct_1(_wgslsmith_sub_vec3_u32(firstTrailingBit(min(~vec3<u32>(global4.a.x, 4294967295u, arg_3.d.a.x), _wgslsmith_clamp_vec3_u32(arg_3.d.a, vec3<u32>(49938u, arg_3.d.a.x, global4.a.x), arg_3.d.a))), vec3<u32>(~(~13382u), func_4(vec3<f32>(233f, arg_0.a, 143f), global3[_wgslsmith_index_u32(1u, 20u)], 40327u).d.a.x & ~12174u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.d.a.x, 0u, 0u, 32712u), ~vec4<u32>(arg_3.d.a.x, arg_3.a.a.x, arg_3.a.a.x, global1.x)))));
    global3 = array<vec2<f32>, 20>();
    var var_0 = _wgslsmith_div_u32(select(global1.x, global1.x, true | !arg_1) >> (arg_3.d.a.x % 32u), 0u);
    var var_1 = select(vec3<bool>(any(vec3<bool>(!arg_1, true, true)), arg_1, !all(vec4<bool>(arg_1, true, arg_1, arg_1)) & all(vec2<bool>(true, false))), select(!vec3<bool>(true, select(true, arg_1, arg_1), any(vec2<bool>(arg_1, arg_1))), vec3<bool>(!arg_1 != !arg_1, any(!vec4<bool>(arg_1, arg_1, true, false)), !arg_1), true == (reverseBits(arg_3.a.a.x) > 49335u)), vec3<bool>(true, true, true));
    return func_4(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), global2.a)), _wgslsmith_f_op_f32(-global2.a), 844f), _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(global1.x, 25u)]), 1u).a;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(func_5(Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -2481f)), false, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-311f, global2.a)) + _wgslsmith_f_op_f32(-940f - global2.a))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(518f, -324f, global2.a), vec3<f32>(-325f, -658f, global2.a)))), _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(true, true, true))), countOneBits(51052u))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.a))), global2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(4294967295u, 25u)])))))), _wgslsmith_f_op_f32(ceil(global2.a)), arg_0);
    global3 = array<vec2<f32>, 20>();
    var var_1 = Struct_4(-810f);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a))) * -1000f);
    return func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(false, false, true))).x)), global2.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.a + 1118f), _wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(true, true, true))).x, _wgslsmith_div_f32(var_0.c, -1000f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_1.a, global2.a) - vec3<f32>(var_0.c, 639f, var_3)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3, 1000f) - global3[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c, 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3, -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-977f, global2.a)))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-149f * -950f) * _wgslsmith_f_op_f32(var_1.a * 155f)), -891f)), 1u).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 25>();
    global4 = func_1(Struct_1(vec3<u32>(0u, global1.x, ~_wgslsmith_clamp_u32(global4.a.x, global1.x, 0u))));
    global4 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.a, _wgslsmith_div_f32(global2.a, 627f), _wgslsmith_f_op_f32(f32(-1f) * -814f))))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global4.a, global4.a), 25u)], 47003u & global4.a.x).d;
    let var_0 = select(vec4<bool>(true, false, true, global1.x != 63032u), select(!vec4<bool>(any(vec3<bool>(false, true, true)), true, any(vec3<bool>(true, false, false)), 1u == global1.x), !vec4<bool>(-52407i > u_input.a.x, true, true, true), true), false);
    let var_1 = Struct_3(Struct_2(Struct_1(global4.a), global0[_wgslsmith_index_u32(global1.x, 25u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.a))), func_4(vec3<f32>(-1171f, _wgslsmith_f_op_f32(global2.a * 611f), global2.a), vec2<f32>(global2.a, 2108f), ~global4.a.x).d), !(!select(!vec2<bool>(var_0.x, true), select(var_0.xw, vec2<bool>(true, var_0.x), vec2<bool>(false, true)), var_0.x)), var_0.x);
    global0 = array<vec2<f32>, 25>();
    var var_2 = 340u;
    var var_3 = var_1.a.d;
    let var_4 = vec3<bool>(u_input.a.x == -36547i, !(var_0.x && !var_1.c), !(!var_1.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(27108u, ~global1.x), ~var_3.a.x), 1u));
}

