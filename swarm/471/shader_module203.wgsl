struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<bool>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4> = array<bool, 4>(false, true, true, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: bool) -> vec3<u32> {
    var var_0 = ~(u_input.a ^ ~25980u);
    let var_1 = _wgslsmith_div_i32(u_input.b.x, u_input.b.x);
    global0 = array<bool, 4>();
    var_0 = _wgslsmith_dot_vec3_u32(select(vec3<u32>(select(arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 49630u, 1u), vec3<u32>(28173u, 46278u, 23348u)), false), u_input.a, arg_0), ~vec3<u32>(0u, 5845u, arg_0) << (select(~vec3<u32>(22736u, arg_0, 0u), ~vec3<u32>(1u, u_input.a, arg_0), !vec3<bool>(true, arg_2, arg_2)) % vec3<u32>(32u)), vec3<bool>(all(vec2<bool>(arg_2, global0[_wgslsmith_index_u32(u_input.a, 4u)])) || global0[_wgslsmith_index_u32(min(4294967295u, u_input.a), 4u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 22313u, 35307u), vec3<u32>(arg_0, u_input.a, u_input.a)), 4u)], any(!vec3<bool>(arg_2, arg_2, global0[_wgslsmith_index_u32(29316u, 4u)])))), ~(~(max(vec3<u32>(0u, 0u, u_input.a), vec3<u32>(u_input.a, 1u, 11450u)) << (vec3<u32>(82283u, 18118u, u_input.a) % vec3<u32>(32u)))));
    let var_2 = Struct_3(abs(68010i));
    return vec3<u32>(reverseBits(firstLeadingBit(u_input.a ^ arg_0)) & ~1u, ~arg_0, ~(~_wgslsmith_clamp_u32(1u, 1u, arg_0 | u_input.a)));
}

fn func_2(arg_0: Struct_3) -> Struct_1 {
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    global0 = array<bool, 4>();
    var var_0 = vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a, 1u, u_input.a)), reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(0u, 0u, u_input.a))) << (~func_3(u_input.a, vec4<f32>(-849f, 1398f, -125f, -1558f), global0[_wgslsmith_index_u32(29621u, 4u)]) % vec3<u32>(32u))), 1u);
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1321f, 752f), _wgslsmith_f_op_f32(round(-1413f)))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1074f)))), 759f), u_input.a, Struct_1(var_0.x, !(!global0[_wgslsmith_index_u32(u_input.a, 4u)]), select(!vec3<bool>(false, false, global0[_wgslsmith_index_u32(25469u, 4u)]), select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 4u)], true, global0[_wgslsmith_index_u32(var_0.x, 4u)]), !vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 4u)], true, false), select(vec3<bool>(false, global0[_wgslsmith_index_u32(74643u, 4u)], global0[_wgslsmith_index_u32(14427u, 4u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], false, global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(50897u, 4u)], false))), all(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(var_0.x, 4u)], vec2<i32>(u_input.b.x, 1i)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-505f * -755f), _wgslsmith_f_op_f32(f32(-1f) * -386f), -2426f, _wgslsmith_f_op_f32(398f + -571f))), vec4<f32>(-2561f, _wgslsmith_f_op_f32(-274f - _wgslsmith_f_op_f32(-862f + -1000f)), 2123f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1764f)) + 1720f)), any(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 4u)], true), vec3<bool>(global0[_wgslsmith_index_u32(38606u, 4u)], false, global0[_wgslsmith_index_u32(var_0.x, 4u)]), true)))), Struct_1(func_3(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_0.x, u_input.a, 18303u), vec4<u32>(u_input.a, u_input.a, 36292u, 2022u)) & 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1544f, 668f, 1452f, -903f) + vec4<f32>(-1931f, -953f, 557f, -228f))), true).x, true, vec3<bool>(true, any(vec2<bool>(true, true)), global0[_wgslsmith_index_u32(func_3(12372u, vec4<f32>(311f, 1095f, 1418f, 1146f), global0[_wgslsmith_index_u32(4294967295u, 4u)]).x & select(var_0.x, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 4u)]), 4u)]), true, vec2<i32>(arg_0.a, u_input.b.x)));
    return var_1.e;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_4(func_2(Struct_3(arg_1.x)));
    var var_1 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.a, ~var_0.a.a, ~(arg_0 | arg_0), ~1u)), ~vec4<u32>(~arg_0, 40518u, _wgslsmith_clamp_u32(func_3(var_0.a.a, vec4<f32>(201f, 988f, 1061f, -1536f), false).x, u_input.a & u_input.a, 0u), u_input.a));
    global0 = array<bool, 4>();
    var_1 = var_0.a.a;
    var_1 = abs(_wgslsmith_div_u32(arg_0, 18109u));
    return func_2(Struct_3(0i));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_4) -> vec3<bool> {
    let var_0 = select(-vec2<i32>(_wgslsmith_clamp_i32(~2147483647i, max(0i, 38832i), max(0i, -2147483647i)), _wgslsmith_add_i32(func_1(58553u, vec3<i32>(29637i, u_input.b.x, arg_0.e.x), arg_1.a.b).e.x, u_input.b.x | arg_1.a.e.x)), vec2<i32>(func_2(Struct_3(u_input.b.x)).e.x, arg_0.e.x), arg_1.a.c.x & !(_wgslsmith_f_op_f32(select(491f, -1158f, true)) >= 1f));
    let var_1 = Struct_1(func_3(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~177u, 0u << (arg_2.a.a % 32u)), _wgslsmith_mult_u32(u_input.a, u_input.a)), vec4<f32>(-339f, 1381f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1202f, 1335f)) - _wgslsmith_div_f32(-1000f, -1749f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-821f)))), arg_1.a.d).x, all(select(select(vec3<bool>(false, arg_0.b, true), vec3<bool>(arg_1.a.b, false, false), arg_0.c), func_2(Struct_3(2147483647i)).c, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], true, arg_2.a.b))) & true, !select(select(arg_2.a.c, vec3<bool>(false, false, global0[_wgslsmith_index_u32(16695u, 4u)]), false), arg_0.c, arg_0.c), true && !(all(arg_1.a.c) && false), arg_1.a.e);
    global0 = array<bool, 4>();
    var var_2 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(100f + -991f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(920f, 364f)), -555f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(511f, 1f))), firstLeadingBit(arg_2.a.a), func_1(arg_2.a.a & countOneBits(9762u), u_input.b, arg_2.a.b), vec4<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f + 857f)), -1729f)), _wgslsmith_f_op_f32(162f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2254f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(348f)))), arg_0);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x + var_2.d.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.d.x), var_2.d.x)))));
    return select(var_2.c.c, !func_2(Struct_3(max(var_2.c.e.x, -57480i))).c, arg_2.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 4>();
    let var_0 = Struct_4(Struct_1(0u, !any(vec3<bool>(false, false, true)), func_4(func_1(4294967295u, vec3<i32>(u_input.b.x, -229i, 3977i), any(vec2<bool>(true, false))), Struct_4(Struct_1(u_input.a, global0[_wgslsmith_index_u32(4214u, 4u)], vec3<bool>(global0[_wgslsmith_index_u32(37024u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)]), false, u_input.b.yx)), Struct_4(Struct_1(u_input.a, global0[_wgslsmith_index_u32(418u, 4u)], vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(4547u, 4u)]), global0[_wgslsmith_index_u32(34003u, 4u)], u_input.b.yx))), !(true & (global0[_wgslsmith_index_u32(14185u, 4u)] & false)), ~(countOneBits(u_input.b.xz) & (vec2<i32>(u_input.b.x, u_input.b.x) | vec2<i32>(-11090i, u_input.b.x)))));
    var var_1 = var_0;
    var_1 = var_0;
    var var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(reverseBits((var_0.a.a ^ var_0.a.a) ^ max(var_1.a.a, var_0.a.a)), ~_wgslsmith_sub_u32(~4294967295u, func_1(var_1.a.a, vec3<i32>(2147483647i, 17944i, u_input.b.x), var_0.a.d).a)), ~(~abs(firstLeadingBit(vec2<u32>(4294967295u, 4294967295u)))));
    var_2 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, func_1(0u, u_input.b, true).a, ~0u, var_2.x), firstTrailingBit(~vec4<u32>(4294967295u, u_input.a, 4294967295u, var_2.x))), countOneBits(u_input.a ^ min(17014u, var_0.a.a))), select(~(~vec2<u32>(1u, var_2.x) | (vec2<u32>(u_input.a, var_0.a.a) & vec2<u32>(u_input.a, 13181u))), max(~vec2<u32>(4294967295u, var_2.x) << (abs(vec2<u32>(var_2.x, var_1.a.a)) % vec2<u32>(32u)), vec2<u32>(var_0.a.a | var_1.a.a, firstTrailingBit(1u))), false));
    var var_3 = Struct_4(var_0.a);
    var var_4 = _wgslsmith_div_vec2_u32(vec2<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(31688u, 2830u, 25138u, 4294967295u), vec4<u32>(88738u, var_1.a.a, var_2.x, var_0.a.a)) ^ var_3.a.a) ^ _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(1u, 1u)), min(vec2<u32>(var_2.x, 1u) << (vec2<u32>(9787u, var_3.a.a) % vec2<u32>(32u)), vec2<u32>(0u, 1u))), _wgslsmith_mult_vec2_u32(func_3(20868u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-708f, 1000f, 1188f, -1000f))), vec4<f32>(-899f, -441f, 740f, -640f), vec4<bool>(var_1.a.d, true, global0[_wgslsmith_index_u32(var_3.a.a, 4u)], false))), true).xy, ~reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(16935u, var_0.a.a), vec2<u32>(var_3.a.a, 1u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_0.a.e.x), var_0.a.e), ~(~min(vec4<u32>(16555u, 0u, var_0.a.a, var_4.x), vec4<u32>(var_3.a.a, var_3.a.a, 43442u, 39338u) | vec4<u32>(var_3.a.a, u_input.a, var_2.x, var_0.a.a))));
}

