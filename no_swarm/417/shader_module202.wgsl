struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31> = array<i32, 31>(1i, 1i, 21522i, 0i, 1i, 29283i, -1897i, 1i, -27290i, 2147483647i, i32(-2147483648), -10514i, -1i, -16153i, -302i, 1i, 0i, 78313i, 1i, -1i, -1600i, -16983i, i32(-2147483648), 6944i, -25737i, 23812i, 9631i, 0i, 15388i, -1i, -585i);

var<private> global1: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(Struct_3(1u, 1144f, vec4<bool>(true, true, false, false), vec4<u32>(0u, 0u, 51239u, 36673u)), Struct_2(false), vec2<i32>(i32(-2147483648), 55241i), Struct_1(vec3<u32>(4294967295u, 0u, 58938u), vec4<u32>(41566u, 4294967295u, 6196u, 28531u), vec4<bool>(true, false, false, false), vec4<u32>(1u, 0u, 1u, 26363u))), Struct_4(Struct_3(0u, -981f, vec4<bool>(true, true, true, false), vec4<u32>(4294967295u, 1u, 5029u, 4294967295u)), Struct_2(true), vec2<i32>(16163i, -1i), Struct_1(vec3<u32>(1u, 4294967295u, 42646u), vec4<u32>(48274u, 71621u, 0u, 1u), vec4<bool>(true, false, false, false), vec4<u32>(0u, 42469u, 0u, 8422u))), Struct_4(Struct_3(0u, 753f, vec4<bool>(false, true, true, false), vec4<u32>(1u, 1u, 34233u, 42053u)), Struct_2(false), vec2<i32>(1123i, 1i), Struct_1(vec3<u32>(49632u, 31528u, 25745u), vec4<u32>(42064u, 1u, 50526u, 4294967295u), vec4<bool>(true, false, false, false), vec4<u32>(54910u, 4294967295u, 109445u, 14082u))), Struct_4(Struct_3(11792u, -171f, vec4<bool>(true, true, true, true), vec4<u32>(1u, 30786u, 0u, 63525u)), Struct_2(false), vec2<i32>(-89760i, 2147483647i), Struct_1(vec3<u32>(34398u, 1u, 1u), vec4<u32>(1u, 5668u, 0u, 39459u), vec4<bool>(true, true, false, false), vec4<u32>(44658u, 16344u, 34953u, 1u))), Struct_4(Struct_3(4294967295u, 1490f, vec4<bool>(false, false, true, true), vec4<u32>(1u, 1u, 1u, 4294967295u)), Struct_2(false), vec2<i32>(-16135i, 69546i), Struct_1(vec3<u32>(0u, 73031u, 0u), vec4<u32>(0u, 4294967295u, 1u, 38783u), vec4<bool>(true, false, false, false), vec4<u32>(60672u, 0u, 1u, 4294967295u))), Struct_4(Struct_3(0u, -284f, vec4<bool>(false, false, true, false), vec4<u32>(1762u, 2610u, 40196u, 36406u)), Struct_2(false), vec2<i32>(-62535i, -1i), Struct_1(vec3<u32>(1u, 323u, 4294967295u), vec4<u32>(4294967295u, 100384u, 5896u, 49726u), vec4<bool>(false, true, true, false), vec4<u32>(4294967295u, 1u, 88285u, 51825u))), Struct_4(Struct_3(0u, -1121f, vec4<bool>(true, false, true, false), vec4<u32>(57398u, 19965u, 20007u, 2117u)), Struct_2(true), vec2<i32>(0i, -15611i), Struct_1(vec3<u32>(52223u, 0u, 1u), vec4<u32>(33870u, 40951u, 47481u, 4294967295u), vec4<bool>(false, false, false, true), vec4<u32>(3358u, 1u, 1u, 4294967295u))), Struct_4(Struct_3(4294967295u, -573f, vec4<bool>(false, false, true, true), vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), Struct_2(false), vec2<i32>(1i, i32(-2147483648)), Struct_1(vec3<u32>(107949u, 7477u, 16358u), vec4<u32>(5529u, 4294967295u, 20286u, 17938u), vec4<bool>(true, true, true, false), vec4<u32>(71797u, 1u, 0u, 71616u))), Struct_4(Struct_3(8533u, -293f, vec4<bool>(true, true, true, true), vec4<u32>(1u, 46349u, 1u, 27711u)), Struct_2(false), vec2<i32>(0i, 67470i), Struct_1(vec3<u32>(1u, 1u, 0u), vec4<u32>(0u, 4294967295u, 1u, 5033u), vec4<bool>(false, false, true, true), vec4<u32>(0u, 20090u, 9463u, 67858u))), Struct_4(Struct_3(57295u, -427f, vec4<bool>(true, false, false, true), vec4<u32>(20156u, 1u, 87963u, 1u)), Struct_2(false), vec2<i32>(11452i, 36724i), Struct_1(vec3<u32>(0u, 63340u, 46176u), vec4<u32>(4294967295u, 7024u, 0u, 22618u), vec4<bool>(true, false, true, true), vec4<u32>(1u, 96897u, 0u, 47496u))), Struct_4(Struct_3(1u, -770f, vec4<bool>(false, true, true, false), vec4<u32>(52828u, 11198u, 1u, 8297u)), Struct_2(false), vec2<i32>(-12854i, 1i), Struct_1(vec3<u32>(27873u, 1u, 0u), vec4<u32>(73153u, 6983u, 4294967295u, 74772u), vec4<bool>(false, true, true, true), vec4<u32>(4294967295u, 57279u, 48705u, 51444u))), Struct_4(Struct_3(0u, -170f, vec4<bool>(false, false, false, true), vec4<u32>(0u, 72101u, 34512u, 63627u)), Struct_2(false), vec2<i32>(1223i, 72206i), Struct_1(vec3<u32>(56785u, 0u, 1u), vec4<u32>(4294967295u, 1u, 0u, 47206u), vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, 71u, 8654u, 4294967295u))), Struct_4(Struct_3(60797u, 655f, vec4<bool>(false, false, true, false), vec4<u32>(0u, 0u, 74209u, 0u)), Struct_2(true), vec2<i32>(-43345i, 0i), Struct_1(vec3<u32>(0u, 0u, 0u), vec4<u32>(1u, 25820u, 24736u, 21993u), vec4<bool>(true, true, false, true), vec4<u32>(25235u, 66576u, 27558u, 12985u))), Struct_4(Struct_3(4294967295u, -742f, vec4<bool>(false, false, true, false), vec4<u32>(1u, 4294967295u, 65681u, 1u)), Struct_2(false), vec2<i32>(-1i, -54740i), Struct_1(vec3<u32>(4294967295u, 116457u, 8389u), vec4<u32>(48474u, 0u, 0u, 1u), vec4<bool>(true, true, true, false), vec4<u32>(71846u, 8803u, 28420u, 2217u))), Struct_4(Struct_3(0u, -619f, vec4<bool>(false, false, false, true), vec4<u32>(32056u, 1581u, 22427u, 0u)), Struct_2(true), vec2<i32>(i32(-2147483648), -14225i), Struct_1(vec3<u32>(18301u, 86530u, 64945u), vec4<u32>(12007u, 124405u, 52975u, 4294967295u), vec4<bool>(true, true, true, false), vec4<u32>(0u, 4294967295u, 12163u, 4294967295u))), Struct_4(Struct_3(0u, 1487f, vec4<bool>(true, false, false, false), vec4<u32>(1u, 1u, 12379u, 1u)), Struct_2(true), vec2<i32>(62752i, -61713i), Struct_1(vec3<u32>(81062u, 1u, 71668u), vec4<u32>(1u, 4294967295u, 14162u, 0u), vec4<bool>(true, false, true, true), vec4<u32>(32058u, 0u, 1u, 1u))), Struct_4(Struct_3(1u, -454f, vec4<bool>(true, true, true, false), vec4<u32>(14196u, 7102u, 4294967295u, 79510u)), Struct_2(true), vec2<i32>(19933i, 0i), Struct_1(vec3<u32>(11140u, 0u, 0u), vec4<u32>(4294967295u, 1u, 8255u, 1u), vec4<bool>(false, false, true, false), vec4<u32>(51665u, 19822u, 109620u, 4294967295u))), Struct_4(Struct_3(29475u, -604f, vec4<bool>(true, false, false, true), vec4<u32>(4294967295u, 10770u, 39704u, 1u)), Struct_2(false), vec2<i32>(15599i, i32(-2147483648)), Struct_1(vec3<u32>(0u, 38119u, 65240u), vec4<u32>(1u, 80053u, 4294967295u, 4294967295u), vec4<bool>(true, false, false, true), vec4<u32>(0u, 1u, 1854u, 4294967295u))));

var<private> global2: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(659f, -1430f, -331f), vec3<f32>(153f, -434f, 1958f), vec3<f32>(-537f, -1518f, 415f), vec3<f32>(539f, 1087f, -918f), vec3<f32>(1042f, -487f, 1417f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> bool {
    var var_0 = -555f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(945f)));
    var_0 = _wgslsmith_f_op_f32(floor(arg_3.x));
    global2 = array<vec3<f32>, 5>();
    global0 = array<i32, 31>();
    return !all(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> f32 {
    global1 = array<Struct_4, 18>();
    let var_0 = 43765u;
    global1 = array<Struct_4, 18>();
    global0 = array<i32, 31>();
    let var_1 = select(select(select(vec2<bool>(1u >= var_0, arg_0.a), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_0.a)), vec2<bool>(true, arg_0.a), !vec2<bool>(arg_0.a, arg_1))), !vec2<bool>(arg_0.a, true), all(vec2<bool>(all(vec3<bool>(arg_0.a, arg_1, arg_1)), arg_1))), vec2<bool>(arg_1, func_3(select(global0[_wgslsmith_index_u32(4294967295u, 31u)], -1i, arg_0.a) | -2147483647i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global2[_wgslsmith_index_u32(var_0, 5u)], global2[_wgslsmith_index_u32(var_0, 5u)])) - _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(var_0, 5u)])), vec2<u32>(_wgslsmith_mult_u32(u_input.a, var_0), 35533u | u_input.a), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -986f), _wgslsmith_f_op_f32(841f * 1309f), _wgslsmith_div_f32(2056f, 262f)))), any(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, true, arg_0.a)), vec3<bool>(arg_1, global0[_wgslsmith_index_u32(u_input.a, 31u)] >= -2147483647i, arg_1), arg_1)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1022f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1350f))));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: bool, arg_3: vec4<f32>) -> vec4<bool> {
    let var_0 = vec2<f32>(arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-462f)) - -1343f)));
    return vec4<bool>(!(true && arg_2), false || !(all(vec2<bool>(true, true)) | true), all(!vec4<bool>(false, !arg_1, true, false)), true != (!any(vec2<bool>(arg_1, false)) || false));
}

fn func_1(arg_0: vec2<f32>, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<u32>) -> vec3<u32> {
    global2 = array<vec3<f32>, 5>();
    let var_0 = func_4(global0[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(1u, arg_3.x), ~(~14939u) >> (arg_3.x % 32u), !any(vec2<bool>(false, true)) | all(vec3<bool>(true, true, false))), 31u)], _wgslsmith_div_f32(201f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(377f + -1780f) - -601f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(true), false)) + _wgslsmith_f_op_f32(arg_1 + 274f)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(288f, arg_0.x, _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1099f), -1424f, _wgslsmith_f_op_f32(f32(-1f) * -1631f), _wgslsmith_f_op_f32(floor(arg_1)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1124f, -734f, _wgslsmith_div_f32(-1320f, arg_1), _wgslsmith_f_op_f32(-arg_1)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 1000f, -1558f, arg_1))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_1)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_1, -1048f, var_0.x)), _wgslsmith_f_op_f32(-arg_1), var_0.x)))), arg_0.x, _wgslsmith_f_op_f32(sign(arg_0.x)), _wgslsmith_f_op_f32(round(arg_1))));
    global0 = array<i32, 31>();
    return vec3<u32>(~arg_2.x, u_input.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 18>();
    let var_0 = abs(~(~((vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(1u, 0u, u_input.a)) | vec3<u32>(18530u, 15465u, u_input.a))));
    let var_1 = Struct_1(~var_0 << (_wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.a, 79728u, var_0.x) >> (var_0 % vec3<u32>(32u))), func_1(vec2<f32>(250f, -616f), -992f, vec4<u32>(1u, var_0.x, 0u, u_input.a), vec2<u32>(var_0.x, var_0.x)) & _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 4294967295u, u_input.a), var_0)) % vec3<u32>(32u)), _wgslsmith_mult_vec4_u32(~select(vec4<u32>(4294967295u, 0u, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, var_0.x, u_input.a, 21282u), vec4<u32>(var_0.x, 0u, var_0.x, 4294967295u)), true), vec4<u32>(u_input.a, u_input.a, select(1862u, _wgslsmith_add_u32(var_0.x, 34381u), true), 1u)), func_4(firstTrailingBit(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, var_0.x), 31u)]), any(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, true)), true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-127f, -453f, 335f, -585f))))))), vec4<u32>(1u, 0u, ~u_input.a, 32546u));
    let var_2 = u_input.a;
    global1 = array<Struct_4, 18>();
    var var_3 = vec3<u32>(0u, var_1.d.x, 25310u);
    var var_4 = vec3<bool>(var_1.c.x, var_1.c.x, all(func_4(0i, var_1.c.x, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1598f, -124f, -1748f, -1000f)))))));
    global1 = array<Struct_4, 18>();
    var var_5 = Struct_2(func_3(-(global0[_wgslsmith_index_u32(19046u, 31u)] >> (49045u % 32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(188f, 161f, 2460f))) * _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(var_3.x, 5u)])), ~vec2<u32>(39252u, 4294967295u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1445f, -639f, -1973f)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, 684f, -629f), global2[_wgslsmith_index_u32(var_0.x, 5u)]))) == (any(func_4(global0[_wgslsmith_index_u32(20919u, 31u)], var_1.c.x, true, vec4<f32>(-851f, 476f, -450f, -682f)).yyy) & true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-400f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-2029f, -259f)))))), ~vec3<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(2147483647i, 0i, -5295i, global0[_wgslsmith_index_u32(4294967295u, 31u)])), abs(vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(var_3.x, 31u)], 2147483647i, -27140i))), 1i, _wgslsmith_mod_i32(-21031i, -48816i)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-283f, 1000f, -170f, 1037f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-144f, -788f, -867f, 191f) * vec4<f32>(199f, -407f, -907f, -365f)), !vec4<bool>(var_4.x, true, true, false))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_2(var_5.a), false)), 851f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1017f, 265f)), _wgslsmith_f_op_f32(261f - -1890f))) + -232f), var_1.d);
}

