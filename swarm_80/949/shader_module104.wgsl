struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, true, true, false, false, true, false, false, true, true, true, false, false, true);

var<private> global1: Struct_3 = Struct_3(vec3<bool>(false, true, false), Struct_2(Struct_1(vec4<f32>(-498f, -1000f, -521f, -775f), -2137f, 1i), true, Struct_1(vec4<f32>(2409f, 1073f, 218f, -1420f), -1974f, 4614i), Struct_1(vec4<f32>(891f, 931f, -517f, -143f), 1664f, -1i)), Struct_2(Struct_1(vec4<f32>(-1107f, 329f, -1252f, 182f), 640f, i32(-2147483648)), false, Struct_1(vec4<f32>(869f, -1000f, -118f, 1022f), 1188f, -20855i), Struct_1(vec4<f32>(-1047f, -1048f, -817f, -580f), -1438f, 2147483647i)));

var<private> global2: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(vec3<bool>(false, true, true), Struct_2(Struct_1(vec4<f32>(-1107f, -567f, 1186f, 2081f), 837f, 0i), true, Struct_1(vec4<f32>(-450f, -1203f, 657f, -1636f), -108f, 84907i), Struct_1(vec4<f32>(614f, -1665f, 204f, -209f), 1483f, -1i)), Struct_2(Struct_1(vec4<f32>(868f, -534f, -1000f, 262f), 479f, 5650i), false, Struct_1(vec4<f32>(369f, -2265f, -1170f, -121f), 605f, 1i), Struct_1(vec4<f32>(-683f, 995f, -1969f, 432f), -1523f, 2147483647i))), Struct_3(vec3<bool>(false, false, true), Struct_2(Struct_1(vec4<f32>(-205f, -231f, 1000f, 413f), 523f, -31453i), true, Struct_1(vec4<f32>(226f, -1960f, -792f, 142f), -1167f, -23538i), Struct_1(vec4<f32>(-2779f, -1587f, -583f, -581f), -568f, 1i)), Struct_2(Struct_1(vec4<f32>(597f, -1052f, -1048f, 360f), 131f, 0i), true, Struct_1(vec4<f32>(-532f, -514f, 358f, 1056f), -904f, i32(-2147483648)), Struct_1(vec4<f32>(1421f, 1000f, 993f, 303f), 1000f, -1i))), Struct_3(vec3<bool>(false, true, false), Struct_2(Struct_1(vec4<f32>(792f, 414f, 202f, -1766f), 101f, -4203i), false, Struct_1(vec4<f32>(-1000f, -298f, -2203f, -480f), 115f, -8817i), Struct_1(vec4<f32>(540f, -933f, -1485f, 1559f), 982f, -1i)), Struct_2(Struct_1(vec4<f32>(248f, -640f, 1108f, 219f), 290f, -1i), false, Struct_1(vec4<f32>(-1256f, -369f, -530f, -999f), 638f, -17560i), Struct_1(vec4<f32>(936f, -862f, -311f, 952f), -210f, -13147i))), Struct_3(vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<f32>(-279f, 450f, 375f, -567f), -1000f, -17158i), false, Struct_1(vec4<f32>(805f, -1069f, 484f, 870f), 893f, 6432i), Struct_1(vec4<f32>(2140f, -579f, -841f, 739f), 619f, i32(-2147483648))), Struct_2(Struct_1(vec4<f32>(1897f, 616f, -1000f, 1017f), 689f, -1i), false, Struct_1(vec4<f32>(-1000f, -528f, -1116f, -1031f), 1000f, 28210i), Struct_1(vec4<f32>(-1102f, -380f, -872f, 1000f), 388f, 2246i))), Struct_3(vec3<bool>(true, false, false), Struct_2(Struct_1(vec4<f32>(669f, 320f, -1197f, 974f), -1385f, 35806i), false, Struct_1(vec4<f32>(-215f, 771f, -2150f, -926f), -753f, -27178i), Struct_1(vec4<f32>(-660f, -1000f, 176f, 1000f), -1000f, 0i)), Struct_2(Struct_1(vec4<f32>(-1097f, 1247f, -308f, -156f), 1000f, 2147483647i), true, Struct_1(vec4<f32>(-1150f, 970f, -201f, -1121f), 768f, -1i), Struct_1(vec4<f32>(453f, 392f, -447f, 1000f), 912f, -1i))), Struct_3(vec3<bool>(false, false, false), Struct_2(Struct_1(vec4<f32>(-792f, 284f, 969f, -188f), -1000f, -22901i), true, Struct_1(vec4<f32>(-1697f, 995f, -1000f, -418f), 875f, 69597i), Struct_1(vec4<f32>(114f, -480f, -745f, 308f), -682f, 14966i)), Struct_2(Struct_1(vec4<f32>(1660f, 364f, 697f, 165f), -342f, -2480i), false, Struct_1(vec4<f32>(392f, 349f, 2022f, 1558f), 457f, 2147483647i), Struct_1(vec4<f32>(-990f, 1000f, 782f, 662f), -1244f, 48571i))), Struct_3(vec3<bool>(false, false, true), Struct_2(Struct_1(vec4<f32>(-561f, -1295f, 463f, -1430f), 807f, 0i), false, Struct_1(vec4<f32>(-397f, -283f, 223f, -1000f), -660f, 0i), Struct_1(vec4<f32>(-727f, 795f, -417f, -1733f), -1899f, i32(-2147483648))), Struct_2(Struct_1(vec4<f32>(158f, 983f, -764f, 242f), -308f, 2147483647i), false, Struct_1(vec4<f32>(1149f, -773f, 502f, -954f), 770f, -7667i), Struct_1(vec4<f32>(777f, -716f, 1256f, 337f), -1062f, 27599i))), Struct_3(vec3<bool>(true, true, false), Struct_2(Struct_1(vec4<f32>(1097f, 818f, 1000f, 159f), 1424f, 0i), true, Struct_1(vec4<f32>(-567f, -548f, 299f, 120f), -120f, 2147483647i), Struct_1(vec4<f32>(1411f, 844f, -308f, -2120f), -2897f, 1878i)), Struct_2(Struct_1(vec4<f32>(-461f, 1000f, -1645f, -475f), 331f, -37623i), true, Struct_1(vec4<f32>(-1450f, 917f, -1002f, 539f), 111f, i32(-2147483648)), Struct_1(vec4<f32>(1421f, 401f, 844f, 1848f), 1297f, 13968i))), Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<f32>(578f, 1554f, 2863f, -992f), -573f, 37413i), true, Struct_1(vec4<f32>(2282f, -1135f, -868f, -210f), 383f, -38772i), Struct_1(vec4<f32>(-705f, -214f, -1935f, -1000f), -1000f, -10357i)), Struct_2(Struct_1(vec4<f32>(-1000f, -739f, 451f, -1000f), -131f, 34738i), false, Struct_1(vec4<f32>(1429f, -599f, 1007f, 428f), -1000f, 1i), Struct_1(vec4<f32>(296f, -174f, 564f, 943f), -1210f, 3944i))), Struct_3(vec3<bool>(false, true, false), Struct_2(Struct_1(vec4<f32>(-845f, -1307f, 721f, 1000f), -278f, -1i), false, Struct_1(vec4<f32>(-1426f, -439f, 1000f, -1322f), -1000f, 2147483647i), Struct_1(vec4<f32>(-1000f, -1000f, 1870f, -1297f), -909f, 1i)), Struct_2(Struct_1(vec4<f32>(-1881f, -1041f, 642f, -1370f), 2658f, 2147483647i), false, Struct_1(vec4<f32>(-758f, -478f, -861f, -1236f), -318f, -1i), Struct_1(vec4<f32>(-709f, -1674f, 139f, 390f), 164f, 1i))));

var<private> global3: u32 = 68181u;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_mod_i32(-32154i, global1.c.c.c & global1.b.a.c) ^ -1i;
    var var_1 = abs(firstTrailingBit(firstLeadingBit(max(firstLeadingBit(vec4<u32>(20047u, u_input.a, 1u, 0u)), vec4<u32>(54339u, u_input.a, u_input.a, 0u) | vec4<u32>(u_input.a, 52400u, u_input.a, 39720u)))));
    global0 = array<bool, 14>();
    let var_2 = vec3<u32>(u_input.a, firstLeadingBit(_wgslsmith_div_u32(~4294967295u, u_input.a) ^ var_1.x), ~45411u);
    var var_3 = global1.c.a.c;
    return select(global1.a, vec3<bool>(!all(vec3<bool>(true, true, true)), all(global1.a), !global0[_wgslsmith_index_u32(var_1.x, 14u)]), select(vec3<bool>(!(!global0[_wgslsmith_index_u32(u_input.a, 14u)]), true, all(select(vec4<bool>(global0[_wgslsmith_index_u32(var_2.x, 14u)], false, global0[_wgslsmith_index_u32(var_1.x, 14u)], false), vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(0u, 14u)]), false))), global1.a, !(!global1.c.b)));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(global1.b.d.a.xy));
    global0 = array<bool, 14>();
    return true;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.a.a.x, _wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -219f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1380f)) + _wgslsmith_f_op_f32(global1.b.a.b - arg_0))), 281f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.c.b, arg_0, _wgslsmith_f_op_f32(exp2(arg_0)), 431f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(195f, global1.c.a.b, -690f, -251f), global1.b.d.a))));
    global0 = array<bool, 14>();
    let var_1 = func_4(firstLeadingBit(-1i), select(!select(vec3<bool>(true, true, arg_1), select(vec3<bool>(false, false, true), global1.a, global1.a), select(global1.a, global1.a, global1.a)), select(global1.a, !global1.a, func_3()), !select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec3<bool>(true, arg_1, false), select(global1.a, vec3<bool>(true, true, global1.c.b), global1.b.b))), Struct_2(global1.c.d, all(select(!global1.a, global1.a, !global1.a)), global1.b.c, global1.b.d), global1.c.d.c);
    global0 = array<bool, 14>();
    return global1.c.a;
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: i32) -> vec3<u32> {
    var var_0 = arg_1;
    let var_1 = true;
    var var_2 = global1.b;
    let var_3 = firstLeadingBit(~firstLeadingBit(vec3<u32>(33854u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 0u, 96796u) % vec3<u32>(32u)))) & vec3<u32>(u_input.a, 66803u, 1u);
    var_2 = Struct_2(func_2(_wgslsmith_f_op_f32(abs(var_2.c.a.x)), true, var_2.c.b), true, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-327f + _wgslsmith_div_f32(316f, 1287f))), select(var_2.b, func_3().x, global1.b.a.a.x < var_0.c.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.c.a.x)) - arg_1.a.a.x))), Struct_1(vec4<f32>(-115f, 320f, 1000f, -342f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.c.a.a.x), _wgslsmith_f_op_f32(step(var_0.a.b, var_2.c.a.x)))), _wgslsmith_mod_i32(max(arg_3, 8236i), _wgslsmith_clamp_i32(-var_0.c.c, select(var_0.d.c, 1i, true), arg_3))));
    return ~var_3;
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = global1.b.c;
    global2 = array<Struct_3, 10>();
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.c.a.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_0.a)) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global1.b.c.a))))), vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_0.a.x, _wgslsmith_f_op_f32(floor(-814f)))))), global1.b.c.b, global1.c.d.a.x, _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.c.a.b)) + var_0.b))));
    var var_2 = ~firstTrailingBit(~(arg_1.x ^ arg_1.x)) > global1.c.c.c;
    global1 = Struct_3(select(global1.a, global1.a, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, 1u), 14u)]), Struct_2(global1.c.d, true, Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(global1.b.c.b, var_1.x, var_0.b, var_0.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(391f, var_0.a.x, var_0.b, -1592f) * vec4<f32>(var_1.x, var_1.x, var_0.a.x, 745f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), countOneBits(-23732i)), Struct_1(func_2(global1.b.d.a.x, global0[_wgslsmith_index_u32(u_input.a, 14u)] | global0[_wgslsmith_index_u32(29051u, 14u)], _wgslsmith_f_op_f32(-var_1.x)).a, -868f, abs(var_0.c))), Struct_2(func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x + -1099f))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, ~arg_0), 14u)], _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-1317f + var_1.x))), any(select(!vec4<bool>(true, false, global1.a.x, global1.a.x), !vec4<bool>(global1.a.x, false, global1.a.x, global1.b.b), var_0.c != arg_1.x)), global1.c.c, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.a), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.c.d.a.x, 1000f, global1.c.a.a.x, global1.b.d.b)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_1.x))), firstTrailingBit(global1.b.a.c))));
    return func_2(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -189f), -342f)))), any(vec2<bool>(_wgslsmith_clamp_u32(u_input.a, u_input.a, arg_2.x) < u_input.a, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(var_0.a.x, global1.b.b, var_0.a.x).b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(714f, global1.b.a.b), -1000f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-339f)))));
    global2 = array<Struct_3, 10>();
    var var_1 = func_5(60752u, min(countOneBits(select(-vec4<i32>(global1.b.d.c, -24676i, global1.c.a.c, -12280i), vec4<i32>(global1.b.a.c, -3963i, global1.c.d.c, global1.b.d.c) ^ vec4<i32>(global1.b.a.c, global1.c.c.c, global1.c.c.c, -2147483647i), global1.c.a.a.x == global1.b.a.b)), vec4<i32>(-(~global1.c.d.c), -4069i, _wgslsmith_mod_i32(-global1.b.c.c, global1.b.a.c), (global1.b.d.c >> (u_input.a % 32u)) >> (~u_input.a % 32u))), vec3<u32>(abs(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, u_input.a), ~u_input.a)), u_input.a >> (u_input.a % 32u), _wgslsmith_dot_vec3_u32(reverseBits(func_1(vec4<i32>(global1.c.a.c, 2147483647i, global1.b.a.c, global1.b.c.c), global1.c, vec4<bool>(false, global1.a.x, global0[_wgslsmith_index_u32(14458u, 14u)], global1.b.b), global1.b.c.c)), ~vec3<u32>(34016u, u_input.a, u_input.a))));
    global3 = 1u;
    var var_2 = vec3<bool>(_wgslsmith_dot_vec3_i32(~vec3<i32>(14352i, 0i, -6887i) ^ (vec3<i32>(global1.c.a.c, -1i, 22648i) & vec3<i32>(var_1.c, -1i, global1.c.a.c)), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(var_1.c, -1i, 2147483647i), vec3<i32>(-25859i, var_1.c, -2399i)), -vec3<i32>(global1.b.a.c, var_1.c, var_1.c), -vec3<i32>(18257i, global1.b.a.c, -6487i))) == ~var_1.c, true, global0[_wgslsmith_index_u32(select(firstTrailingBit(u_input.a), _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(u_input.a, u_input.a, 9109u)), ~u_input.a), 22271u), true), 14u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) - 122f), func_1(vec4<i32>(var_1.c | global1.c.a.c, 1522i, var_1.c, 35432i), global1.c, vec4<bool>(var_2.x & any(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(273u, 14u)])), _wgslsmith_f_op_f32(round(global1.c.c.a.x)) == _wgslsmith_f_op_f32(f32(-1f) * -603f), !(global0[_wgslsmith_index_u32(u_input.a, 14u)] | false), true), global1.c.c.c).yx, vec2<u32>(func_1(~countOneBits(vec4<i32>(var_1.c, -15973i, var_1.c, -39979i)), Struct_2(Struct_1(var_1.a, global1.b.d.b, 2147483647i), all(vec2<bool>(global1.a.x, true)), func_5(u_input.a, vec4<i32>(global1.b.a.c, 2147483647i, var_1.c, global1.c.c.c), vec3<u32>(u_input.a, u_input.a, 1u)), global1.b.c), vec4<bool>(var_2.x, true, global0[_wgslsmith_index_u32(4294967295u, 14u)] || true, global0[_wgslsmith_index_u32(0u, 14u)]), select(-1i, 1i, any(vec2<bool>(global0[_wgslsmith_index_u32(29612u, 14u)], global1.a.x)))).x, u_input.a));
}

