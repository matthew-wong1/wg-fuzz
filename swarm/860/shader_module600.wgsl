struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: i32,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(vec2<f32>(-2100f, -914f), 4294967295u, Struct_1(vec2<i32>(i32(-2147483648), 34425i), vec2<i32>(1i, -42137i), 20693u), vec2<u32>(3777u, 12150u), vec4<bool>(false, false, false, false)), Struct_2(vec2<f32>(-699f, -2155f), 64488u, Struct_1(vec2<i32>(-1i, 1i), vec2<i32>(-10092i, 2147483647i), 1u), vec2<u32>(72674u, 40178u), vec4<bool>(false, false, false, false)), Struct_2(vec2<f32>(104f, -1692f), 1327u, Struct_1(vec2<i32>(0i, 1i), vec2<i32>(i32(-2147483648), -21785i), 12037u), vec2<u32>(4294967295u, 49290u), vec4<bool>(true, true, true, false)), Struct_2(vec2<f32>(1046f, -1414f), 15691u, Struct_1(vec2<i32>(0i, 5959i), vec2<i32>(i32(-2147483648), 38303i), 1u), vec2<u32>(20958u, 1u), vec4<bool>(false, false, true, false)), Struct_2(vec2<f32>(158f, 190f), 90404u, Struct_1(vec2<i32>(i32(-2147483648), 25560i), vec2<i32>(2147483647i, 2147483647i), 0u), vec2<u32>(0u, 55284u), vec4<bool>(true, false, true, true)), Struct_2(vec2<f32>(-1163f, 1000f), 1u, Struct_1(vec2<i32>(15594i, 0i), vec2<i32>(1i, 1i), 1u), vec2<u32>(0u, 1u), vec4<bool>(true, true, false, true)), Struct_2(vec2<f32>(688f, 2169f), 1419u, Struct_1(vec2<i32>(24240i, 1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), 4294967295u), vec2<u32>(4294967295u, 67463u), vec4<bool>(true, true, true, true)), Struct_2(vec2<f32>(-755f, -1488f), 90495u, Struct_1(vec2<i32>(-11109i, 0i), vec2<i32>(-10753i, 2147483647i), 1u), vec2<u32>(0u, 71232u), vec4<bool>(false, false, false, false)), Struct_2(vec2<f32>(-273f, -127f), 0u, Struct_1(vec2<i32>(37432i, 8139i), vec2<i32>(-21969i, 1i), 0u), vec2<u32>(0u, 1u), vec4<bool>(true, true, true, false)), Struct_2(vec2<f32>(871f, -926f), 77183u, Struct_1(vec2<i32>(2147483647i, -1i), vec2<i32>(i32(-2147483648), -9459i), 4294967295u), vec2<u32>(1u, 1u), vec4<bool>(false, false, false, false)), Struct_2(vec2<f32>(224f, -557f), 32986u, Struct_1(vec2<i32>(2147483647i, 1057i), vec2<i32>(-12718i, 38941i), 21510u), vec2<u32>(0u, 0u), vec4<bool>(true, false, false, true)), Struct_2(vec2<f32>(-249f, -116f), 1u, Struct_1(vec2<i32>(1i, -22862i), vec2<i32>(1i, -39192i), 41041u), vec2<u32>(4294967295u, 57477u), vec4<bool>(true, false, false, false)), Struct_2(vec2<f32>(1000f, 1031f), 1217u, Struct_1(vec2<i32>(-14968i, 0i), vec2<i32>(-1i, 26276i), 28522u), vec2<u32>(0u, 0u), vec4<bool>(true, false, true, true)));

var<private> global2: Struct_5;

var<private> global3: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, -17246i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-1i, 4962i), vec2<i32>(-17249i, -1i));

var<private> global4: array<u32, 18> = array<u32, 18>(43652u, 96995u, 4294967295u, 34008u, 4294967295u, 52671u, 4294967295u, 16517u, 11831u, 1u, 85534u, 0u, 241u, 1174u, 11523u, 95201u, 0u, 36812u);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: bool) -> bool {
    let var_0 = all(select(vec4<bool>(any(vec4<bool>(true, true, true, true)), false, true, (arg_2 | true) || true), !vec4<bool>(arg_2, false, true, any(vec4<bool>(false, true, false, false))), any(select(select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(arg_2, arg_2, false, false), vec4<bool>(true, arg_2, true, arg_2)), !vec4<bool>(arg_2, false, arg_2, arg_2), select(vec4<bool>(arg_2, arg_2, false, true), vec4<bool>(false, true, true, false), true)))));
    let var_1 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-130f, 1021f)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_1.b)) + _wgslsmith_f_op_vec2_f32(-arg_1.b)), vec2<f32>(_wgslsmith_f_op_f32(-1000f + -1761f), arg_1.b.x)))), ~1u >> (~global4[_wgslsmith_index_u32(4294967295u, 18u)] % 32u), arg_1.c, arg_1.a, select(select(!vec4<bool>(var_0, arg_2, true, var_0), select(select(vec4<bool>(true, var_0, true, true), vec4<bool>(var_0, arg_2, arg_2, true), vec4<bool>(var_0, var_0, true, true)), select(vec4<bool>(false, var_0, var_0, true), vec4<bool>(false, var_0, true, var_0), vec4<bool>(var_0, var_0, true, arg_2)), !vec4<bool>(var_0, var_0, false, arg_2)), !vec4<bool>(arg_2, var_0, arg_2, var_0)), select(vec4<bool>(true, arg_2, true, any(vec3<bool>(arg_2, arg_2, arg_2))), !select(vec4<bool>(false, arg_2, true, var_0), vec4<bool>(false, true, true, var_0), vec4<bool>(arg_2, var_0, arg_2, true)), arg_2), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b.x * arg_1.b.x))) != 529f));
    global0 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(max(-908f, var_1.a.x));
    let var_3 = 43155i;
    return true;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> bool {
    var var_0 = firstTrailingBit(0u) & 1u;
    var var_1 = vec4<bool>(!((func_3(31854i, Struct_4(vec2<u32>(u_input.a.x, 0u), vec2<f32>(798f, -2386f), Struct_1(global3[_wgslsmith_index_u32(68572u, 5u)], global3[_wgslsmith_index_u32(0u, 5u)], 79239u), vec3<u32>(111126u, 4294967295u, 25508u), 11702i), true) | any(vec3<bool>(true, true, true))) & true), -27799i >= ~global2.a.x, func_3(u_input.c, Struct_4(u_input.d.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-728f, 1183f) + vec2<f32>(-1580f, 800f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-949f, -503f) * vec2<f32>(1000f, -371f))), arg_1, vec3<u32>(1u, countOneBits(1u), 75221u), -1i), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)) && !all(vec3<bool>(false, true, true))), all(select(vec3<bool>(true, true, true), vec3<bool>(any(vec3<bool>(false, true, true)), true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(false, true, true), 1u == arg_1.c))));
    let var_2 = any(select(vec4<bool>(true, false, any(!vec3<bool>(true, var_1.x, var_1.x)), true), vec4<bool>(var_1.x, _wgslsmith_add_u32(u_input.b, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(arg_0, 18u)], 18u)]) > ~29261u, true, var_1.x), var_1.x));
    let var_3 = 31993i >> (arg_1.c % 32u);
    let var_4 = Struct_3(Struct_2(vec2<f32>(-222f, _wgslsmith_f_op_f32(-1140f - _wgslsmith_f_op_f32(1216f * 184f))), arg_1.c, Struct_1(-(arg_1.b ^ u_input.e.zz), vec2<i32>(~u_input.c, arg_1.a.x), arg_0), ~((vec2<u32>(u_input.d.x, 1u) >> (u_input.a.ww % vec2<u32>(32u))) & ~vec2<u32>(global4[_wgslsmith_index_u32(41581u, 18u)], 28194u)), select(select(select(vec4<bool>(true, true, false, false), vec4<bool>(var_2, var_1.x, true, true), false), vec4<bool>(true, var_1.x, var_1.x, false), false && var_2), vec4<bool>(true, false, true, true), var_2)), var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-166f, -1317f) - vec2<f32>(-505f, -1416f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(537f, -1476f), vec2<f32>(997f, 419f), false)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-548f, -1330f) * vec2<f32>(-382f, -701f)), vec2<f32>(1f, 1f)) - vec2<f32>(-569f, 1f))), ~reverseBits(-u_input.e));
    return all(!var_4.a.e);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_5, arg_3: vec4<f32>) -> Struct_5 {
    global3 = array<vec2<i32>, 5>();
    var var_0 = global4[_wgslsmith_index_u32(min(0u, 0u), 18u)];
    var var_1 = arg_2;
    global2 = Struct_5(firstTrailingBit(min(vec2<i32>(_wgslsmith_mod_i32(u_input.e.x, -658i), 1i), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 1838i), _wgslsmith_sub_vec2_i32(global2.a, u_input.e.yz)))));
    var_1 = arg_2;
    return Struct_5(-_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(abs(global3[_wgslsmith_index_u32(4294967295u, 5u)]), ~arg_2.a), global2.a));
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: vec3<u32>) -> vec2<f32> {
    global3 = array<vec2<i32>, 5>();
    var var_0 = arg_3;
    var var_1 = func_4(select(!vec4<bool>(select(arg_2, arg_2, false), !arg_2, all(vec2<bool>(arg_2, arg_2)), any(vec2<bool>(true, false))), !(!vec4<bool>(false, arg_2, false, arg_2)), func_2(10215u, Struct_1(vec2<i32>(42726i, global2.a.x) | vec2<i32>(global2.a.x, -54688i), vec2<i32>(global2.a.x, u_input.e.x) | vec2<i32>(u_input.e.x, 1i), ~52822u))), _wgslsmith_f_op_f32(sign(307f)), Struct_5(u_input.e.xx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1645f, _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(trunc(arg_1)))), arg_1, _wgslsmith_f_op_f32(abs(arg_1)))));
    var var_2 = Struct_5(var_1.a);
    var var_3 = Struct_1(max(vec2<i32>(global2.a.x, i32(-1i) * -1i), vec2<i32>((global2.a.x << (49314u % 32u)) << (reverseBits(arg_3.x) % 32u), -1i)), u_input.e.xx, max(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.x, 4294967295u, u_input.a.x, ~arg_0), countOneBits(vec4<u32>(arg_0, arg_3.x, arg_0, 36188u))), _wgslsmith_add_u32(~var_0.x, arg_3.x)));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-352f, arg_1)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(4294967295u, -558f, false, vec3<u32>(u_input.b, u_input.a.x, 1u))))) * vec2<f32>(_wgslsmith_f_op_f32(sign(-1949f)), 144f)), _wgslsmith_add_u32(73700u, _wgslsmith_mult_u32(~(~8107u), u_input.b)), Struct_1(func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), -1000f, Struct_5(-vec2<i32>(2147483647i, global2.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(364f, -277f, 227f, 1249f)))).a, -(~vec2<i32>(19869i, 34195i) ^ select(global2.a, vec2<i32>(u_input.c, u_input.c), vec2<bool>(true, false))), ~(~4294967295u | (u_input.d.x | u_input.a.x))), u_input.a.zx, vec4<bool>(!select(any(vec3<bool>(false, true, true)), func_3(u_input.e.x, Struct_4(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(46748u, 18u)], 18u)], global4[_wgslsmith_index_u32(u_input.d.x, 18u)]), vec2<f32>(527f, -2390f), Struct_1(vec2<i32>(-69032i, u_input.c), u_input.e.xx, 4294967295u), u_input.a.yxx, u_input.c), false), true), func_2(4294967295u, Struct_1(global2.a, func_4(vec4<bool>(true, false, false, true), -849f, Struct_5(global2.a), vec4<f32>(925f, -1132f, -787f, -1383f)).a, firstLeadingBit(96900u))), false, func_3(u_input.c, Struct_4(~vec2<u32>(u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1808f, 1000f))), Struct_1(global3[_wgslsmith_index_u32(40593u, 5u)], vec2<i32>(global2.a.x, global2.a.x), 4294967295u), select(u_input.d, vec3<u32>(70053u, 4379u, 4294967295u), false), 2147483647i), true)));
    global3 = array<vec2<i32>, 5>();
    var var_1 = vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(round(907f)), var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))))));
    global1 = array<Struct_2, 13>();
    var var_2 = firstLeadingBit(u_input.a.zyy);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + var_1.x)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x))), _wgslsmith_f_op_f32(ceil(var_0.a.x))))));
}

