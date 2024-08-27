struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(vec3<f32>(1000f, -1982f, -138f), vec2<i32>(-1136i, 2147483647i), -47472i, Struct_1(-1000f, vec3<u32>(6622u, 30418u, 1u), true, vec4<f32>(-1615f, 195f, 1066f, 1015f))), Struct_2(vec3<f32>(278f, 1000f, 144f), vec2<i32>(1i, 1i), 2147483647i, Struct_1(1287f, vec3<u32>(4294967295u, 11271u, 0u), true, vec4<f32>(-1627f, 1202f, -1068f, -1285f))), Struct_2(vec3<f32>(120f, -239f, 2467f), vec2<i32>(-16068i, 19403i), 36053i, Struct_1(-2282f, vec3<u32>(4294967295u, 43673u, 28199u), false, vec4<f32>(640f, 943f, 1657f, 876f))), Struct_2(vec3<f32>(561f, 808f, 396f), vec2<i32>(2147483647i, 0i), i32(-2147483648), Struct_1(-1185f, vec3<u32>(20465u, 0u, 1u), true, vec4<f32>(-1000f, 513f, -1722f, -1183f))), Struct_2(vec3<f32>(-1891f, 417f, 1000f), vec2<i32>(24326i, -42741i), -53414i, Struct_1(343f, vec3<u32>(0u, 57983u, 4294967295u), true, vec4<f32>(1723f, -1157f, -1849f, 111f))), Struct_2(vec3<f32>(-1389f, -138f, -1000f), vec2<i32>(-1i, -1i), 0i, Struct_1(-650f, vec3<u32>(68017u, 4294967295u, 1u), false, vec4<f32>(-770f, 1546f, 1000f, 557f))), Struct_2(vec3<f32>(685f, 380f, 555f), vec2<i32>(-2504i, -47267i), -1i, Struct_1(816f, vec3<u32>(1u, 864u, 29043u), false, vec4<f32>(-1836f, -353f, -1582f, 111f))), Struct_2(vec3<f32>(-592f, -1000f, 224f), vec2<i32>(i32(-2147483648), 4654i), 1i, Struct_1(-374f, vec3<u32>(0u, 4294967295u, 1u), false, vec4<f32>(-777f, 177f, 817f, -1669f))), Struct_2(vec3<f32>(-451f, 252f, 1455f), vec2<i32>(27975i, 40217i), 0i, Struct_1(574f, vec3<u32>(4294967295u, 10351u, 4294967295u), false, vec4<f32>(-758f, -262f, 266f, -1724f))), Struct_2(vec3<f32>(374f, 1267f, -218f), vec2<i32>(2147483647i, 793i), 16202i, Struct_1(582f, vec3<u32>(92056u, 19423u, 48641u), true, vec4<f32>(-420f, -2535f, 737f, -958f))), Struct_2(vec3<f32>(-334f, -916f, -196f), vec2<i32>(-20355i, i32(-2147483648)), i32(-2147483648), Struct_1(-408f, vec3<u32>(15873u, 6730u, 4294967295u), true, vec4<f32>(-1826f, 639f, -2022f, 552f))), Struct_2(vec3<f32>(155f, 1000f, -275f), vec2<i32>(1i, -20777i), 2147483647i, Struct_1(1071f, vec3<u32>(4294967295u, 59535u, 46424u), true, vec4<f32>(-1000f, -1174f, 137f, 1189f))), Struct_2(vec3<f32>(-1628f, -233f, 817f), vec2<i32>(30427i, 1i), 2147483647i, Struct_1(1000f, vec3<u32>(88591u, 17859u, 0u), true, vec4<f32>(1144f, 622f, 561f, 386f))), Struct_2(vec3<f32>(1000f, -181f, 945f), vec2<i32>(i32(-2147483648), 1i), 2147483647i, Struct_1(747f, vec3<u32>(9857u, 22544u, 4294967295u), true, vec4<f32>(-454f, 1675f, 743f, -165f))), Struct_2(vec3<f32>(-455f, -761f, 896f), vec2<i32>(-1i, 2147483647i), 10622i, Struct_1(-624f, vec3<u32>(54105u, 1u, 8089u), true, vec4<f32>(455f, 1207f, -451f, -704f))), Struct_2(vec3<f32>(303f, 306f, -538f), vec2<i32>(-45043i, i32(-2147483648)), -1i, Struct_1(-1088f, vec3<u32>(0u, 77131u, 0u), true, vec4<f32>(769f, -1496f, -237f, -1036f))), Struct_2(vec3<f32>(1213f, 1329f, -198f), vec2<i32>(2147483647i, -33951i), -42526i, Struct_1(-1754f, vec3<u32>(124771u, 5895u, 53438u), false, vec4<f32>(579f, -976f, -154f, -2083f))), Struct_2(vec3<f32>(162f, -399f, -851f), vec2<i32>(i32(-2147483648), -3538i), 0i, Struct_1(919f, vec3<u32>(58457u, 1u, 1u), true, vec4<f32>(213f, -1288f, 663f, 428f))), Struct_2(vec3<f32>(-731f, -1767f, -213f), vec2<i32>(39505i, -21301i), 1i, Struct_1(1333f, vec3<u32>(48391u, 0u, 0u), false, vec4<f32>(-953f, 917f, -454f, -288f))), Struct_2(vec3<f32>(-188f, -320f, -633f), vec2<i32>(-13627i, 1i), i32(-2147483648), Struct_1(-572f, vec3<u32>(76271u, 10369u, 0u), false, vec4<f32>(1318f, -1480f, 2145f, 185f))), Struct_2(vec3<f32>(639f, 467f, -181f), vec2<i32>(-1i, 34934i), -13958i, Struct_1(177f, vec3<u32>(4294967295u, 0u, 1u), true, vec4<f32>(424f, 1000f, -1415f, 496f))), Struct_2(vec3<f32>(265f, 1299f, 1196f), vec2<i32>(75093i, 2147483647i), i32(-2147483648), Struct_1(211f, vec3<u32>(4294967295u, 81756u, 0u), true, vec4<f32>(505f, 1378f, 1000f, -1300f))), Struct_2(vec3<f32>(-313f, -603f, 1260f), vec2<i32>(-64409i, 2147483647i), -843i, Struct_1(1555f, vec3<u32>(42100u, 0u, 4266u), false, vec4<f32>(-2058f, 745f, -675f, 183f))), Struct_2(vec3<f32>(272f, -711f, 1000f), vec2<i32>(74075i, 28453i), i32(-2147483648), Struct_1(-1245f, vec3<u32>(31636u, 49565u, 4294967295u), false, vec4<f32>(440f, 1409f, -589f, 140f))), Struct_2(vec3<f32>(560f, 1693f, -1623f), vec2<i32>(0i, 0i), i32(-2147483648), Struct_1(-1086f, vec3<u32>(118959u, 13096u, 1u), false, vec4<f32>(-377f, -1915f, -2082f, -753f))), Struct_2(vec3<f32>(-134f, -1717f, 2332f), vec2<i32>(3580i, -3053i), 1i, Struct_1(1000f, vec3<u32>(1u, 36589u, 1u), true, vec4<f32>(-2662f, -940f, -670f, -955f))), Struct_2(vec3<f32>(-851f, -1019f, -416f), vec2<i32>(-21822i, 11245i), -50203i, Struct_1(803f, vec3<u32>(4294967295u, 1u, 29144u), true, vec4<f32>(607f, 687f, 1363f, 1849f))), Struct_2(vec3<f32>(568f, 553f, -693f), vec2<i32>(-6257i, i32(-2147483648)), -66401i, Struct_1(-1100f, vec3<u32>(0u, 4294967295u, 0u), false, vec4<f32>(-1725f, -1000f, 487f, 2195f))), Struct_2(vec3<f32>(-1000f, 1537f, 153f), vec2<i32>(0i, 1i), 0i, Struct_1(930f, vec3<u32>(21968u, 42518u, 4887u), false, vec4<f32>(-1035f, 1407f, -120f, 946f))), Struct_2(vec3<f32>(538f, 1110f, -759f), vec2<i32>(8143i, -23164i), 1499i, Struct_1(717f, vec3<u32>(72466u, 1u, 4294967295u), true, vec4<f32>(1659f, -423f, -196f, 1291f))));

var<private> global2: Struct_3 = Struct_3(Struct_1(532f, vec3<u32>(49041u, 50041u, 27725u), true, vec4<f32>(1276f, -1000f, -267f, -1133f)));

var<private> global3: bool = false;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<bool> {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-297f, _wgslsmith_f_op_f32(sign(-1764f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.a.a, global0.d.x) + _wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1599f, 672f, -954f) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.d.x, global0.d.x, global2.a.d.x)))))))));
    global2 = Struct_3(global2.a);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1, _wgslsmith_f_op_vec3_f32(var_1 - _wgslsmith_f_op_vec3_f32(global0.d.www * vec3<f32>(158f, 303f, -1925f))), vec3<bool>(false, any(vec3<bool>(false, var_0, true)), global2.a.c)))));
    var var_3 = var_0;
    return vec2<bool>(!(var_0 & true), var_0);
}

fn func_2() -> i32 {
    let var_0 = select(firstLeadingBit(1u), 1u, !(!(!(global0.c || global0.c))));
    let var_1 = countOneBits(u_input.d | vec4<i32>(_wgslsmith_mult_i32(-2147483647i, u_input.d.x) & 2147483647i, -2147483647i, u_input.c, -(~u_input.d.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d.yzw)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(2109f, global0.d.x, -1604f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-312f, global0.a, global0.a)))))));
    global2 = Struct_3(global2.a);
    var var_3 = !all(vec3<bool>(global2.a.c | global0.c, 56331u <= global0.b.x, global0.c)) && (any(select(select(vec2<bool>(global0.c, false), vec2<bool>(global0.c, true), vec2<bool>(global0.c, global0.c)), func_3(), false)) || global0.c);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(~select(~52366i, 48803i, false), _wgslsmith_mod_i32(-4928i, 40099i), u_input.d.x, var_1.x), firstLeadingBit(-abs(vec4<i32>(-1i, -1i, 67043i, 0i))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: u32) -> Struct_2 {
    global1 = array<Struct_2, 30>();
    var var_0 = func_2();
    let var_1 = arg_0;
    var var_2 = Struct_3(Struct_1(-1005f, select(vec3<u32>(u_input.b, arg_2, arg_2) << (global2.a.b % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(global0.b, ~vec3<u32>(0u, arg_2, u_input.e)), !(!vec3<bool>(true, false, global2.a.c))), any(select(!vec2<bool>(global2.a.c, true), select(vec2<bool>(true, global0.c), vec2<bool>(global2.a.c, global2.a.c), global2.a.c), vec2<bool>(false, false))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global0.d.x, -1000f)), _wgslsmith_f_op_f32(arg_1 + -1000f), -463f, _wgslsmith_f_op_f32(ceil(137f))), _wgslsmith_f_op_vec4_f32(-global2.a.d))));
    var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_1), global2.a.b, true, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.a, 1188f, -1326f, global2.a.d.x))), global0.d))));
    return global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b << (firstLeadingBit(global2.a.b.x) % 32u), _wgslsmith_add_u32(~reverseBits(global0.b.x ^ 0u), firstTrailingBit(_wgslsmith_mod_u32(firstLeadingBit(4294967295u), 27133u)))), 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~0u, _wgslsmith_div_u32((25301u | (16912u ^ u_input.b)) << (u_input.e % 32u), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.e, 34233u), vec2<u32>(global0.b.x, 1u), global2.a.c), ~vec2<u32>(u_input.e, 0u))), u_input.e);
    global1 = array<Struct_2, 30>();
    var var_1 = func_1(u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a) + _wgslsmith_f_op_f32(global2.a.d.x - global2.a.d.x)) * 350f) * global2.a.d.x), ~(~0u));
    var var_2 = func_1(u_input.c, -150f, _wgslsmith_div_u32(~(~(~global2.a.b.x)), ~u_input.b | ~_wgslsmith_add_u32(38931u, 47082u)));
    var_1 = global1[_wgslsmith_index_u32(~52105u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_1.a.zy), select(_wgslsmith_sub_vec4_i32(u_input.d, u_input.d), -vec4<i32>(u_input.d.x, i32(-1i) * -3555i, var_2.b.x, 0i), !var_1.d.c), _wgslsmith_f_op_vec3_f32(-global2.a.d.zwy), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1961f, _wgslsmith_div_f32(global0.a, var_2.a.x))), _wgslsmith_f_op_vec2_f32(ceil(global0.d.zx)))));
}

