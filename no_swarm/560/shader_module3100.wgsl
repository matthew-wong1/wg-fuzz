struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 14> = array<vec3<i32>, 14>(vec3<i32>(-1i, i32(-2147483648), 28029i), vec3<i32>(62188i, 0i, 9954i), vec3<i32>(i32(-2147483648), -26093i, i32(-2147483648)), vec3<i32>(2147483647i, 2147483647i, 521i), vec3<i32>(2147483647i, 0i, 2147483647i), vec3<i32>(2147483647i, -22125i, -35551i), vec3<i32>(i32(-2147483648), -48035i, 2147483647i), vec3<i32>(-9967i, 1i, 104611i), vec3<i32>(-15980i, 2147483647i, -10457i), vec3<i32>(-15487i, 0i, -4980i), vec3<i32>(1i, 2147483647i, -167i), vec3<i32>(-1i, -636i, 19324i), vec3<i32>(-1i, 21736i, 29570i), vec3<i32>(2147483647i, -34272i, -11219i));

var<private> global1: vec2<i32>;

var<private> global2: array<i32, 16> = array<i32, 16>(-1i, -10675i, -4014i, 2147483647i, 32433i, -6826i, 2147483647i, i32(-2147483648), 1333i, 0i, -47149i, 8145i, 2147483647i, 25430i, 19142i, 1i);

var<private> global3: array<vec4<bool>, 23>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a, firstLeadingBit(39878u)), ~min(vec3<u32>(u_input.a, u_input.b.x, 58506u), vec3<u32>(924u, 13954u, 39031u)), ~(~vec3<u32>(u_input.b.x, u_input.a, 65599u))), _wgslsmith_clamp_vec3_u32(select(~vec3<u32>(0u, 4294967295u, u_input.b.x), vec3<u32>(u_input.a, u_input.a, u_input.b.x), vec3<bool>(true, true, true)), ~vec3<u32>(u_input.a, 106951u, u_input.a), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, u_input.b.x), vec3<u32>(u_input.a, u_input.b.x, 0u))), vec3<u32>(u_input.b.x, select(54918u, u_input.b.x, true), u_input.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(855f - -1659f), 1265f, _wgslsmith_f_op_f32(1797f * -607f), _wgslsmith_f_op_f32(476f - 946f)))) - vec4<f32>(-1511f, 1000f, _wgslsmith_f_op_f32(-847f + _wgslsmith_f_op_f32(382f + 1762f)), 416f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -525f, 789f, 624f) + vec4<f32>(648f, -404f, 106f, 1063f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, -561f, 1443f, 853f), _wgslsmith_f_op_vec4_f32(vec4<f32>(310f, -634f, -1000f, 891f) - vec4<f32>(1343f, -1000f, -252f, 1724f))), false))));
    var var_1 = global1.x;
    global1 = select(u_input.c.xx, u_input.c.xy, vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), true)) & true, any(select(select(vec4<bool>(true, false, true, true), global3[_wgslsmith_index_u32(29475u, 23u)], false), !global3[_wgslsmith_index_u32(21727u, 23u)], all(vec2<bool>(true, false))))));
    let var_2 = Struct_1(reverseBits(reverseBits(var_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(556f + var_0.c.x), var_0.b.x, _wgslsmith_f_op_f32(198f * 188f), _wgslsmith_f_op_f32(-1287f + var_0.c.x)))) * _wgslsmith_f_op_vec4_f32(exp2(var_0.c))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(980f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.x - 1815f), -119f), _wgslsmith_f_op_f32(-var_0.b.x), var_0.b.x))));
    let var_3 = Struct_1(vec3<u32>(var_2.a.x, var_0.a.x >> (_wgslsmith_dot_vec2_u32(var_2.a.zz, _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(1u, var_0.a.x))) % 32u), _wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.a, u_input.a), firstLeadingBit(4294967295u << (var_2.a.x % 32u)))), var_2.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.c + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(868f, var_0.b.x, var_2.c.x, -2058f)))) + var_2.b)));
    return _wgslsmith_div_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(var_2.b.x, -488f))))), -906f);
}

fn func_2() -> f32 {
    global3 = array<vec4<bool>, 23>();
    var var_0 = !global3[_wgslsmith_index_u32(abs(u_input.a), 23u)];
    let var_1 = Struct_1(~(~(~vec3<u32>(38393u, 21559u, u_input.b.x))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1723f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -941f) - _wgslsmith_div_f32(139f, -520f)), _wgslsmith_f_op_f32(340f * 1149f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(507f, 886f, -527f, 1114f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 421f, 406f, -1111f) * vec4<f32>(2185f, 2666f, -1644f, 2430f))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-114f)))), _wgslsmith_f_op_f32(select(-785f, _wgslsmith_f_op_f32(f32(-1f) * -676f), (-2147483647i == global1.x) | true)), -1581f, -1343f));
    let var_2 = Struct_1(~(vec3<u32>(1u, var_1.a.x & 91197u, select(83932u, u_input.b.x, var_0.x)) & vec3<u32>(7732u >> (var_1.a.x % 32u), ~9692u, var_1.a.x)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-277f + var_1.b.x)))), 421f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(985f))) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1685f, var_1.c.x, _wgslsmith_f_op_f32(-var_1.b.x), -167f))));
    var_0 = global3[_wgslsmith_index_u32(1u ^ _wgslsmith_add_u32(~reverseBits(_wgslsmith_clamp_u32(4294967295u, 1u, var_1.a.x)), ~(~_wgslsmith_sub_u32(30903u, 27640u))), 23u)];
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), var_2.b.x), var_2.c.x)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_f_op_f32(sign(-625f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), arg_2.c.x)));
    var var_1 = u_input.a;
    let var_2 = vec3<bool>(abs(-1i) > ~_wgslsmith_mod_i32(-68622i, u_input.c.x), all(!global3[_wgslsmith_index_u32(~abs(66719u), 23u)]), false);
    var var_3 = var_2.x;
    var var_4 = vec3<i32>(-1i) * -global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(1992u | arg_1.a.x, ~arg_0), 14u)];
    return Struct_1(abs(abs(vec3<u32>(~0u, ~57644u, firstLeadingBit(arg_1.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1279f, arg_1.c.x, arg_2.c.x, arg_1.b.x)))) * arg_2.b)), arg_1.b);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> bool {
    var var_0 = func_1(firstTrailingBit(_wgslsmith_mult_u32(max(4294967295u, ~arg_3.a.x), ~countOneBits(u_input.b.x))), arg_0, arg_3, func_1(1u, arg_0, Struct_1(arg_3.a, _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-657f, -136f, -426f, arg_0.c.x))), arg_0.b), arg_3));
    global0 = array<vec3<i32>, 14>();
    var var_1 = 18249u;
    let var_2 = arg_0;
    var var_3 = !(!select(!vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, arg_2), !select(vec2<bool>(true, false), vec2<bool>(true, false), false)));
    return !(!(!any(select(vec2<bool>(false, arg_2), vec2<bool>(var_3.x, false), vec2<bool>(arg_2, arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(any(vec2<bool>(func_4(func_1(18272u, Struct_1(vec3<u32>(u_input.a, u_input.b.x, 0u), vec4<f32>(1003f, -1010f, 210f, -515f), vec4<f32>(2066f, -706f, -487f, 787f)), Struct_1(vec3<u32>(66729u, 87162u, u_input.a), vec4<f32>(-1446f, 447f, -982f, 1000f), vec4<f32>(943f, 780f, 1826f, 841f)), Struct_1(vec3<u32>(51499u, u_input.a, 4294967295u), vec4<f32>(1000f, -729f, -661f, 818f), vec4<f32>(-620f, -1000f, 145f, -691f))), _wgslsmith_clamp_u32(43112u, u_input.a, u_input.b.x), true, func_1(u_input.a, Struct_1(vec3<u32>(4294967295u, u_input.b.x, 6019u), vec4<f32>(-859f, -1727f, 1000f, -1000f), vec4<f32>(192f, 651f, -1484f, 317f)), Struct_1(vec3<u32>(u_input.b.x, 6381u, 4294967295u), vec4<f32>(-777f, -319f, -1208f, 1000f), vec4<f32>(-325f, 1636f, -1000f, -1505f)), Struct_1(vec3<u32>(26663u, 35074u, 1u), vec4<f32>(-461f, -1000f, 405f, 1000f), vec4<f32>(1048f, 870f, 924f, -477f)))), true)), any(!global3[_wgslsmith_index_u32(u_input.b.x, 23u)]));
    var var_1 = vec3<f32>(203f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 206f, var_0.x))) + _wgslsmith_f_op_f32(floor(-256f))) + _wgslsmith_f_op_f32(trunc(-1166f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(758f, 1f)) - func_1(u_input.a << (u_input.b.x % 32u), Struct_1(vec3<u32>(83760u, 10573u, 6123u), vec4<f32>(801f, -256f, 512f, 1000f), vec4<f32>(-349f, -1000f, -685f, -370f)), Struct_1(vec3<u32>(u_input.a, 0u, u_input.a), vec4<f32>(275f, 336f, -1618f, -944f), vec4<f32>(997f, 939f, -408f, -2122f)), Struct_1(vec3<u32>(u_input.b.x, 1u, 11024u), vec4<f32>(-258f, -201f, 1000f, -320f), vec4<f32>(-1000f, 1705f, 1135f, -832f))).c.x) * _wgslsmith_f_op_f32(f32(-1f) * -341f)));
    var var_2 = func_1(18695u, Struct_1(_wgslsmith_add_vec3_u32(~vec3<u32>(44152u, 1u, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 32350u, 0u), vec3<u32>(1u, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a, 1u))) << ((~vec3<u32>(4294967295u, 46418u, 4294967295u) >> (vec3<u32>(1u, u_input.a, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.x * 231f), var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-424f, -229f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-323f, var_1.x, 691f, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -1409f, var_1.x, 578f) * vec4<f32>(1589f, var_1.x, var_1.x, var_1.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(453f, var_1.x, var_1.x, -1290f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-427f, 1256f, var_1.x, var_1.x) * vec4<f32>(1000f, var_1.x, 576f, var_1.x))))), func_1(~(~u_input.a), func_1(abs(_wgslsmith_sub_u32(u_input.b.x, u_input.b.x)), Struct_1(firstLeadingBit(vec3<u32>(70948u, u_input.b.x, 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 741f, -1163f, var_1.x), vec4<f32>(-606f, var_1.x, -1598f, 1155f), vec4<bool>(false, false, true, true)))), Struct_1(vec3<u32>(12966u, 30841u, 4294967295u), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -1000f, var_1.x) - vec4<f32>(var_1.x, 341f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, -2278f, var_1.x) * vec4<f32>(499f, 933f, var_1.x, -1009f))), Struct_1(vec3<u32>(u_input.b.x, u_input.a, 4294967295u) >> (vec3<u32>(u_input.b.x, 57404u, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, -378f, 668f, 2503f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<f32>(1000f, 1000f, var_1.x, 886f), vec4<bool>(true, var_0.x, true, false))))), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x << (1u % 32u), 12243u), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -872f, var_1.x, -1140f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 376f, var_1.x)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-370f, var_1.x, var_1.x, -1698f)), all(var_0)))), Struct_1(vec3<u32>(firstTrailingBit(0u), 1u, 0u), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(403f, 1000f, var_1.x, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1510f, var_1.x, -1226f, 1919f) + vec4<f32>(var_1.x, var_1.x, -238f, 1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1171f, -1000f, -611f, var_1.x))))), Struct_1(~min(vec3<u32>(u_input.a, 37808u, 62113u) << (vec3<u32>(u_input.a, 22766u, u_input.b.x) % vec3<u32>(32u)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1481f, -152f, var_1.x, -184f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-968f, 1000f, -283f, var_1.x) + vec4<f32>(var_1.x, 1679f, -1197f, -1000f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(-638f, -1288f, 785f, -396f), vec4<f32>(var_1.x, var_1.x, 1231f, var_1.x)))));
    var var_3 = func_1(~firstTrailingBit(~(var_2.a.x ^ 4294967295u)), func_1(abs(abs(u_input.a)), func_1(1u, Struct_1(select(vec3<u32>(var_2.a.x, 76350u, u_input.b.x), vec3<u32>(31738u, var_2.a.x, u_input.b.x), vec3<bool>(var_0.x, true, var_0.x)), vec4<f32>(var_1.x, 1327f, -1392f, -730f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-461f, 1271f, var_1.x, var_2.c.x) + vec4<f32>(-1239f, 881f, var_2.b.x, var_2.b.x))), Struct_1(~vec3<u32>(48961u, 103494u, 126599u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(165f, -1734f, var_1.x, var_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -332f, var_2.c.x, var_2.c.x) * vec4<f32>(var_2.c.x, 365f, var_1.x, var_2.b.x))), Struct_1(vec3<u32>(var_2.a.x, var_2.a.x, 125395u), _wgslsmith_f_op_vec4_f32(var_2.c + vec4<f32>(var_1.x, -347f, 689f, 1361f)), _wgslsmith_f_op_vec4_f32(var_2.b + var_2.b))), func_1(14443u, Struct_1(~vec3<u32>(4294967295u, u_input.b.x, u_input.a), vec4<f32>(541f, 1228f, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.c.x, var_1.x, -886f, 1099f)))), Struct_1(firstLeadingBit(var_2.a), var_2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_2.b.x, var_2.c.x, -1202f) - vec4<f32>(var_1.x, 646f, var_1.x, var_1.x))), func_1(firstLeadingBit(var_2.a.x), func_1(u_input.b.x, Struct_1(var_2.a, var_2.c, vec4<f32>(658f, var_2.b.x, 357f, var_2.c.x)), Struct_1(vec3<u32>(59396u, 4294967295u, var_2.a.x), var_2.b, vec4<f32>(var_2.c.x, 1000f, var_2.b.x, var_1.x)), Struct_1(vec3<u32>(var_2.a.x, 1u, 4294967295u), var_2.c, vec4<f32>(var_2.b.x, var_2.b.x, var_1.x, -510f))), func_1(var_2.a.x, Struct_1(vec3<u32>(var_2.a.x, 1u, u_input.b.x), var_2.c, var_2.c), Struct_1(var_2.a, var_2.b, vec4<f32>(var_1.x, var_1.x, -959f, 111f)), Struct_1(var_2.a, var_2.b, vec4<f32>(-1458f, var_2.b.x, var_1.x, -255f))), Struct_1(var_2.a, var_2.b, vec4<f32>(874f, var_2.c.x, 107f, var_2.c.x)))), Struct_1(~(var_2.a << (var_2.a % vec3<u32>(32u))), var_2.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_2.b, vec4<f32>(-454f, var_2.c.x, var_2.c.x, -1539f), vec4<bool>(var_0.x, false, var_0.x, var_0.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(888f, var_1.x, -1716f, var_1.x), var_2.c, var_0.x))))), func_1(var_2.a.x, func_1(84400u, Struct_1(~var_2.a, var_2.c, vec4<f32>(422f, var_2.c.x, var_1.x, var_2.c.x)), Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(1895u, var_2.a.x, var_2.a.x), var_2.a, vec3<u32>(22787u, u_input.b.x, u_input.a)), vec4<f32>(1000f, var_1.x, -382f, var_2.b.x), var_2.c), func_1(var_2.a.x, Struct_1(var_2.a, vec4<f32>(1041f, var_2.c.x, var_2.c.x, -716f), var_2.c), func_1(0u, Struct_1(var_2.a, vec4<f32>(var_2.b.x, var_1.x, var_2.c.x, 1252f), var_2.c), Struct_1(var_2.a, vec4<f32>(var_2.c.x, 1861f, 711f, -763f), var_2.c), Struct_1(var_2.a, var_2.c, var_2.b)), Struct_1(var_2.a, vec4<f32>(847f, var_2.c.x, var_1.x, var_2.b.x), vec4<f32>(531f, var_1.x, var_1.x, -1599f)))), func_1(u_input.a, func_1(var_2.a.x & u_input.b.x, func_1(14699u, Struct_1(vec3<u32>(17070u, var_2.a.x, u_input.b.x), var_2.c, var_2.b), Struct_1(var_2.a, vec4<f32>(var_1.x, var_1.x, 573f, 1000f), vec4<f32>(-256f, var_2.b.x, 153f, -102f)), Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec4<f32>(1016f, 1409f, -2327f, var_2.c.x), vec4<f32>(-1327f, var_2.c.x, -221f, var_2.c.x))), Struct_1(vec3<u32>(4294967295u, 4294967295u, 42128u), var_2.c, var_2.c), Struct_1(vec3<u32>(u_input.a, 58881u, 38835u), vec4<f32>(-628f, 1000f, 1000f, var_1.x), vec4<f32>(-855f, var_1.x, 286f, 951f))), func_1(~4294967295u, Struct_1(vec3<u32>(14764u, var_2.a.x, 0u), vec4<f32>(var_1.x, -1764f, var_2.b.x, var_2.c.x), vec4<f32>(1955f, var_1.x, var_1.x, var_2.c.x)), Struct_1(var_2.a, var_2.b, vec4<f32>(var_2.c.x, 585f, var_2.b.x, var_2.c.x)), Struct_1(var_2.a, var_2.c, vec4<f32>(var_2.b.x, 733f, var_1.x, -948f))), func_1(_wgslsmith_add_u32(4294967295u, u_input.b.x), Struct_1(var_2.a, var_2.c, var_2.c), func_1(101842u, Struct_1(vec3<u32>(18513u, u_input.b.x, 65792u), var_2.c, vec4<f32>(var_2.c.x, -570f, 2570f, var_2.b.x)), Struct_1(vec3<u32>(var_2.a.x, var_2.a.x, 0u), vec4<f32>(var_2.c.x, 1471f, var_2.c.x, var_1.x), var_2.c), Struct_1(var_2.a, var_2.b, vec4<f32>(-1926f, var_2.b.x, var_2.c.x, -681f))), func_1(17995u, Struct_1(vec3<u32>(4294967295u, 49277u, u_input.a), vec4<f32>(var_2.b.x, -667f, 912f, 1298f), vec4<f32>(var_1.x, 271f, var_2.b.x, var_1.x)), Struct_1(vec3<u32>(0u, u_input.b.x, var_2.a.x), var_2.c, var_2.b), Struct_1(vec3<u32>(var_2.a.x, 13094u, var_2.a.x), var_2.b, var_2.b)))), func_1(7833u, func_1(1u, func_1(59099u, Struct_1(vec3<u32>(u_input.b.x, 1u, 58925u), vec4<f32>(1000f, var_1.x, var_2.b.x, var_1.x), var_2.c), Struct_1(var_2.a, vec4<f32>(var_1.x, -1000f, 1637f, -1000f), var_2.b), Struct_1(vec3<u32>(4294967295u, 27812u, 10134u), vec4<f32>(var_2.c.x, var_2.c.x, var_2.c.x, -398f), vec4<f32>(var_2.c.x, 1171f, 1078f, var_1.x))), func_1(38140u, Struct_1(vec3<u32>(u_input.a, var_2.a.x, 30195u), var_2.c, var_2.c), Struct_1(vec3<u32>(var_2.a.x, 0u, 4294967295u), var_2.c, var_2.c), Struct_1(vec3<u32>(var_2.a.x, 0u, var_2.a.x), var_2.b, var_2.c)), Struct_1(vec3<u32>(55718u, var_2.a.x, 4294967295u), var_2.b, vec4<f32>(159f, 1275f, 445f, var_1.x))), Struct_1(select(vec3<u32>(var_2.a.x, 0u, 42151u), vec3<u32>(1u, var_2.a.x, 0u), var_0.x), var_2.b, var_2.c), func_1(~var_2.a.x, func_1(var_2.a.x, Struct_1(var_2.a, var_2.c, var_2.c), Struct_1(vec3<u32>(var_2.a.x, var_2.a.x, 1u), vec4<f32>(var_1.x, var_1.x, var_1.x, -662f), var_2.c), Struct_1(var_2.a, var_2.c, vec4<f32>(var_2.b.x, var_2.b.x, var_1.x, var_2.b.x))), func_1(4294967295u, Struct_1(var_2.a, var_2.c, var_2.c), Struct_1(vec3<u32>(32888u, var_2.a.x, 1u), var_2.b, var_2.c), Struct_1(var_2.a, vec4<f32>(var_1.x, -1008f, -871f, 1766f), vec4<f32>(-1212f, var_1.x, 432f, var_2.c.x))), func_1(0u, Struct_1(var_2.a, var_2.b, var_2.b), Struct_1(var_2.a, var_2.c, vec4<f32>(361f, -632f, -464f, -1000f)), Struct_1(var_2.a, vec4<f32>(1000f, var_1.x, var_2.b.x, 495f), var_2.b))))), Struct_1(~(_wgslsmith_div_vec3_u32(vec3<u32>(var_2.a.x, 4294967295u, 49510u), var_2.a) ^ ~vec3<u32>(u_input.b.x, 19395u, var_2.a.x)), var_2.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(var_2.b, var_2.b)), vec4<f32>(-1454f, var_2.c.x, -1121f, var_2.c.x), !global3[_wgslsmith_index_u32(1u, 23u)])) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_2.c, var_2.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-990f, 868f, 1427f, var_1.x))))));
    var_3 = Struct_1(vec3<u32>(76747u >> (u_input.b.x % 32u), select(var_2.a.x, var_2.a.x, select(all(global3[_wgslsmith_index_u32(54393u, 23u)]), any(var_0), true)), func_1(42677u, func_1(var_2.a.x, func_1(4294967295u, Struct_1(var_2.a, vec4<f32>(-1068f, var_1.x, var_2.b.x, 439f), vec4<f32>(var_3.b.x, -150f, var_1.x, -493f)), Struct_1(var_2.a, var_2.c, vec4<f32>(var_1.x, -915f, -836f, 1035f)), Struct_1(vec3<u32>(u_input.b.x, u_input.a, 67349u), var_3.b, vec4<f32>(2858f, var_3.b.x, var_1.x, 332f))), func_1(var_3.a.x, Struct_1(var_2.a, var_3.c, var_2.c), Struct_1(vec3<u32>(u_input.a, var_3.a.x, 26176u), var_2.b, vec4<f32>(var_1.x, var_1.x, var_2.c.x, var_3.c.x)), Struct_1(var_3.a, var_3.c, vec4<f32>(845f, 679f, 874f, -2342f))), Struct_1(vec3<u32>(u_input.a, 0u, u_input.a), vec4<f32>(722f, -143f, var_1.x, 367f), var_3.c)), Struct_1(~vec3<u32>(0u, var_3.a.x, 2454u), vec4<f32>(762f, var_2.b.x, var_3.c.x, var_3.c.x), _wgslsmith_f_op_vec4_f32(select(var_3.c, vec4<f32>(-1000f, var_3.c.x, 1318f, var_2.b.x), var_0.x))), func_1(461u, Struct_1(var_3.a, vec4<f32>(var_3.b.x, -1000f, var_3.c.x, 709f), vec4<f32>(-684f, 869f, -1381f, var_2.c.x)), Struct_1(var_3.a, vec4<f32>(203f, var_3.c.x, -601f, var_1.x), var_2.b), func_1(u_input.a, Struct_1(vec3<u32>(54664u, var_2.a.x, 1u), vec4<f32>(var_2.b.x, var_2.c.x, -1275f, var_3.c.x), var_3.c), Struct_1(var_3.a, vec4<f32>(var_1.x, 136f, -842f, 1582f), vec4<f32>(743f, var_1.x, 706f, -526f)), Struct_1(var_3.a, vec4<f32>(var_2.b.x, 1597f, var_1.x, 1772f), var_2.b)))).a.x), var_3.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2060f, 1105f, var_1.x, 1000f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(424f, 1380f, -620f, -927f) - var_2.c))), var_3.b)));
    let x = u_input.a;
    s_output = StorageBuffer((vec2<u32>(~77735u, 1u) ^ (~var_3.a.xz ^ firstLeadingBit(var_2.a.zx))) << (reverseBits(min(var_3.a.xx, var_3.a.xy) << (~vec2<u32>(var_3.a.x, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
}

