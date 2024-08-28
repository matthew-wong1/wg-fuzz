struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: u32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_5, 8> = array<Struct_5, 8>(Struct_5(Struct_1(-503f, vec2<u32>(19608u, 65195u)), 1117f, false, 0u, Struct_2(Struct_1(-1383f, vec2<u32>(0u, 79188u)), Struct_1(372f, vec2<u32>(1u, 33477u)), 478f, vec3<i32>(56405i, -46022i, 2790i), Struct_1(217f, vec2<u32>(0u, 1u)))), Struct_5(Struct_1(-1558f, vec2<u32>(1748u, 0u)), -2093f, true, 51011u, Struct_2(Struct_1(-1359f, vec2<u32>(1u, 0u)), Struct_1(-1009f, vec2<u32>(4294967295u, 62560u)), -1616f, vec3<i32>(-39193i, -1i, 1i), Struct_1(130f, vec2<u32>(1u, 0u)))), Struct_5(Struct_1(-1314f, vec2<u32>(4294967295u, 4294967295u)), 322f, false, 0u, Struct_2(Struct_1(1000f, vec2<u32>(35666u, 0u)), Struct_1(312f, vec2<u32>(1u, 0u)), 738f, vec3<i32>(-29485i, i32(-2147483648), -53226i), Struct_1(-1545f, vec2<u32>(0u, 45831u)))), Struct_5(Struct_1(-240f, vec2<u32>(0u, 45749u)), -1628f, true, 1u, Struct_2(Struct_1(249f, vec2<u32>(0u, 25880u)), Struct_1(-942f, vec2<u32>(1u, 4294967295u)), -270f, vec3<i32>(1i, -38666i, -11911i), Struct_1(2065f, vec2<u32>(1u, 27516u)))), Struct_5(Struct_1(1127f, vec2<u32>(127490u, 1u)), -603f, true, 64339u, Struct_2(Struct_1(1000f, vec2<u32>(4294967295u, 8234u)), Struct_1(-994f, vec2<u32>(18575u, 47630u)), 956f, vec3<i32>(70548i, 0i, -31725i), Struct_1(-528f, vec2<u32>(18766u, 4294967295u)))), Struct_5(Struct_1(1133f, vec2<u32>(4663u, 4294967295u)), -887f, true, 50979u, Struct_2(Struct_1(472f, vec2<u32>(63468u, 1u)), Struct_1(322f, vec2<u32>(30834u, 0u)), 1094f, vec3<i32>(0i, i32(-2147483648), -1i), Struct_1(-1284f, vec2<u32>(1u, 0u)))), Struct_5(Struct_1(-1075f, vec2<u32>(4294967295u, 0u)), -395f, false, 1u, Struct_2(Struct_1(502f, vec2<u32>(0u, 17968u)), Struct_1(588f, vec2<u32>(70484u, 60084u)), -597f, vec3<i32>(41836i, 24745i, -1i), Struct_1(-477f, vec2<u32>(52725u, 4294967295u)))), Struct_5(Struct_1(390f, vec2<u32>(72669u, 19270u)), -667f, true, 1u, Struct_2(Struct_1(-194f, vec2<u32>(6276u, 1u)), Struct_1(-502f, vec2<u32>(1u, 0u)), 541f, vec3<i32>(-32045i, i32(-2147483648), i32(-2147483648)), Struct_1(345f, vec2<u32>(1u, 4294967295u)))));

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(253f, vec2<u32>(325u, 10384u)), Struct_1(856f, vec2<u32>(0u, 0u)), 845f, vec3<i32>(-1i, 37074i, -1i), Struct_1(-287f, vec2<u32>(0u, 1u))), Struct_2(Struct_1(-892f, vec2<u32>(72287u, 1u)), Struct_1(1711f, vec2<u32>(86094u, 83584u)), 147f, vec3<i32>(-61787i, 1i, 2147483647i), Struct_1(-1000f, vec2<u32>(1u, 50650u))), Struct_2(Struct_1(705f, vec2<u32>(5275u, 9625u)), Struct_1(1015f, vec2<u32>(1u, 0u)), 360f, vec3<i32>(0i, -56395i, -1i), Struct_1(-431f, vec2<u32>(4294967295u, 111935u))), Struct_2(Struct_1(553f, vec2<u32>(120406u, 20834u)), Struct_1(-1445f, vec2<u32>(57860u, 0u)), 1889f, vec3<i32>(-5191i, -1i, -25171i), Struct_1(1017f, vec2<u32>(1u, 1u))), Struct_2(Struct_1(124f, vec2<u32>(121790u, 4294967295u)), Struct_1(993f, vec2<u32>(68711u, 65925u)), -2520f, vec3<i32>(-15897i, i32(-2147483648), 1i), Struct_1(251f, vec2<u32>(19750u, 1u))), Struct_2(Struct_1(-1183f, vec2<u32>(13646u, 0u)), Struct_1(1853f, vec2<u32>(75815u, 1u)), 825f, vec3<i32>(-44874i, 0i, 28031i), Struct_1(575f, vec2<u32>(65988u, 4294967295u))), Struct_2(Struct_1(-282f, vec2<u32>(29239u, 126922u)), Struct_1(-249f, vec2<u32>(1u, 40200u)), 653f, vec3<i32>(0i, 1i, -3591i), Struct_1(618f, vec2<u32>(20503u, 74339u))), Struct_2(Struct_1(-1672f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(-1269f, vec2<u32>(0u, 1u)), 1762f, vec3<i32>(-60383i, -2849i, -1i), Struct_1(676f, vec2<u32>(0u, 140460u))), Struct_2(Struct_1(-2650f, vec2<u32>(0u, 58812u)), Struct_1(105f, vec2<u32>(4294967295u, 1u)), 1688f, vec3<i32>(1i, 0i, 47642i), Struct_1(894f, vec2<u32>(1u, 31883u))), Struct_2(Struct_1(706f, vec2<u32>(4294967295u, 96545u)), Struct_1(-701f, vec2<u32>(1u, 1u)), -705f, vec3<i32>(i32(-2147483648), 2147483647i, 1i), Struct_1(301f, vec2<u32>(102799u, 5205u))), Struct_2(Struct_1(1000f, vec2<u32>(52177u, 0u)), Struct_1(-245f, vec2<u32>(59207u, 60268u)), 1863f, vec3<i32>(-1i, -2153i, i32(-2147483648)), Struct_1(-656f, vec2<u32>(30735u, 4294967295u))), Struct_2(Struct_1(1128f, vec2<u32>(1u, 0u)), Struct_1(1069f, vec2<u32>(4294967295u, 72233u)), -394f, vec3<i32>(21027i, 69045i, -248i), Struct_1(-1025f, vec2<u32>(1u, 0u))), Struct_2(Struct_1(-715f, vec2<u32>(0u, 0u)), Struct_1(-498f, vec2<u32>(0u, 0u)), 248f, vec3<i32>(-21133i, i32(-2147483648), 2147483647i), Struct_1(-108f, vec2<u32>(47039u, 4910u))), Struct_2(Struct_1(-2537f, vec2<u32>(1663u, 17317u)), Struct_1(844f, vec2<u32>(24134u, 102456u)), -1548f, vec3<i32>(-37726i, 5786i, -1i), Struct_1(-274f, vec2<u32>(4294967295u, 36742u))), Struct_2(Struct_1(1055f, vec2<u32>(1u, 8761u)), Struct_1(260f, vec2<u32>(31020u, 30509u)), 1287f, vec3<i32>(-26257i, 57496i, 12093i), Struct_1(1000f, vec2<u32>(1u, 1u))), Struct_2(Struct_1(-218f, vec2<u32>(37779u, 4294967295u)), Struct_1(544f, vec2<u32>(1u, 0u)), 156f, vec3<i32>(0i, 1i, -21809i), Struct_1(207f, vec2<u32>(4294967295u, 28953u))), Struct_2(Struct_1(-578f, vec2<u32>(1u, 36226u)), Struct_1(-1174f, vec2<u32>(1u, 21174u)), 997f, vec3<i32>(i32(-2147483648), 33561i, 1i), Struct_1(914f, vec2<u32>(22971u, 36137u))), Struct_2(Struct_1(-783f, vec2<u32>(1u, 56563u)), Struct_1(1192f, vec2<u32>(22964u, 613u)), 239f, vec3<i32>(15938i, 1i, i32(-2147483648)), Struct_1(683f, vec2<u32>(15884u, 4294967295u))), Struct_2(Struct_1(-1000f, vec2<u32>(31664u, 34914u)), Struct_1(2386f, vec2<u32>(0u, 9340u)), -2343f, vec3<i32>(i32(-2147483648), 1037i, 29171i), Struct_1(672f, vec2<u32>(117866u, 81712u))));

var<private> global3: array<f32, 9> = array<f32, 9>(-1000f, 586f, 1000f, 1463f, 819f, 1000f, -1000f, 421f, 193f);

var<private> global4: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> f32 {
    var var_0 = ~select(_wgslsmith_sub_i32(countOneBits(max(u_input.b.x, arg_3.d.x)), select(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.x, -21713i), arg_3.d), u_input.b.x >> (arg_3.a.b.x % 32u), true)), abs(-7945i), !all(vec2<bool>(true, true)));
    return _wgslsmith_f_op_f32(round(arg_2));
}

fn func_2() -> bool {
    var var_0 = Struct_3(global0.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3(reverseBits(u_input.b.xy), global0.a, global4.b.x, Struct_2(Struct_1(-1857f, global0.e.b), global0.a, 1076f, vec3<i32>(u_input.a, 1i, 71509i), Struct_1(865f, vec2<u32>(global0.b.b.x, global0.a.b.x))))), -143f, 283f, global3[_wgslsmith_index_u32(4294967295u << (firstTrailingBit(27476u) % 32u), 9u)]) + global4.b));
    global3 = array<f32, 9>();
    global4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(~var_0.a.b.x | (global0.b.b.x ^ 6779u), 9u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.b.x - global4.b.x))))), firstTrailingBit(firstTrailingBit(_wgslsmith_sub_vec2_u32(global4.a.b, vec2<u32>(1u, var_0.a.b.x))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global4.b + var_0.b))));
    global1 = array<Struct_5, 8>();
    var var_1 = 1i;
    return any(select(vec2<bool>(true, any(vec3<bool>(true, true, true))), vec2<bool>(true, any(select(vec2<bool>(false, false), vec2<bool>(false, true), true))), true));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: f32) -> vec4<i32> {
    let var_0 = all(vec2<bool>((u_input.a | firstTrailingBit(u_input.a)) >= u_input.a, func_2()));
    var var_1 = global2[_wgslsmith_index_u32(max(1u, _wgslsmith_sub_u32(~(~_wgslsmith_add_u32(arg_1, global0.e.b.x)), 4294967295u)), 19u)];
    let var_2 = Struct_4(Struct_3(Struct_1(-301f, firstTrailingBit(vec2<u32>(0u, var_1.b.b.x))), vec4<f32>(_wgslsmith_div_f32(1284f, _wgslsmith_f_op_f32(floor(arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1025f)), -1000f, global4.b.x)), firstTrailingBit(vec4<u32>(~(~arg_1), max(global4.a.b.x, _wgslsmith_clamp_u32(1u, var_1.a.b.x, 91006u)), 24084u, 126741u)));
    global2 = array<Struct_2, 19>();
    var var_3 = var_2.a.b;
    return vec4<i32>(var_1.d.x, 1i, ~(-2571i), _wgslsmith_mod_i32(~(~(i32(-1i) * -19402i)), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.x))), 41038u, -2111f, global0.c);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(func_3(-global0.d.yy, Struct_1(global3[_wgslsmith_index_u32(~(~global0.a.b.x), 9u)], _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0.e.b.x), vec2<u32>(69105u, 4294967295u)), vec2<u32>(global0.b.b.x, global4.a.b.x))), _wgslsmith_f_op_f32(-global0.c), Struct_2(global0.b, global4.a, _wgslsmith_f_op_f32(f32(-1f) * -1173f), u_input.b, Struct_1(-176f, _wgslsmith_add_vec2_u32(global0.e.b, global0.b.b))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-848f)) * global3[_wgslsmith_index_u32(2112u, 9u)]), _wgslsmith_f_op_f32(floor(-603f))), global4.b.x);
    global4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(744f))), ~(~vec2<u32>(global0.b.b.x, 106481u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-395f * 2358f), 377f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(65346u, 9u)] - -594f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1247f * global3[_wgslsmith_index_u32(global0.e.b.x, 9u)]) * _wgslsmith_f_op_f32(-420f * -846f)), _wgslsmith_f_op_f32(f32(-1f) * -195f))));
    var var_2 = ~var_0.x;
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_mod_u32(global0.b.b.x, 0u)), 9u)] * _wgslsmith_div_f32(-285f, global0.b.a)), ~(~abs(global4.a.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(44088u, 9u)], -873f, 995f, 443f))), vec4<f32>(_wgslsmith_f_op_f32(func_3(u_input.b.zz, Struct_1(var_1.x, vec2<u32>(31557u, global4.a.b.x)), -460f, global2[_wgslsmith_index_u32(global0.e.b.x, 19u)])), _wgslsmith_f_op_f32(global4.b.x * 931f), _wgslsmith_f_op_f32(var_1.x + var_1.x), -854f))));
    global3 = array<f32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.a, -944f, -417f, -1100f)) * _wgslsmith_div_vec4_f32(var_3.b, vec4<f32>(var_1.x, global3[_wgslsmith_index_u32(global0.e.b.x, 9u)], global0.c, 1546f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-773f, 1041f, global4.b.x, 833f)) * _wgslsmith_f_op_vec4_f32(-var_3.b)))) - global4.b), ~_wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(9780u, var_3.a.b.x, 0u, 25516u), vec4<u32>(var_3.a.b.x, var_3.a.b.x, 43288u, 28534u)), 54125u), _wgslsmith_mult_u32(var_3.a.b.x & 4294967295u, abs(global4.a.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-112f - global4.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.e.a, var_3.b.x))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(-var_3.a.a)))), var_3.a.b.x);
}

