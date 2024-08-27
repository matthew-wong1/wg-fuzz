struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 16> = array<vec4<i32>, 16>(vec4<i32>(-1i, 34892i, -45313i, -53553i), vec4<i32>(0i, 2147483647i, 10000i, 53268i), vec4<i32>(-1i, 31453i, -45667i, -18216i), vec4<i32>(29141i, 38854i, -57863i, 6022i), vec4<i32>(-37862i, -31831i, 2147483647i, -7751i), vec4<i32>(-16138i, 2147483647i, -26896i, i32(-2147483648)), vec4<i32>(2147483647i, -35506i, 38239i, -15918i), vec4<i32>(-4456i, -26591i, -64084i, -19700i), vec4<i32>(2147483647i, -49704i, 33138i, -1i), vec4<i32>(-16227i, -1i, i32(-2147483648), -35456i), vec4<i32>(2147483647i, 2147483647i, -52735i, -1i), vec4<i32>(0i, 7539i, 1858i, 58119i), vec4<i32>(0i, 17345i, i32(-2147483648), -1i), vec4<i32>(35614i, 1i, 20900i, 1i), vec4<i32>(-26326i, 0i, 40868i, -10284i), vec4<i32>(2486i, -7184i, -13029i, -1i));

var<private> global1: array<f32, 9> = array<f32, 9>(1300f, -725f, 1392f, -1497f, -1942f, 2734f, 1975f, 599f, 334f);

var<private> global2: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(vec2<i32>(-16302i, -11438i), 561f, vec4<f32>(716f, 198f, -3056f, 807f), i32(-2147483648), -1i), Struct_2(vec2<i32>(-73802i, -1i), -1602f, vec4<f32>(-1284f, 296f, 1303f, 1711f), i32(-2147483648), -1i), Struct_2(vec2<i32>(-1i, 24874i), 443f, vec4<f32>(1367f, 181f, 438f, -379f), 33194i, 2147483647i), Struct_2(vec2<i32>(-5361i, -1i), -891f, vec4<f32>(-1211f, 1045f, 938f, 220f), -30187i, -2644i), Struct_2(vec2<i32>(39890i, 1i), 271f, vec4<f32>(120f, -690f, -513f, 583f), 0i, 37939i), Struct_2(vec2<i32>(-25534i, 29589i), -1056f, vec4<f32>(-699f, 1641f, -291f, 548f), -40298i, 1i), Struct_2(vec2<i32>(2147483647i, 2147483647i), -566f, vec4<f32>(322f, 2652f, 1434f, -283f), i32(-2147483648), -1i), Struct_2(vec2<i32>(-71212i, 2147483647i), -422f, vec4<f32>(-2627f, -1376f, 192f, -1000f), -18231i, -11586i), Struct_2(vec2<i32>(-4571i, 0i), 1000f, vec4<f32>(-1820f, 1000f, -1000f, -808f), -8754i, i32(-2147483648)), Struct_2(vec2<i32>(4690i, -1i), -1188f, vec4<f32>(759f, -263f, 1000f, -312f), -72676i, -18255i), Struct_2(vec2<i32>(-33060i, 1i), 654f, vec4<f32>(139f, -730f, -186f, -453f), i32(-2147483648), 0i), Struct_2(vec2<i32>(-45863i, 2147483647i), -1518f, vec4<f32>(1289f, 429f, -1424f, 1481f), 1i, -17649i), Struct_2(vec2<i32>(34027i, 2147483647i), 254f, vec4<f32>(-1559f, -651f, -1154f, 319f), -48619i, 1i), Struct_2(vec2<i32>(0i, -35137i), 620f, vec4<f32>(-877f, -614f, -1655f, 1000f), 2147483647i, -5128i), Struct_2(vec2<i32>(10599i, 0i), 1209f, vec4<f32>(882f, 1010f, 1372f, 223f), -27221i, i32(-2147483648)), Struct_2(vec2<i32>(-33370i, -28116i), 514f, vec4<f32>(463f, 588f, -115f, 1000f), -18219i, i32(-2147483648)), Struct_2(vec2<i32>(10509i, 23736i), 854f, vec4<f32>(1893f, -754f, 1874f, -576f), i32(-2147483648), 13346i), Struct_2(vec2<i32>(-38667i, -1i), -478f, vec4<f32>(-927f, 929f, -1000f, -281f), -11091i, 1i), Struct_2(vec2<i32>(1i, -74007i), 964f, vec4<f32>(2223f, -1040f, -365f, 744f), i32(-2147483648), 2147483647i), Struct_2(vec2<i32>(1i, -32555i), 1401f, vec4<f32>(793f, -174f, 1036f, 431f), 1i, -65255i), Struct_2(vec2<i32>(-145i, 2147483647i), 347f, vec4<f32>(161f, 708f, -1173f, -361f), 2147483647i, i32(-2147483648)), Struct_2(vec2<i32>(i32(-2147483648), -31009i), -320f, vec4<f32>(-914f, -1052f, 2304f, 1000f), 35346i, -10079i), Struct_2(vec2<i32>(-2937i, -7112i), -512f, vec4<f32>(887f, 176f, -824f, -1475f), -1i, 62544i), Struct_2(vec2<i32>(i32(-2147483648), 38931i), -117f, vec4<f32>(647f, 1000f, 1350f, 1122f), 30858i, i32(-2147483648)));

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(vec2<i32>(0i, 2147483647i), 116f, vec4<f32>(121f, 260f, 565f, -173f), -16872i, -30234i), Struct_2(vec2<i32>(0i, 31452i), 832f, vec4<f32>(-982f, -272f, -330f, 961f), 71246i, -6885i), Struct_2(vec2<i32>(i32(-2147483648), 7703i), -1585f, vec4<f32>(-1473f, 1080f, -631f, -146f), 1i, 1i), Struct_2(vec2<i32>(-21021i, 23361i), 1185f, vec4<f32>(-435f, 570f, 1545f, -1821f), 51540i, 10553i), Struct_2(vec2<i32>(i32(-2147483648), -7138i), -1574f, vec4<f32>(254f, 1315f, -676f, -492f), -37039i, -33919i), Struct_2(vec2<i32>(2147483647i, -24718i), -277f, vec4<f32>(-190f, 435f, -815f, -1310f), 37577i, 67368i), Struct_2(vec2<i32>(i32(-2147483648), -5647i), -563f, vec4<f32>(-634f, -1000f, -2239f, -2653f), 2147483647i, -1i), Struct_2(vec2<i32>(i32(-2147483648), -1i), -1000f, vec4<f32>(1439f, 1222f, -1377f, -1682f), -32950i, -2281i), Struct_2(vec2<i32>(-49506i, 11607i), 1214f, vec4<f32>(193f, -593f, -563f, -770f), 2147483647i, 2147483647i), Struct_2(vec2<i32>(i32(-2147483648), -30621i), 1315f, vec4<f32>(137f, -287f, 265f, 1273f), 0i, -23698i), Struct_2(vec2<i32>(5980i, i32(-2147483648)), 238f, vec4<f32>(-1203f, 645f, -1522f, 358f), 1i, -8699i), Struct_2(vec2<i32>(-26106i, 0i), -1501f, vec4<f32>(-1355f, -767f, -977f, -1295f), 2147483647i, 1i), Struct_2(vec2<i32>(1i, 0i), -1590f, vec4<f32>(-1509f, 766f, 1122f, 403f), 0i, 1393i), Struct_2(vec2<i32>(-24128i, -1i), -810f, vec4<f32>(1518f, 1748f, -1271f, -1163f), -1i, i32(-2147483648)), Struct_2(vec2<i32>(0i, 21958i), 746f, vec4<f32>(-1581f, -530f, -1000f, 318f), -25402i, 2147483647i), Struct_2(vec2<i32>(-24255i, -41340i), -1000f, vec4<f32>(605f, -1330f, -355f, -646f), -1i, 28273i), Struct_2(vec2<i32>(2147483647i, 34947i), 1328f, vec4<f32>(-983f, -456f, 1842f, 114f), -1i, -41924i));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_4) -> u32 {
    global0 = array<vec4<i32>, 16>();
    var var_0 = false;
    global0 = array<vec4<i32>, 16>();
    let var_1 = arg_0.c;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~arg_0.b.x), 9u)]) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(35269u, 9u)] * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0.b.x, 9u)])))));
    return ~((countOneBits(arg_0.b.x) ^ firstLeadingBit(_wgslsmith_add_u32(arg_0.b.x, arg_0.b.x))) | arg_0.b.x);
}

fn func_2() -> bool {
    let var_0 = Struct_3(u_input.a);
    var var_1 = vec3<bool>(false, all(vec4<bool>(4294967295u < func_3(Struct_4(vec3<i32>(1i, -75579i, var_0.a), vec4<u32>(82760u, 36320u, 0u, 34804u), false, var_0.a)), true, true, var_0.a != -1i)), true);
    let var_2 = any(!select(select(select(vec3<bool>(false, true, var_1.x), vec3<bool>(var_1.x, false, var_1.x), var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, false, var_1.x)), select(select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, true), var_1.x), vec3<bool>(var_1.x, true, var_1.x), !vec3<bool>(false, var_1.x, var_1.x)), false));
    var var_3 = Struct_4(~_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(20745u, 16u)], global0[_wgslsmith_index_u32(25094u, 16u)]), -1i, 6311i), vec3<i32>(~39528i, var_0.a | u_input.a, var_0.a)), abs(vec4<u32>(select(_wgslsmith_div_u32(4294967295u, 35878u), 0u >> (0u % 32u), var_2), 78029u, firstLeadingBit(~1u), _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 19698u), ~30190u))), true, ~_wgslsmith_mod_i32(abs(1i & u_input.a), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-69041i, var_0.a), vec2<i32>(31845i, -21618i))));
    let var_4 = _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(36683u, 9u)]));
    return !any(select(!vec4<bool>(true, var_3.c, var_1.x, true), select(vec4<bool>(false, false, var_1.x, var_2), select(vec4<bool>(var_3.c, var_2, var_1.x, var_3.c), vec4<bool>(var_3.c, var_2, true, var_2), var_1.x), !vec4<bool>(true, var_2, true, var_1.x)), vec4<bool>(true, select(true, false, false), var_1.x, var_3.b.x != 19235u)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_5, arg_3: Struct_2) -> Struct_2 {
    let var_0 = ~select(~vec2<u32>(55081u, 0u) & ~reverseBits(vec2<u32>(arg_0.b, 0u)), vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 4294967295u, arg_0.b, arg_0.b)), ~vec4<u32>(5924u, arg_0.b, 22210u, arg_0.b)), abs(arg_0.b) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b, 25864u, 89495u), vec3<u32>(arg_0.b, arg_0.b, arg_0.b)) % 32u)), true || func_2());
    let var_1 = select(!select(vec2<bool>(true, true), vec2<bool>(true, all(vec3<bool>(true, false, arg_0.a))), true), !(!select(vec2<bool>(arg_0.a, true), select(vec2<bool>(arg_0.a, false), vec2<bool>(true, true), true), vec2<bool>(true, arg_0.a))), select(select(!(!vec2<bool>(true, arg_0.a)), vec2<bool>(true, any(vec2<bool>(arg_0.a, true))), vec2<bool>(select(false, arg_0.a, arg_0.a), any(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)))), vec2<bool>(all(vec2<bool>(arg_0.a, false)), arg_0.a), true));
    let var_2 = ~(~(~var_0.x));
    var var_3 = !any(!select(vec3<bool>(var_1.x, true, arg_0.a), vec3<bool>(true, true, var_1.x), !vec3<bool>(var_1.x, false, var_1.x)));
    var var_4 = -292f;
    return Struct_2(arg_3.a, 756f, arg_2.a.c, ~arg_3.e, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(arg_0.b, 16u)], vec4<i32>(-u_input.a, ~(i32(-1i) * -2147483647i), 1i, -35186i)));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = func_4(Struct_1(func_2(), min(arg_0, abs(firstTrailingBit(arg_0))), select(-(~u_input.a), ~u_input.a, all(vec4<bool>(false, true, false, false)))), select(_wgslsmith_div_i32(max(_wgslsmith_sub_i32(-1i, u_input.a), u_input.a), u_input.a), ~u_input.a, true), Struct_5(Struct_2(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -37626i) ^ vec2<i32>(u_input.a, u_input.a), -vec2<i32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(165f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(867f, global1[_wgslsmith_index_u32(arg_0, 9u)], global1[_wgslsmith_index_u32(41316u, 9u)], 709f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-531f, 2163f, global1[_wgslsmith_index_u32(15862u, 9u)], 888f))), -1i, firstTrailingBit(_wgslsmith_div_i32(-53893i, 7013i))), Struct_3(~(-1i))), global3[_wgslsmith_index_u32(1u, 17u)]);
    var var_1 = global3[_wgslsmith_index_u32(countOneBits(~0u >> (~(~arg_0) % 32u)), 17u)];
    global3 = array<Struct_2, 17>();
    var var_2 = 118f;
    global3 = array<Struct_2, 17>();
    return Struct_3(-var_0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(4294967295u);
    let var_1 = select(select((_wgslsmith_f_op_f32(-1203f - global1[_wgslsmith_index_u32(0u, 9u)]) != _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(23922u, 9u)]))) & true, true, func_2()), func_2(), all(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), all(vec4<bool>(true, true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(countOneBits(firstTrailingBit(0u)), 9u)]);
}

