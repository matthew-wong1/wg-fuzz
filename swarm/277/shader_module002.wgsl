struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(true, true, false, true, false, false, false, false, false, false, false, false, true, true, true, true, false, true, true, false, true, true, true, false, false, false, true, true, false, false, false, false);

var<private> global1: array<f32, 2>;

var<private> global2: array<f32, 11> = array<f32, 11>(711f, 837f, -1000f, -1000f, -338f, 280f, 171f, 1472f, 1414f, -1822f, -354f);

var<private> global3: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec2<u32>(1u, 75869u), Struct_1(-1i, true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 1u), vec4<f32>(724f, -757f, -286f, -1513f)), Struct_2(Struct_1(1i, true, vec4<u32>(1592u, 4294967295u, 22719u, 71821u), vec4<f32>(154f, -1223f, 776f, -650f)), Struct_1(39611i, false, vec4<u32>(25228u, 4294967295u, 5743u, 44425u), vec4<f32>(-321f, -116f, 387f, 737f))), vec2<u32>(4294967295u, 4294967295u), 0u), Struct_3(vec2<u32>(4294967295u, 28091u), Struct_1(43434i, true, vec4<u32>(111704u, 1u, 0u, 4294967295u), vec4<f32>(349f, 1076f, 629f, 442f)), Struct_2(Struct_1(-13173i, false, vec4<u32>(1u, 66421u, 4294967295u, 67575u), vec4<f32>(-712f, 1054f, -2083f, 1000f)), Struct_1(i32(-2147483648), false, vec4<u32>(6298u, 0u, 55692u, 0u), vec4<f32>(-903f, -192f, -1000f, 566f))), vec2<u32>(0u, 1u), 28102u), Struct_3(vec2<u32>(1u, 0u), Struct_1(11552i, true, vec4<u32>(69364u, 0u, 0u, 4294967295u), vec4<f32>(-1985f, -386f, 1873f, -416f)), Struct_2(Struct_1(48922i, false, vec4<u32>(0u, 30502u, 1u, 1u), vec4<f32>(-2209f, 352f, 553f, 730f)), Struct_1(-10121i, false, vec4<u32>(1u, 34100u, 69975u, 1u), vec4<f32>(767f, 631f, 219f, 929f))), vec2<u32>(97636u, 0u), 22957u), Struct_3(vec2<u32>(0u, 4294967295u), Struct_1(2147483647i, false, vec4<u32>(40443u, 0u, 92545u, 0u), vec4<f32>(-1280f, 725f, 933f, -1122f)), Struct_2(Struct_1(2147483647i, false, vec4<u32>(6112u, 73826u, 44079u, 0u), vec4<f32>(1000f, -1262f, -266f, -1181f)), Struct_1(-1i, true, vec4<u32>(1u, 39762u, 4294967295u, 1u), vec4<f32>(-447f, 1113f, -1000f, -152f))), vec2<u32>(0u, 0u), 4294967295u), Struct_3(vec2<u32>(4294967295u, 4294967295u), Struct_1(-1i, true, vec4<u32>(66776u, 1u, 4294967295u, 11671u), vec4<f32>(976f, -1000f, -1143f, -814f)), Struct_2(Struct_1(i32(-2147483648), true, vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<f32>(577f, -330f, 1153f, 385f)), Struct_1(-45331i, false, vec4<u32>(34513u, 0u, 39806u, 0u), vec4<f32>(1000f, -669f, 752f, 527f))), vec2<u32>(96378u, 1u), 17437u), Struct_3(vec2<u32>(0u, 0u), Struct_1(i32(-2147483648), true, vec4<u32>(9247u, 1u, 4294967295u, 47024u), vec4<f32>(-344f, -1874f, -1000f, -1000f)), Struct_2(Struct_1(-12715i, false, vec4<u32>(47133u, 4294967295u, 23359u, 43211u), vec4<f32>(612f, -1169f, 132f, -867f)), Struct_1(1i, false, vec4<u32>(0u, 4294967295u, 55583u, 72789u), vec4<f32>(580f, -1057f, -2106f, 113f))), vec2<u32>(63434u, 4294967295u), 0u), Struct_3(vec2<u32>(2328u, 17136u), Struct_1(-35315i, false, vec4<u32>(16203u, 1u, 1u, 0u), vec4<f32>(1023f, 1000f, -2154f, 619f)), Struct_2(Struct_1(0i, false, vec4<u32>(4294967295u, 13991u, 4294967295u, 1u), vec4<f32>(-649f, 467f, 617f, 1905f)), Struct_1(-34641i, false, vec4<u32>(11994u, 0u, 1u, 0u), vec4<f32>(-425f, 1022f, 264f, 1186f))), vec2<u32>(4294967295u, 26918u), 4294967295u), Struct_3(vec2<u32>(4294967295u, 31115u), Struct_1(-25980i, false, vec4<u32>(4294967295u, 30460u, 0u, 46298u), vec4<f32>(2415f, -1591f, 731f, 1776f)), Struct_2(Struct_1(i32(-2147483648), true, vec4<u32>(1u, 0u, 5332u, 84105u), vec4<f32>(-161f, 1180f, -322f, 1486f)), Struct_1(i32(-2147483648), true, vec4<u32>(8301u, 0u, 1u, 0u), vec4<f32>(298f, -1397f, -149f, 508f))), vec2<u32>(0u, 20523u), 4294967295u), Struct_3(vec2<u32>(53652u, 44602u), Struct_1(1i, true, vec4<u32>(1u, 0u, 1u, 1u), vec4<f32>(-1064f, -116f, -1081f, -487f)), Struct_2(Struct_1(0i, false, vec4<u32>(12347u, 1u, 1u, 9118u), vec4<f32>(155f, 271f, -927f, 1840f)), Struct_1(2147483647i, true, vec4<u32>(4294967295u, 49958u, 0u, 15050u), vec4<f32>(1000f, -406f, 1118f, 1000f))), vec2<u32>(1u, 0u), 9973u), Struct_3(vec2<u32>(65281u, 0u), Struct_1(2147483647i, false, vec4<u32>(0u, 0u, 29670u, 4294967295u), vec4<f32>(251f, 1000f, -664f, -1568f)), Struct_2(Struct_1(i32(-2147483648), false, vec4<u32>(0u, 0u, 4294967295u, 32036u), vec4<f32>(991f, 212f, -574f, 333f)), Struct_1(2147483647i, true, vec4<u32>(1u, 24653u, 1u, 4294967295u), vec4<f32>(-226f, 1000f, -298f, -1062f))), vec2<u32>(7878u, 1u), 1u), Struct_3(vec2<u32>(0u, 1u), Struct_1(2147483647i, true, vec4<u32>(34946u, 20472u, 36963u, 2288u), vec4<f32>(-205f, 492f, 276f, 1314f)), Struct_2(Struct_1(-1i, false, vec4<u32>(1u, 30294u, 0u, 66840u), vec4<f32>(-1110f, -554f, 644f, -471f)), Struct_1(-1i, true, vec4<u32>(0u, 1u, 17465u, 4294967295u), vec4<f32>(-1362f, -437f, 1215f, 943f))), vec2<u32>(1u, 0u), 4294967295u), Struct_3(vec2<u32>(48365u, 31928u), Struct_1(79407i, false, vec4<u32>(60159u, 4294967295u, 4294967295u, 31934u), vec4<f32>(2995f, 2330f, 993f, -1369f)), Struct_2(Struct_1(33039i, false, vec4<u32>(25085u, 1068u, 19764u, 26736u), vec4<f32>(1601f, 1000f, 835f, -362f)), Struct_1(0i, true, vec4<u32>(1u, 1u, 1681u, 9258u), vec4<f32>(1024f, 1261f, -1399f, 122f))), vec2<u32>(0u, 45196u), 4294967295u), Struct_3(vec2<u32>(4294967295u, 19432u), Struct_1(1i, true, vec4<u32>(1u, 33054u, 68823u, 1u), vec4<f32>(177f, 541f, 553f, 740f)), Struct_2(Struct_1(-52045i, true, vec4<u32>(35938u, 4294967295u, 1u, 1416u), vec4<f32>(546f, 1639f, 382f, -377f)), Struct_1(0i, true, vec4<u32>(0u, 4294967295u, 37799u, 0u), vec4<f32>(-581f, -380f, -994f, -955f))), vec2<u32>(1u, 0u), 14743u), Struct_3(vec2<u32>(4294967295u, 4294967295u), Struct_1(92628i, false, vec4<u32>(1u, 1u, 0u, 96916u), vec4<f32>(-867f, 1000f, 250f, -853f)), Struct_2(Struct_1(0i, false, vec4<u32>(1u, 62217u, 72328u, 135895u), vec4<f32>(883f, 2622f, -205f, 1728f)), Struct_1(15241i, true, vec4<u32>(24606u, 0u, 8062u, 0u), vec4<f32>(1805f, -869f, -879f, -1583f))), vec2<u32>(1u, 48431u), 26046u), Struct_3(vec2<u32>(0u, 4294967295u), Struct_1(2147483647i, true, vec4<u32>(0u, 44410u, 30617u, 71958u), vec4<f32>(-636f, -1000f, -1654f, 234f)), Struct_2(Struct_1(-12524i, true, vec4<u32>(0u, 32082u, 0u, 1u), vec4<f32>(1438f, -502f, -286f, -1289f)), Struct_1(i32(-2147483648), false, vec4<u32>(1u, 38919u, 1u, 0u), vec4<f32>(781f, 430f, -1301f, 1068f))), vec2<u32>(0u, 89505u), 56013u), Struct_3(vec2<u32>(29942u, 0u), Struct_1(i32(-2147483648), true, vec4<u32>(5425u, 0u, 3050u, 0u), vec4<f32>(-1210f, -1000f, -1252f, 1072f)), Struct_2(Struct_1(-21093i, true, vec4<u32>(39084u, 15536u, 1u, 1u), vec4<f32>(-265f, 1266f, 1670f, 549f)), Struct_1(20393i, false, vec4<u32>(4294967295u, 1u, 97179u, 14816u), vec4<f32>(-155f, 379f, -816f, 276f))), vec2<u32>(1u, 66337u), 0u), Struct_3(vec2<u32>(1u, 1u), Struct_1(5363i, false, vec4<u32>(72653u, 0u, 1u, 16836u), vec4<f32>(-555f, 364f, -703f, 175f)), Struct_2(Struct_1(0i, true, vec4<u32>(71810u, 37005u, 48804u, 74021u), vec4<f32>(254f, 265f, -569f, -248f)), Struct_1(-37094i, true, vec4<u32>(80140u, 0u, 0u, 1u), vec4<f32>(-1000f, -350f, -1000f, -1430f))), vec2<u32>(58114u, 2166u), 4294967295u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    global3 = array<Struct_3, 17>();
    let var_0 = u_input.d;
    global3 = array<Struct_3, 17>();
    var var_1 = Struct_4(~1u, true, -15695i);
    global2 = array<f32, 11>();
    return any(vec2<bool>(global1[_wgslsmith_index_u32(19513u, 2u)] >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 2u)] + 253f), _wgslsmith_f_op_f32(-921f - 318f)), any(vec4<bool>(true, true, true, true))));
}

fn func_2() -> vec4<u32> {
    var var_0 = select(vec2<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(54324u) & 33294u, 32u)], !func_3()), select(vec2<bool>(all(vec3<bool>(true, false, global0[_wgslsmith_index_u32(6538u, 32u)])), !global0[_wgslsmith_index_u32(u_input.e.x & u_input.e.x, 32u)]), vec2<bool>(true, select(global0[_wgslsmith_index_u32(u_input.e.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], true)), !select(select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 32u)], false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 32u)], true), global0[_wgslsmith_index_u32(u_input.e.x, 32u)]), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], false), vec2<bool>(true, true))), select(false, !(global0[_wgslsmith_index_u32(u_input.c.x, 32u)] && true), !global0[_wgslsmith_index_u32(select(~0u, ~u_input.b.x, false & global0[_wgslsmith_index_u32(u_input.c.x, 32u)]), 32u)]));
    global3 = array<Struct_3, 17>();
    let var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(645f))) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(reverseBits(u_input.e.x), 11u)])), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 2u)] + -506f)))))), global2[_wgslsmith_index_u32(0u, 11u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(940f))));
    return _wgslsmith_clamp_vec4_u32(~vec4<u32>(~(~39881u), ~(~u_input.a.x), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.e.x, 6474u, 1u) << (vec4<u32>(u_input.e.x, u_input.b.x, u_input.e.x, 1u) % vec4<u32>(32u)), u_input.c)), u_input.c, countOneBits(~select(~u_input.a, vec4<u32>(u_input.c.x, u_input.b.x, u_input.a.x, 35694u), !vec4<bool>(var_0.x, true, true, var_0.x))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> bool {
    let var_0 = arg_0;
    global1 = array<f32, 2>();
    let var_1 = Struct_1(_wgslsmith_mod_i32(_wgslsmith_add_i32(abs(reverseBits(u_input.d)), arg_1), -17180i), global1[_wgslsmith_index_u32(25614u, 2u)] >= 941f, func_2(), arg_0.d);
    global0 = array<bool, 32>();
    global1 = array<f32, 2>();
    return select(false | any(vec4<bool>(var_1.c.x >= arg_0.c.x, !global0[_wgslsmith_index_u32(0u, 32u)], 197f <= global2[_wgslsmith_index_u32(u_input.b.x, 11u)], arg_0.a >= -12191i)), true, all(vec2<bool>(!var_0.b, global0[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(u_input.b.x, var_1.c.x), _wgslsmith_dot_vec3_u32(arg_0.c.yxw, vec3<u32>(var_1.c.x, 0u, u_input.c.x)), arg_2), 32u)])));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: bool, arg_3: f32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-655f)), -1000f))), _wgslsmith_f_op_f32(-1271f * -641f)));
    let var_1 = global3[_wgslsmith_index_u32(150u, 17u)];
    global3 = array<Struct_3, 17>();
    var var_2 = Struct_4(var_1.c.a.c.x, global2[_wgslsmith_index_u32(abs(~u_input.e.x), 11u)] >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1038f))), u_input.d);
    global3 = array<Struct_3, 17>();
    return Struct_2(var_1.c.b, Struct_1(var_1.b.a, var_1.c.b.b, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, ~4294967295u, 102586u, select(51085u, 38948u, true)), u_input.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c.a.d + var_1.c.a.d) - _wgslsmith_f_op_vec4_f32(-var_1.b.d)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1084f, global2[_wgslsmith_index_u32(u_input.e.x, 11u)], 279f, global2[_wgslsmith_index_u32(69624u, 11u)]) + vec4<f32>(var_1.c.a.d.x, -2276f, global1[_wgslsmith_index_u32(1u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)])))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    global0 = array<bool, 32>();
    var var_0 = ~0i;
    global3 = array<Struct_3, 17>();
    let var_1 = Struct_4(~(~(arg_1.a.c.x & arg_0.c.x)) | _wgslsmith_mod_u32(abs(0u), arg_0.c.x), true, ~(~(-46833i)));
    var var_2 = func_4(!vec2<bool>(true & !var_1.b, any(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.b.c.x, 32u)], arg_0.b, true, global0[_wgslsmith_index_u32(1u, 32u)]), vec4<bool>(var_1.b, true, false, false), true))), vec3<i32>(-u_input.d, ~(~abs(arg_1.a.a)), -max(-var_1.c, 2147483647i)), true, arg_0.d.x).a;
    return func_4(select(!select(vec2<bool>(arg_1.b.b, arg_1.b.b), vec2<bool>(arg_0.b, false), select(vec2<bool>(var_1.b, var_1.b), vec2<bool>(arg_1.a.b, true), var_2.b)), !select(vec2<bool>(arg_0.b, false), vec2<bool>(true, true), vec2<bool>(arg_0.b, global0[_wgslsmith_index_u32(var_2.c.x, 32u)])), global0[_wgslsmith_index_u32(arg_1.b.c.x << (~var_1.a % 32u), 32u)]), vec3<i32>(-2147483647i, arg_0.a, -1i), all(!(!(!vec2<bool>(var_1.b, false)))), var_2.d.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 32>();
    var var_0 = func_5(Struct_1(u_input.d, true, ~(~max(u_input.a, vec4<u32>(u_input.e.x, u_input.e.x, u_input.e.x, 69265u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.e.x, 11u)], global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 2u)], -342f, global1[_wgslsmith_index_u32(u_input.a.x, 2u)], 2347f))))), func_4(!vec2<bool>(true, all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 32u)], false, true, true))), select(~(~vec3<i32>(u_input.d, u_input.d, -30800i)), vec3<i32>(u_input.d, 2946i, 0i), func_1(Struct_1(2147483647i, true, u_input.a, vec4<f32>(global2[_wgslsmith_index_u32(3230u, 11u)], global2[_wgslsmith_index_u32(u_input.a.x, 11u)], -223f, -1053f)), 0i, global0[_wgslsmith_index_u32(98074u, 32u)], vec3<i32>(1i, u_input.d, -29202i) & vec3<i32>(2147483647i, 10234i, u_input.d))), u_input.a.x != _wgslsmith_clamp_u32(113031u, 4294967295u, _wgslsmith_mod_u32(u_input.b.x, u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], -590f) - _wgslsmith_f_op_f32(f32(-1f) * -1571f)))));
    let var_1 = var_0.b.d;
    var var_2 = Struct_4(u_input.a.x, var_0.a.b, min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.b.a, -39015i, var_0.a.a, u_input.d), vec4<i32>(-2147483647i, _wgslsmith_add_i32(var_0.a.a, 2147483647i), ~var_0.a.a, ~(-5606i))), func_5(var_0.a, Struct_2(func_4(vec2<bool>(false, var_0.a.b), vec3<i32>(-1i, -1i, var_0.a.a), true, global2[_wgslsmith_index_u32(u_input.e.x, 11u)]).a, func_5(Struct_1(60373i, true, vec4<u32>(u_input.b.x, u_input.a.x, var_0.a.c.x, 4294967295u), vec4<f32>(1179f, -203f, global1[_wgslsmith_index_u32(u_input.c.x, 2u)], global2[_wgslsmith_index_u32(0u, 11u)])), Struct_2(var_0.a, var_0.b)).b)).b.a));
    global2 = array<f32, 11>();
    global1 = array<f32, 2>();
    var var_3 = all(select(select(!select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 32u)], false, var_2.b), vec4<bool>(global0[_wgslsmith_index_u32(27094u, 32u)], var_2.b, false, var_2.b), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 32u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], var_0.a.b)), select(select(vec4<bool>(false, var_2.b, global0[_wgslsmith_index_u32(u_input.c.x, 32u)], false), vec4<bool>(true, var_2.b, false, global0[_wgslsmith_index_u32(var_2.a, 32u)]), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, var_2.b, false, false), vec4<bool>(true, var_0.a.b, false, false), var_0.a.b), !global0[_wgslsmith_index_u32(33597u, 32u)]), true), vec4<bool>(true && select(global0[_wgslsmith_index_u32(0u, 32u)], false, true), false, ~var_0.a.c.x > 17842u, 4294967295u <= _wgslsmith_div_u32(u_input.c.x, var_0.b.c.x)), !select(select(vec4<bool>(true, var_0.a.b, false, true), vec4<bool>(var_0.a.b, false, global0[_wgslsmith_index_u32(u_input.a.x, 32u)], global0[_wgslsmith_index_u32(var_0.b.c.x, 32u)]), var_0.b.b), select(vec4<bool>(false, false, true, var_2.b), vec4<bool>(var_2.b, var_2.b, true, false), false), global2[_wgslsmith_index_u32(u_input.c.x, 11u)] > var_0.b.d.x)));
    var var_4 = Struct_4(~var_0.a.c.x, -12772i == countOneBits(abs(u_input.d)), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(abs(5585u), ~(var_0.b.a ^ _wgslsmith_clamp_i32(_wgslsmith_div_i32(var_4.c, 1i), ~var_0.b.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 6752i, 0i, var_4.c), vec4<i32>(-55952i, 8579i, u_input.d, var_0.a.a)))), ~(~vec4<u32>(26244u | var_2.a, 4294967295u | var_4.a, func_4(vec2<bool>(var_2.b, var_4.b), vec3<i32>(10790i, 44969i, -51669i), var_2.b, global2[_wgslsmith_index_u32(1u, 11u)]).a.c.x, 34719u)));
}

