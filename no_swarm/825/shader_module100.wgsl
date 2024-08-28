struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32> = vec3<u32>(0u, 144134u, 1u);

var<private> global2: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec2<u32>(4294967295u, 27466u), true, 2114f, Struct_1(134f, vec3<i32>(-1i, -1i, 1i), 1i)), Struct_2(vec2<u32>(0u, 28788u), false, -188f, Struct_1(476f, vec3<i32>(2147483647i, i32(-2147483648), 1i), 8931i)), Struct_2(vec2<u32>(41459u, 76404u), true, -1000f, Struct_1(-607f, vec3<i32>(0i, 14756i, 0i), 4275i)), Struct_2(vec2<u32>(0u, 1u), true, -1352f, Struct_1(234f, vec3<i32>(2318i, 0i, 0i), 16985i)), Struct_2(vec2<u32>(1u, 1u), false, 1062f, Struct_1(-875f, vec3<i32>(51803i, -25886i, -26389i), i32(-2147483648))), Struct_2(vec2<u32>(1u, 4294967295u), false, -2310f, Struct_1(-1639f, vec3<i32>(0i, -53184i, 1i), i32(-2147483648))), Struct_2(vec2<u32>(2719u, 4525u), false, 171f, Struct_1(-148f, vec3<i32>(-2924i, 0i, 1i), 0i)), Struct_2(vec2<u32>(58180u, 1u), false, 218f, Struct_1(1625f, vec3<i32>(0i, -3710i, 24436i), -24121i)), Struct_2(vec2<u32>(4294967295u, 45147u), false, 817f, Struct_1(-1652f, vec3<i32>(26268i, 8325i, -5398i), 6028i)), Struct_2(vec2<u32>(25744u, 44594u), false, -599f, Struct_1(-1516f, vec3<i32>(-25743i, -1i, i32(-2147483648)), -54415i)), Struct_2(vec2<u32>(0u, 0u), false, -815f, Struct_1(-2278f, vec3<i32>(40342i, 4306i, -42804i), -1i)), Struct_2(vec2<u32>(4294967295u, 1u), true, 257f, Struct_1(156f, vec3<i32>(-13180i, -50565i, 3009i), 2147483647i)), Struct_2(vec2<u32>(1u, 23593u), false, -321f, Struct_1(1369f, vec3<i32>(-16689i, -13382i, 1i), -17444i)), Struct_2(vec2<u32>(32486u, 1u), false, 1978f, Struct_1(-712f, vec3<i32>(2147483647i, 3285i, -43291i), -75049i)), Struct_2(vec2<u32>(92755u, 23834u), false, 847f, Struct_1(-203f, vec3<i32>(-9387i, 44710i, 14427i), 4167i)), Struct_2(vec2<u32>(32778u, 10531u), false, -1000f, Struct_1(515f, vec3<i32>(-1i, 1i, 59722i), -23321i)), Struct_2(vec2<u32>(28779u, 22765u), false, 213f, Struct_1(-340f, vec3<i32>(26589i, -1i, -74313i), 0i)), Struct_2(vec2<u32>(44424u, 0u), false, -704f, Struct_1(-1236f, vec3<i32>(14505i, -16519i, 1626i), 14976i)), Struct_2(vec2<u32>(31675u, 13922u), false, -543f, Struct_1(-2232f, vec3<i32>(2147483647i, 0i, -31610i), -21056i)), Struct_2(vec2<u32>(4294967295u, 0u), true, 209f, Struct_1(521f, vec3<i32>(2147483647i, 0i, -1207i), -43166i)), Struct_2(vec2<u32>(1u, 1u), true, -283f, Struct_1(-2073f, vec3<i32>(-24825i, -7513i, -1i), i32(-2147483648))), Struct_2(vec2<u32>(1u, 4294967295u), true, 2563f, Struct_1(-1355f, vec3<i32>(i32(-2147483648), 25730i, 17075i), 20162i)), Struct_2(vec2<u32>(18085u, 36712u), false, 500f, Struct_1(673f, vec3<i32>(-3345i, i32(-2147483648), 13662i), -12246i)), Struct_2(vec2<u32>(32104u, 1u), false, 1000f, Struct_1(691f, vec3<i32>(2147483647i, 18208i, 2147483647i), -67955i)), Struct_2(vec2<u32>(35635u, 1u), true, -1442f, Struct_1(-1000f, vec3<i32>(-1i, -21333i, 2325i), i32(-2147483648))), Struct_2(vec2<u32>(0u, 4294967295u), false, -579f, Struct_1(1246f, vec3<i32>(-59230i, 2499i, 2147483647i), 0i)), Struct_2(vec2<u32>(4294967295u, 96586u), true, 1169f, Struct_1(1612f, vec3<i32>(1i, -8034i, -1i), 2147483647i)), Struct_2(vec2<u32>(4294967295u, 84883u), false, 167f, Struct_1(-815f, vec3<i32>(-21555i, 0i, 38322i), -1i)), Struct_2(vec2<u32>(18766u, 75446u), true, 1745f, Struct_1(178f, vec3<i32>(1i, 1i, i32(-2147483648)), -56357i)), Struct_2(vec2<u32>(52903u, 0u), false, 1047f, Struct_1(-643f, vec3<i32>(-1i, -4270i, -13035i), -33600i)));

var<private> global3: Struct_2 = Struct_2(vec2<u32>(4294967295u, 4294967295u), false, -890f, Struct_1(184f, vec3<i32>(-23961i, -1i, -1267i), 46638i));

var<private> global4: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec2<u32>(4294967295u, 2561u), true, 223f, Struct_1(171f, vec3<i32>(2156i, 1i, 14425i), -28768i)), Struct_2(vec2<u32>(36091u, 4294967295u), false, -1598f, Struct_1(-264f, vec3<i32>(-20617i, 0i, -5929i), 1i)), Struct_2(vec2<u32>(4294967295u, 52012u), false, 1000f, Struct_1(858f, vec3<i32>(1i, -23882i, -19937i), 2147483647i)), Struct_2(vec2<u32>(129275u, 45933u), true, -1929f, Struct_1(-967f, vec3<i32>(52633i, 2147483647i, -24352i), 24i)), Struct_2(vec2<u32>(1u, 5019u), false, 769f, Struct_1(-457f, vec3<i32>(i32(-2147483648), -18218i, 0i), 2147483647i)), Struct_2(vec2<u32>(0u, 1u), true, 1000f, Struct_1(-1410f, vec3<i32>(-47711i, -8088i, 40200i), 5898i)), Struct_2(vec2<u32>(4294967295u, 36516u), true, -1009f, Struct_1(560f, vec3<i32>(0i, 1i, 10596i), -1i)), Struct_2(vec2<u32>(91787u, 21383u), true, 334f, Struct_1(-351f, vec3<i32>(-7431i, 35717i, i32(-2147483648)), 1i)), Struct_2(vec2<u32>(1u, 14513u), false, -841f, Struct_1(-582f, vec3<i32>(9438i, 2147483647i, 0i), -1i)), Struct_2(vec2<u32>(36940u, 12057u), false, 867f, Struct_1(-933f, vec3<i32>(i32(-2147483648), 0i, 66356i), i32(-2147483648))), Struct_2(vec2<u32>(4294967295u, 15344u), true, -620f, Struct_1(352f, vec3<i32>(-1i, -10249i, 1i), i32(-2147483648))), Struct_2(vec2<u32>(48923u, 25779u), true, -1000f, Struct_1(-177f, vec3<i32>(11233i, 0i, i32(-2147483648)), 0i)), Struct_2(vec2<u32>(91147u, 42295u), false, 468f, Struct_1(569f, vec3<i32>(-21257i, -1i, -399i), 7369i)), Struct_2(vec2<u32>(29984u, 92740u), false, -879f, Struct_1(-1560f, vec3<i32>(-27684i, 35610i, 34358i), 1i)), Struct_2(vec2<u32>(1u, 56377u), false, 344f, Struct_1(-885f, vec3<i32>(5326i, -1i, -14154i), 7119i)), Struct_2(vec2<u32>(65279u, 1u), true, 158f, Struct_1(-1310f, vec3<i32>(-165i, -1i, 2147483647i), 1i)), Struct_2(vec2<u32>(80787u, 4294967295u), false, 518f, Struct_1(113f, vec3<i32>(-35545i, 1i, 6736i), -47698i)), Struct_2(vec2<u32>(55217u, 0u), false, 1031f, Struct_1(-490f, vec3<i32>(19897i, -1i, -1i), -53847i)), Struct_2(vec2<u32>(12744u, 4294967295u), false, 1000f, Struct_1(1127f, vec3<i32>(-1i, -11975i, -21606i), i32(-2147483648))), Struct_2(vec2<u32>(0u, 39935u), false, -342f, Struct_1(-311f, vec3<i32>(1i, -48411i, -1i), 0i)), Struct_2(vec2<u32>(34646u, 35167u), false, 166f, Struct_1(-1667f, vec3<i32>(-17368i, 0i, i32(-2147483648)), i32(-2147483648))), Struct_2(vec2<u32>(25439u, 4294967295u), false, 321f, Struct_1(-147f, vec3<i32>(-10516i, -1i, -1i), 92756i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    return global2[_wgslsmith_index_u32(min(~7478u, arg_0.a.x), 30u)];
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: f32) -> i32 {
    let var_0 = min(~4294967295u, _wgslsmith_mod_u32(8951u, 52905u));
    return global3.d.c;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = arg_1;
    let var_1 = !any(vec4<bool>(var_0.x, func_2(Struct_2(vec2<u32>(33571u, 37758u), global3.b, global3.c, Struct_1(arg_2.x, vec3<i32>(0i, u_input.b, global3.d.b.x), 0i))).b && !global3.b, func_2(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.x, u_input.a), 22u)]).b, !(arg_1.x || arg_1.x)));
    let var_2 = global3.a.x;
    var var_3 = !select(vec3<bool>((u_input.a < arg_0.x) || any(var_0), any(!vec4<bool>(arg_1.x, false, var_1, global3.b)), false), var_0, _wgslsmith_add_u32(11601u, global3.a.x << (arg_0.x % 32u)) == 1u);
    var_3 = vec3<bool>(false, any(!vec3<bool>(all(vec2<bool>(var_3.x, arg_1.x)), true != global3.b, arg_2.x < arg_2.x)), all(select(vec2<bool>(func_2(global4[_wgslsmith_index_u32(u_input.a, 22u)]).b, 42559i >= global3.d.c), !select(vec2<bool>(true, global3.b), arg_1.zy, vec2<bool>(arg_1.x, var_3.x)), select(vec2<bool>(var_3.x, var_1), !vec2<bool>(true, global3.b), !var_3.xx))));
    return global4[_wgslsmith_index_u32(arg_0.x << (reverseBits(129924u) % 32u), 22u)];
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: f32, arg_3: bool) -> Struct_1 {
    global3 = func_4(vec4<u32>(~_wgslsmith_sub_u32(global3.a.x | global3.a.x, _wgslsmith_sub_u32(31517u, u_input.a)), ~(~4187u), ~_wgslsmith_mod_u32(global1.x, ~0u), (0u | (global3.a.x & global1.x)) << (u_input.a % 32u)), vec3<bool>((arg_3 & true) || any(select(vec3<bool>(false, arg_3, true), vec3<bool>(false, global3.b, false), vec3<bool>(global3.b, false, true))), func_3(Struct_1(737f, global3.d.b, 6621i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(672f, -1177f, -1322f)), func_2(global2[_wgslsmith_index_u32(45472u, 30u)]), _wgslsmith_f_op_f32(-1597f + global3.d.a)) == arg_1, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2576f, global3.d.a, -1000f) * vec3<f32>(-367f, global3.c, global3.d.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, global3.d.a, 1000f), vec3<f32>(1386f, -1000f, -310f), false)))))));
    var var_0 = !select(!(!select(vec3<bool>(false, false, arg_0), vec3<bool>(arg_0, global3.b, true), vec3<bool>(global3.b, arg_3, true))), vec3<bool>(false, !arg_0, any(select(vec3<bool>(true, arg_3, false), vec3<bool>(global3.b, arg_3, arg_3), true))), arg_3);
    var var_1 = -1i & (func_4(vec4<u32>(u_input.a, u_input.a, global3.a.x, 1u) >> (countOneBits(vec4<u32>(u_input.a, global1.x, 4294967295u, global3.a.x)) % vec4<u32>(32u)), vec3<bool>(!arg_0, select(true, var_0.x, arg_3), any(vec3<bool>(true, false, arg_3))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-333f, 936f, global3.c), vec3<f32>(global3.d.a, arg_2, arg_2))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2, arg_2, -239f)))))).d.c << (~global1.x % 32u));
    var var_2 = _wgslsmith_clamp_vec2_u32(max(vec2<u32>(_wgslsmith_clamp_u32(global1.x, 78405u, 4294967295u | global3.a.x), func_4(vec4<u32>(global1.x, 0u, global1.x, global1.x), vec3<bool>(false, false, false), vec3<f32>(arg_2, arg_2, arg_2)).a.x), func_2(Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(global3.a.x, global1.x), global1.xz), arg_0 | false, _wgslsmith_f_op_f32(191f + global3.d.a), func_2(global2[_wgslsmith_index_u32(u_input.a, 30u)]).d)).a), ~(~global3.a), vec2<u32>(countOneBits(global1.x), _wgslsmith_clamp_u32(~(~4294967295u), global1.x, ~(~0u))));
    global0 = arg_3;
    return func_4(~(~vec4<u32>(4294967295u, 9837u, ~53137u, ~global3.a.x)), select(select(select(select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, var_0.x, false), true), !select(vec3<bool>(true, var_0.x, global3.b), vec3<bool>(false, true, arg_3), vec3<bool>(true, false, var_0.x)), arg_0), !select(select(vec3<bool>(global3.b, global3.b, arg_3), vec3<bool>(arg_0, true, true), vec3<bool>(arg_3, false, arg_0)), select(vec3<bool>(true, false, false), vec3<bool>(false, global3.b, true), vec3<bool>(var_0.x, arg_0, global3.b)), func_2(Struct_2(vec2<u32>(42393u, u_input.a), false, -2137f, Struct_1(-1061f, vec3<i32>(arg_1, global3.d.c, 1606i), 17882i))).b), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2480f))), global3.c, 577f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-971f, arg_2, global3.c) * vec3<f32>(-442f, 277f, -820f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.c, 650f, global3.c), vec3<f32>(1000f, 1391f, global3.d.a)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(step(global3.c, arg_2)), _wgslsmith_f_op_f32(abs(global3.d.a)))))).d;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + 1000f)), _wgslsmith_f_op_f32(trunc(func_4(arg_1, vec3<bool>(false, false, false), vec3<f32>(arg_2.a, 814f, global3.d.a)).c)))), -750f, -505f));
    let var_1 = _wgslsmith_f_op_f32(select(var_0.x, -291f, global3.b));
    var var_2 = !select(vec3<bool>(global3.a.x > 1u, true, all(vec4<bool>(true, true, global3.b, true))), !select(select(vec3<bool>(false, false, global3.b), vec3<bool>(true, false, global3.b), global3.b), !vec3<bool>(global3.b, global3.b, true), vec3<bool>(global3.b, global3.b, false)), !vec3<bool>(func_2(global2[_wgslsmith_index_u32(81364u, 30u)]).b, 0u > global3.a.x, false));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(arg_0.a + global3.d.a)))), arg_0.b ^ func_1(!(!var_2.x), arg_0.b.x, global3.d.a, var_2.x).b, -u_input.b);
    let var_4 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(105f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-240f)))), 564f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1538f, 3549f))))) + _wgslsmith_f_op_f32(-arg_3.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global3.c), global3.d.b, ~1i);
    global3 = Struct_2(firstTrailingBit(global1.zz), global3.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_5(Struct_1(global3.d.a, vec3<i32>(22998i, 0i, -54175i), global3.d.b.x), vec4<u32>(1u, u_input.a, 14106u, global1.x), func_1(true, 48725i, -491f, global3.b), func_2(Struct_2(vec2<u32>(global1.x, u_input.a), global3.b, global3.d.a, Struct_1(global3.c, var_0.b, global3.d.b.x))).d)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-965f, -741f), 1f))) - _wgslsmith_f_op_f32(-global3.d.a)), Struct_1(global3.d.a, ~global3.d.b, 44477i));
    var var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(50235u, 0u) ^ global3.a, global1.xz & global1.zz) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(8147u, global1.x, 1u), vec3<u32>(90025u, global3.a.x, 0u)), 0u), 30u)];
    let var_2 = ~abs(abs(-(~vec4<i32>(var_0.c, -13208i, var_0.b.x, 0i))));
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(global1.x, 1u), global1.x), countOneBits((countOneBits(global3.a) | vec2<u32>(global3.a.x, 27908u)) & ~var_1.a));
    global0 = !(!var_1.b | (func_4(select(vec4<u32>(var_1.a.x, 29290u, global3.a.x, 1u), vec4<u32>(global1.x, global1.x, global1.x, var_3), vec4<bool>(true, true, true, global3.b)), vec3<bool>(var_1.b, false, true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, 631f, 548f), vec3<f32>(var_1.d.a, var_1.d.a, -1957f)))).b | any(select(vec4<bool>(global3.b, true, false, true), vec4<bool>(global3.b, var_1.b, global3.b, var_1.b), vec4<bool>(global3.b, true, global3.b, global3.b)))));
    global1 = abs(_wgslsmith_div_vec3_u32(firstTrailingBit(~firstTrailingBit(vec3<u32>(global3.a.x, 0u, u_input.a))), vec3<u32>(min(4294967295u, ~var_1.a.x), 8975u, ~(~4294967295u))));
    global4 = array<Struct_2, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c);
}

