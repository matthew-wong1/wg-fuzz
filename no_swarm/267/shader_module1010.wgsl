struct Struct_1 {
    a: f32,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16> = array<Struct_3, 16>(Struct_3(vec2<f32>(1768f, 1000f), Struct_2(vec3<u32>(23215u, 0u, 0u), vec4<u32>(11970u, 4294967295u, 0u, 43086u), -48119i, Struct_1(302f, 124321u, 0i, vec3<bool>(true, true, false), 1024f))), Struct_3(vec2<f32>(-177f, 966f), Struct_2(vec3<u32>(1u, 4294967295u, 24363u), vec4<u32>(4294967295u, 9605u, 37766u, 42992u), 0i, Struct_1(618f, 20728u, 25177i, vec3<bool>(false, false, false), -816f))), Struct_3(vec2<f32>(-404f, -574f), Struct_2(vec3<u32>(4294967295u, 102983u, 1u), vec4<u32>(0u, 102479u, 14928u, 1u), -1i, Struct_1(261f, 4294967295u, 0i, vec3<bool>(false, true, false), 1406f))), Struct_3(vec2<f32>(1807f, 191f), Struct_2(vec3<u32>(4294967295u, 0u, 1u), vec4<u32>(0u, 1u, 13977u, 4294967295u), 1i, Struct_1(745f, 4294967295u, 2147483647i, vec3<bool>(false, true, false), 1405f))), Struct_3(vec2<f32>(-1801f, -584f), Struct_2(vec3<u32>(6237u, 20498u, 4294967295u), vec4<u32>(76961u, 4294967295u, 22478u, 0u), 73176i, Struct_1(156f, 14928u, -10400i, vec3<bool>(false, false, false), -683f))), Struct_3(vec2<f32>(1593f, -364f), Struct_2(vec3<u32>(47235u, 12820u, 19587u), vec4<u32>(20234u, 24030u, 4294967295u, 0u), i32(-2147483648), Struct_1(-1070f, 32310u, -47509i, vec3<bool>(true, true, false), -807f))), Struct_3(vec2<f32>(2192f, -2031f), Struct_2(vec3<u32>(4294967295u, 1u, 1u), vec4<u32>(4294967295u, 102182u, 59847u, 0u), 2147483647i, Struct_1(682f, 4294967295u, -1i, vec3<bool>(true, true, false), 277f))), Struct_3(vec2<f32>(-3020f, 1212f), Struct_2(vec3<u32>(16952u, 13922u, 0u), vec4<u32>(31873u, 4294967295u, 4294967295u, 36129u), 17022i, Struct_1(-2939f, 0u, -16213i, vec3<bool>(false, true, false), 874f))), Struct_3(vec2<f32>(-1920f, 1613f), Struct_2(vec3<u32>(53020u, 22299u, 36571u), vec4<u32>(40433u, 0u, 30560u, 4294967295u), 0i, Struct_1(-1000f, 0u, 86865i, vec3<bool>(true, false, true), -386f))), Struct_3(vec2<f32>(286f, 385f), Struct_2(vec3<u32>(4294967295u, 0u, 8908u), vec4<u32>(1u, 1u, 58124u, 1u), -74602i, Struct_1(-593f, 3112u, 2147483647i, vec3<bool>(false, false, true), 554f))), Struct_3(vec2<f32>(-816f, 1000f), Struct_2(vec3<u32>(10185u, 4294967295u, 48226u), vec4<u32>(70981u, 34296u, 17790u, 1u), 0i, Struct_1(-1911f, 1u, 2147483647i, vec3<bool>(true, true, false), 1410f))), Struct_3(vec2<f32>(2161f, -663f), Struct_2(vec3<u32>(0u, 21695u, 41134u), vec4<u32>(1152u, 76109u, 51591u, 42091u), -8584i, Struct_1(-1095f, 8951u, -37701i, vec3<bool>(false, false, true), 194f))), Struct_3(vec2<f32>(-454f, -1000f), Struct_2(vec3<u32>(78679u, 67909u, 4294967295u), vec4<u32>(1u, 0u, 70384u, 42171u), 2147483647i, Struct_1(1000f, 0u, i32(-2147483648), vec3<bool>(false, true, false), -747f))), Struct_3(vec2<f32>(-1361f, 299f), Struct_2(vec3<u32>(47061u, 104587u, 4294967295u), vec4<u32>(0u, 1u, 4294967295u, 0u), 39015i, Struct_1(-568f, 1u, -14285i, vec3<bool>(true, false, true), 1544f))), Struct_3(vec2<f32>(-1587f, 1000f), Struct_2(vec3<u32>(1u, 0u, 0u), vec4<u32>(1u, 4294967295u, 20768u, 1u), 77010i, Struct_1(1000f, 4294967295u, -11281i, vec3<bool>(true, true, false), 1112f))), Struct_3(vec2<f32>(479f, 720f), Struct_2(vec3<u32>(15127u, 12686u, 0u), vec4<u32>(10131u, 48314u, 34136u, 0u), 0i, Struct_1(-1000f, 0u, 16815i, vec3<bool>(false, true, false), 441f))));

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec3<u32>(70442u, 4294967295u, 1u), vec4<u32>(4294967295u, 0u, 1u, 3698u), 2147483647i, Struct_1(-1235f, 4294967295u, -1i, vec3<bool>(true, true, true), 391f)), Struct_2(vec3<u32>(0u, 17585u, 6615u), vec4<u32>(1u, 1u, 72919u, 14489u), 0i, Struct_1(1132f, 1u, i32(-2147483648), vec3<bool>(false, true, false), 671f)), Struct_2(vec3<u32>(1u, 0u, 1u), vec4<u32>(4294967295u, 6693u, 0u, 80829u), 22975i, Struct_1(796f, 4324u, 1i, vec3<bool>(false, false, true), 942f)), Struct_2(vec3<u32>(1u, 0u, 27891u), vec4<u32>(1u, 4294967295u, 3353u, 1755u), 1i, Struct_1(1206f, 8695u, -33186i, vec3<bool>(false, false, true), 754f)), Struct_2(vec3<u32>(10488u, 23080u, 8879u), vec4<u32>(1u, 2343u, 0u, 32399u), -1464i, Struct_1(686f, 32830u, 54370i, vec3<bool>(true, false, false), 1683f)), Struct_2(vec3<u32>(0u, 29386u, 155758u), vec4<u32>(25408u, 31267u, 39345u, 0u), 0i, Struct_1(349f, 0u, 37457i, vec3<bool>(false, true, false), -457f)), Struct_2(vec3<u32>(37938u, 15126u, 69711u), vec4<u32>(0u, 86068u, 24559u, 0u), -1i, Struct_1(149f, 54348u, 1i, vec3<bool>(false, false, false), -1638f)), Struct_2(vec3<u32>(1u, 30862u, 12730u), vec4<u32>(1u, 20246u, 0u, 102408u), i32(-2147483648), Struct_1(1000f, 0u, -62642i, vec3<bool>(true, true, true), 352f)), Struct_2(vec3<u32>(89048u, 4294967295u, 17081u), vec4<u32>(0u, 1u, 1u, 4294967295u), 15148i, Struct_1(-475f, 4294967295u, 1i, vec3<bool>(true, true, false), 417f)), Struct_2(vec3<u32>(0u, 1u, 5365u), vec4<u32>(30797u, 4294967295u, 0u, 9792u), 0i, Struct_1(-619f, 4294967295u, 2147483647i, vec3<bool>(false, false, true), -173f)), Struct_2(vec3<u32>(62307u, 1u, 36376u), vec4<u32>(1u, 4294967295u, 4294967295u, 15437u), -31159i, Struct_1(839f, 79137u, 0i, vec3<bool>(false, false, true), 250f)), Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u), vec4<u32>(46698u, 0u, 4294967295u, 15509u), 48736i, Struct_1(-1000f, 4294967295u, i32(-2147483648), vec3<bool>(true, false, false), -1097f)), Struct_2(vec3<u32>(30713u, 100942u, 31607u), vec4<u32>(15003u, 0u, 38281u, 1u), 0i, Struct_1(-1000f, 16579u, 27533i, vec3<bool>(true, true, false), 637f)), Struct_2(vec3<u32>(45253u, 4294967295u, 7114u), vec4<u32>(1u, 0u, 38656u, 42116u), 2147483647i, Struct_1(1000f, 4294967295u, 11277i, vec3<bool>(false, true, false), -322f)), Struct_2(vec3<u32>(4294967295u, 38249u, 43530u), vec4<u32>(61754u, 0u, 28862u, 1u), -22815i, Struct_1(-537f, 72697u, -2046i, vec3<bool>(true, true, false), 1303f)), Struct_2(vec3<u32>(79608u, 6133u, 0u), vec4<u32>(1u, 4294967295u, 0u, 57507u), -31598i, Struct_1(-699f, 11819u, 22730i, vec3<bool>(true, false, true), -2455f)), Struct_2(vec3<u32>(29508u, 0u, 1u), vec4<u32>(37539u, 2854u, 4294967295u, 92074u), 31162i, Struct_1(-275f, 4294967295u, -20615i, vec3<bool>(true, false, false), -1757f)), Struct_2(vec3<u32>(74009u, 4294967295u, 0u), vec4<u32>(1u, 4294967295u, 0u, 4294967295u), 53763i, Struct_1(-376f, 1u, 1i, vec3<bool>(false, false, true), -541f)), Struct_2(vec3<u32>(1u, 33897u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 0u), 1i, Struct_1(-2068f, 68244u, 1i, vec3<bool>(false, false, false), -472f)), Struct_2(vec3<u32>(0u, 44985u, 145077u), vec4<u32>(68221u, 4294967295u, 49975u, 30693u), -2627i, Struct_1(-1124f, 65418u, 1i, vec3<bool>(false, false, false), -1480f)), Struct_2(vec3<u32>(1u, 43078u, 64534u), vec4<u32>(0u, 0u, 1821u, 4294967295u), -24136i, Struct_1(-1431f, 13244u, 1i, vec3<bool>(false, true, false), -1000f)), Struct_2(vec3<u32>(1u, 1u, 837u), vec4<u32>(39085u, 1u, 0u, 66083u), -1i, Struct_1(230f, 1u, -1i, vec3<bool>(true, false, false), 1390f)), Struct_2(vec3<u32>(0u, 4294967295u, 25500u), vec4<u32>(54880u, 4294967295u, 6865u, 11338u), -13816i, Struct_1(665f, 18404u, -1i, vec3<bool>(false, true, true), -387f)), Struct_2(vec3<u32>(52872u, 44195u, 12072u), vec4<u32>(1u, 4294967295u, 1u, 1830u), -43711i, Struct_1(-1394f, 4294967295u, 0i, vec3<bool>(false, true, true), 977f)), Struct_2(vec3<u32>(1u, 35669u, 69282u), vec4<u32>(55201u, 0u, 1u, 58929u), 2147483647i, Struct_1(-952f, 37383u, 2147483647i, vec3<bool>(false, false, true), 1000f)), Struct_2(vec3<u32>(21255u, 0u, 29904u), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), 15233i, Struct_1(653f, 59356u, -25530i, vec3<bool>(false, false, true), 1379f)));

var<private> global2: vec4<u32> = vec4<u32>(15853u, 1u, 31797u, 18865u);

var<private> global3: vec2<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: u32, arg_3: f32) -> bool {
    global1 = array<Struct_2, 26>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3, -278f, 1607f, 856f) * vec4<f32>(arg_3, -1984f, 2737f, -968f)))), vec4<f32>(arg_3, 1000f, 1203f, arg_3), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false), vec4<bool>(all(vec4<bool>(true, true, true, true)), select(false, true, true), u_input.c <= u_input.d, select(true, false, true))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_3, _wgslsmith_f_op_f32(-1189f + 1002f), _wgslsmith_f_op_f32(round(arg_3)), _wgslsmith_f_op_f32(sign(arg_3))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 2322f, 1592f, arg_3)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-409f, arg_3, arg_3, -1708f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(408f, -1053f, arg_3, arg_3)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, -129f, -1864f, arg_3))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_3, 1286f, arg_3, 658f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-299f, arg_3, arg_3, arg_3)), vec4<bool>(false, false, false, true))))));
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(1u, 16u)], Struct_1(-278f, countOneBits(48746u), min(u_input.c, -70603i) & (firstTrailingBit(-1i) | ~1i), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), select(true, false, any(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, arg_3))) - arg_3)));
    global0 = array<Struct_3, 16>();
    let var_2 = var_0.yzw;
    return true;
}

fn func_2() -> Struct_4 {
    var var_0 = any(vec3<bool>(all(vec4<bool>(false, func_3(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.a), global2.xx, 111611u, -1163f), true, true)), func_3(vec4<u32>(max(u_input.a, global2.x), firstTrailingBit(global2.x), global2.x, ~global3.x), _wgslsmith_add_vec2_u32(vec2<u32>(global2.x, 78342u), vec2<u32>(0u, global2.x)), ~global2.x, -182f), !any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false))));
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(~u_input.a, 16u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1469f), firstTrailingBit(~0u), -2147483647i, select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(func_3(vec4<u32>(u_input.a, 1u, global3.x, global2.x), vec2<u32>(u_input.a, u_input.a), 51662u, 1824f), true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -538f)))));
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    let var_2 = global1[_wgslsmith_index_u32(~43494u, 26u)];
    return Struct_4(var_2.d, u_input.e, var_2.d.d.x, var_1.a.b);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_2 {
    let var_0 = vec4<u32>(4294967295u, 0u, ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.x, 28420u, 37931u), vec3<u32>(arg_1.d.b.x, 93281u, 1u)), global3.x, arg_0.x), _wgslsmith_mod_u32(4294967295u, _wgslsmith_sub_u32(firstTrailingBit(0u), global3.x) & (global3.x & global2.x)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_2 = 2147483647i;
    let var_3 = countOneBits(~0u);
    var var_4 = arg_1.d.d.d.x;
    return global1[_wgslsmith_index_u32(u_input.b.x, 26u)];
}

fn func_1(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec4<i32>) -> StorageBuffer {
    let var_0 = Struct_5(Struct_3(arg_0, func_4(arg_1.xwx, func_2())), func_4(func_2().a.d, func_2()).d);
    var var_1 = Struct_4(func_2().d.d, (i32(-1i) * -2147483647i) & u_input.e, arg_1.x, var_0.a.b);
    global0 = array<Struct_3, 16>();
    var var_2 = Struct_2(var_1.d.a, countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(18832u, ~global2.x, global2.x, 4294967295u), ~(~var_0.a.b.b))), -var_1.d.c, func_2().d.d);
    var var_3 = _wgslsmith_sub_u32(~1u, 0u);
    return StorageBuffer(1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(vec4<bool>(false, any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))), false, true));
    global0 = array<Struct_3, 16>();
    var var_1 = u_input.b.yy;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-372f, _wgslsmith_f_op_f32(-728f - -722f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(109f, -490f) - vec2<f32>(-290f, -1000f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-779f, 753f), vec2<f32>(2105f, -1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-679f, -1258f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(726f, -309f)))))), vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1187f + 558f))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(981f * -901f), _wgslsmith_f_op_f32(floor(128f)))), var_0 & (any(vec2<bool>(var_0, true)) != true), true == (var_0 && select(false, false, var_0)), !select(true, !var_0, var_0)), var_0 || false, vec4<i32>(firstLeadingBit(abs(u_input.e) ^ u_input.e), -479i, ~1i, u_input.c));
}

