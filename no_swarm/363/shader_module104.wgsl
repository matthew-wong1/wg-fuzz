struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: f32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(vec2<i32>(i32(-2147483648), 2147483647i), -428f, vec3<i32>(i32(-2147483648), -29717i, -43198i), vec2<f32>(1077f, -408f), 2147483647i), vec3<f32>(581f, -475f, -778f), Struct_2(vec4<i32>(-1i, -3055i, i32(-2147483648), 2147483647i), Struct_1(vec2<i32>(2147483647i, 1i), 574f, vec3<i32>(-5052i, i32(-2147483648), 2147483647i), vec2<f32>(-261f, -461f), 2147483647i), Struct_1(vec2<i32>(47501i, -39374i), 595f, vec3<i32>(-55947i, -1i, 2147483647i), vec2<f32>(125f, 916f), 1i), vec2<f32>(-1156f, 2150f)), -182f, Struct_2(vec4<i32>(-1i, 9212i, 81401i, 1i), Struct_1(vec2<i32>(16131i, -19360i), -234f, vec3<i32>(-6184i, 1i, 41292i), vec2<f32>(-1000f, -1088f), -1i), Struct_1(vec2<i32>(i32(-2147483648), 0i), 350f, vec3<i32>(0i, 20515i, -583i), vec2<f32>(-940f, 2196f), -1i), vec2<f32>(1445f, -693f))), Struct_3(Struct_1(vec2<i32>(-16809i, -28239i), 1323f, vec3<i32>(6270i, 4455i, 16687i), vec2<f32>(1830f, -639f), 4901i), vec3<f32>(1766f, 1533f, 519f), Struct_2(vec4<i32>(-30485i, 1i, -52365i, -1i), Struct_1(vec2<i32>(-1i, 2147483647i), 759f, vec3<i32>(-66022i, -30588i, 83739i), vec2<f32>(-189f, 224f), 1070i), Struct_1(vec2<i32>(-1i, 1i), 1086f, vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec2<f32>(580f, -1546f), -49470i), vec2<f32>(-121f, 442f)), -663f, Struct_2(vec4<i32>(-1558i, -26096i, 4791i, 28658i), Struct_1(vec2<i32>(-15709i, 0i), 295f, vec3<i32>(0i, 23984i, i32(-2147483648)), vec2<f32>(-1051f, -1325f), 2147483647i), Struct_1(vec2<i32>(-30317i, -6097i), 452f, vec3<i32>(-17474i, -18058i, i32(-2147483648)), vec2<f32>(318f, 372f), 2147483647i), vec2<f32>(533f, -175f))), Struct_3(Struct_1(vec2<i32>(-1i, -17250i), 861f, vec3<i32>(-17705i, 1050i, -16514i), vec2<f32>(-861f, -1518f), 1i), vec3<f32>(-529f, -834f, -1113f), Struct_2(vec4<i32>(1i, -55081i, 3768i, 42265i), Struct_1(vec2<i32>(4823i, 61302i), 472f, vec3<i32>(-7325i, 1i, 21799i), vec2<f32>(-892f, 1343f), i32(-2147483648)), Struct_1(vec2<i32>(-1i, 0i), -1161f, vec3<i32>(-1i, 1i, 50968i), vec2<f32>(-803f, -1625f), 2147483647i), vec2<f32>(-305f, -447f)), 1158f, Struct_2(vec4<i32>(2147483647i, 0i, 0i, -1i), Struct_1(vec2<i32>(i32(-2147483648), 4822i), 228f, vec3<i32>(8274i, 1i, i32(-2147483648)), vec2<f32>(-913f, 421f), 58199i), Struct_1(vec2<i32>(i32(-2147483648), -1i), 516f, vec3<i32>(-8711i, 0i, -38804i), vec2<f32>(1000f, -980f), 4922i), vec2<f32>(-1856f, -1011f))), Struct_3(Struct_1(vec2<i32>(71932i, 1i), -1715f, vec3<i32>(2147483647i, -14043i, 0i), vec2<f32>(400f, 184f), -686i), vec3<f32>(221f, 714f, -628f), Struct_2(vec4<i32>(21486i, -22723i, -1i, i32(-2147483648)), Struct_1(vec2<i32>(52138i, -48869i), -298f, vec3<i32>(-5157i, 40655i, -24709i), vec2<f32>(743f, 1213f), 0i), Struct_1(vec2<i32>(-3547i, 20316i), 723f, vec3<i32>(31808i, 2147483647i, 22690i), vec2<f32>(-452f, 395f), 21979i), vec2<f32>(-362f, -826f)), -125f, Struct_2(vec4<i32>(8216i, 44429i, 56323i, -1i), Struct_1(vec2<i32>(-1i, 1888i), -1411f, vec3<i32>(1i, -25622i, -24467i), vec2<f32>(825f, -677f), -41685i), Struct_1(vec2<i32>(1i, i32(-2147483648)), 707f, vec3<i32>(1i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-1278f, -1000f), -41803i), vec2<f32>(1397f, -1533f))), Struct_3(Struct_1(vec2<i32>(-10818i, i32(-2147483648)), 1113f, vec3<i32>(12140i, 1i, 11493i), vec2<f32>(2187f, -325f), 0i), vec3<f32>(-127f, 708f, -451f), Struct_2(vec4<i32>(-35434i, -21420i, 2147483647i, 14698i), Struct_1(vec2<i32>(i32(-2147483648), 47031i), 2157f, vec3<i32>(14413i, 43228i, 0i), vec2<f32>(-330f, -850f), i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, 30104i), 435f, vec3<i32>(59192i, -19342i, i32(-2147483648)), vec2<f32>(1341f, 696f), -1i), vec2<f32>(-1000f, 228f)), 712f, Struct_2(vec4<i32>(0i, -74848i, 15738i, 2167i), Struct_1(vec2<i32>(7764i, 26687i), -1495f, vec3<i32>(0i, 1i, -1i), vec2<f32>(490f, -504f), -1i), Struct_1(vec2<i32>(-32305i, -1i), 307f, vec3<i32>(-15846i, 6568i, -945i), vec2<f32>(2366f, 681f), 0i), vec2<f32>(-1308f, 181f))), Struct_3(Struct_1(vec2<i32>(51820i, 2147483647i), 896f, vec3<i32>(19136i, 27979i, -3528i), vec2<f32>(979f, 805f), 0i), vec3<f32>(1000f, -1216f, -1434f), Struct_2(vec4<i32>(-1i, i32(-2147483648), 72569i, 15325i), Struct_1(vec2<i32>(2990i, 1i), -1000f, vec3<i32>(0i, 774i, 2147483647i), vec2<f32>(-268f, -464f), 2147483647i), Struct_1(vec2<i32>(49739i, 1i), -844f, vec3<i32>(39912i, -62091i, i32(-2147483648)), vec2<f32>(-461f, -1076f), 2147483647i), vec2<f32>(-1398f, -1039f)), -493f, Struct_2(vec4<i32>(0i, 44522i, -1i, -1i), Struct_1(vec2<i32>(7347i, -13056i), -380f, vec3<i32>(1i, 0i, -1i), vec2<f32>(-1993f, 891f), 2147483647i), Struct_1(vec2<i32>(-30788i, 26171i), 952f, vec3<i32>(34825i, i32(-2147483648), i32(-2147483648)), vec2<f32>(-811f, 899f), 1i), vec2<f32>(669f, 1000f))), Struct_3(Struct_1(vec2<i32>(-1i, 30848i), -248f, vec3<i32>(22554i, 9693i, 2147483647i), vec2<f32>(-1011f, -901f), 55920i), vec3<f32>(338f, -737f, -414f), Struct_2(vec4<i32>(48345i, 2147483647i, -1i, 18731i), Struct_1(vec2<i32>(56057i, 1i), -409f, vec3<i32>(-17138i, 0i, 12120i), vec2<f32>(-1251f, 1085f), -1i), Struct_1(vec2<i32>(i32(-2147483648), -12800i), 413f, vec3<i32>(-41103i, 1i, -22958i), vec2<f32>(-1000f, 130f), 0i), vec2<f32>(-967f, 655f)), -401f, Struct_2(vec4<i32>(-1i, 1i, -24237i, -1i), Struct_1(vec2<i32>(0i, i32(-2147483648)), -1161f, vec3<i32>(-30208i, -3341i, 7951i), vec2<f32>(452f, -1356f), 21632i), Struct_1(vec2<i32>(-4753i, -5063i), 1561f, vec3<i32>(i32(-2147483648), 0i, 0i), vec2<f32>(-408f, 1921f), i32(-2147483648)), vec2<f32>(1000f, 115f))), Struct_3(Struct_1(vec2<i32>(57671i, 1i), 186f, vec3<i32>(-1917i, 2147483647i, -16309i), vec2<f32>(529f, 104f), 2147483647i), vec3<f32>(208f, 726f, -772f), Struct_2(vec4<i32>(59175i, 10198i, -1i, 2147483647i), Struct_1(vec2<i32>(-1i, 0i), 2037f, vec3<i32>(-1i, 1i, 2098i), vec2<f32>(216f, -185f), -1i), Struct_1(vec2<i32>(-1i, -14125i), -284f, vec3<i32>(i32(-2147483648), 0i, 0i), vec2<f32>(2225f, -1000f), 35462i), vec2<f32>(-1696f, -1398f)), 365f, Struct_2(vec4<i32>(13440i, 17436i, -40773i, -1321i), Struct_1(vec2<i32>(1i, -1i), -352f, vec3<i32>(1i, 15701i, 2147483647i), vec2<f32>(-884f, 698f), 0i), Struct_1(vec2<i32>(39092i, -1i), 264f, vec3<i32>(29093i, i32(-2147483648), -10836i), vec2<f32>(-354f, 213f), -26373i), vec2<f32>(200f, 141f))), Struct_3(Struct_1(vec2<i32>(-18073i, 0i), 1214f, vec3<i32>(2147483647i, -17472i, -82757i), vec2<f32>(-165f, -1000f), -1i), vec3<f32>(-349f, -2133f, 1389f), Struct_2(vec4<i32>(-1i, 14343i, 0i, -15572i), Struct_1(vec2<i32>(-12369i, 2147483647i), -538f, vec3<i32>(1i, 1i, 1i), vec2<f32>(801f, 665f), 22094i), Struct_1(vec2<i32>(1i, 0i), -919f, vec3<i32>(36538i, 0i, i32(-2147483648)), vec2<f32>(-1023f, -928f), i32(-2147483648)), vec2<f32>(178f, 331f)), 322f, Struct_2(vec4<i32>(31153i, 25808i, 1i, 15128i), Struct_1(vec2<i32>(-19571i, i32(-2147483648)), 259f, vec3<i32>(i32(-2147483648), 1i, 0i), vec2<f32>(1234f, 1000f), 7283i), Struct_1(vec2<i32>(-1i, i32(-2147483648)), 972f, vec3<i32>(0i, -1i, 25737i), vec2<f32>(890f, -366f), 79197i), vec2<f32>(-721f, -1651f))), Struct_3(Struct_1(vec2<i32>(1i, -1i), 740f, vec3<i32>(2147483647i, -43360i, 39779i), vec2<f32>(749f, 1374f), 1i), vec3<f32>(1571f, 214f, 1046f), Struct_2(vec4<i32>(-22047i, -66095i, 0i, 1i), Struct_1(vec2<i32>(2147483647i, -27259i), 190f, vec3<i32>(1i, -10150i, -4921i), vec2<f32>(-473f, -1213f), -1400i), Struct_1(vec2<i32>(1i, -1i), -1734f, vec3<i32>(1i, 1i, 1i), vec2<f32>(-328f, -775f), 2147483647i), vec2<f32>(1902f, -1498f)), 1000f, Struct_2(vec4<i32>(1i, 28471i, 0i, -1i), Struct_1(vec2<i32>(0i, -1i), 422f, vec3<i32>(36048i, 3435i, i32(-2147483648)), vec2<f32>(-353f, 526f), -35482i), Struct_1(vec2<i32>(-9903i, -14447i), 1000f, vec3<i32>(1i, 1i, 51242i), vec2<f32>(161f, -1221f), 5093i), vec2<f32>(1234f, -367f))));

var<private> global1: vec3<f32>;

var<private> global2: f32;

var<private> global3: Struct_5;

var<private> global4: array<bool, 9>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: bool) -> bool {
    return global4[_wgslsmith_index_u32(u_input.d, 9u)];
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    global2 = 608f;
    let var_0 = !vec2<bool>(false, !func_2(false));
    global4 = array<bool, 9>();
    let var_1 = global0[_wgslsmith_index_u32(1u, 10u)];
    global4 = array<bool, 9>();
    return Struct_1(vec2<i32>(1i, max(-2147483647i, i32(-1i) * -u_input.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1448f, 1909f, true)) - arg_0.c.d.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(-19857i), min(arg_0.a.x, arg_1.x), i32(-1i) * -2147483647i), _wgslsmith_div_vec3_i32(abs(u_input.c), _wgslsmith_mod_vec3_i32(u_input.b, arg_0.c.c)), vec3<i32>(1i, 1i, 1i)) & u_input.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.d.x)), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_div_i32(1i, arg_1.x) ^ 0i);
}

fn func_3(arg_0: Struct_2) -> vec2<f32> {
    var var_0 = reverseBits(abs(-_wgslsmith_div_i32(~(-27744i), min(-20970i, -1i))));
    var var_1 = arg_0;
    var var_2 = u_input.b;
    var var_3 = Struct_2(~vec4<i32>(-u_input.c.x | abs(arg_0.c.e), 54187i, var_2.x, var_1.a.x), func_1(arg_0, vec3<i32>(~2147483647i, firstTrailingBit(60903i), -3317i)), var_1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.d)));
    let var_4 = vec4<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(max(u_input.d, u_input.d), ~u_input.d, u_input.d << (u_input.d % 32u), 1u >> (u_input.d % 32u)), vec4<u32>(u_input.d, 33487u, 28478u, 1u) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, 1u), vec4<u32>(57855u, u_input.d, 361u, u_input.d)) % vec4<u32>(32u)), select(select(vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 9u)], global4[_wgslsmith_index_u32(u_input.d, 9u)], global4[_wgslsmith_index_u32(u_input.d, 9u)], global4[_wgslsmith_index_u32(u_input.d, 9u)]), vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 9u)], true, global4[_wgslsmith_index_u32(u_input.d, 9u)], false), global4[_wgslsmith_index_u32(1u, 9u)]), select(vec4<bool>(global4[_wgslsmith_index_u32(0u, 9u)], false, global4[_wgslsmith_index_u32(u_input.d, 9u)], global4[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<bool>(global4[_wgslsmith_index_u32(66132u, 9u)], global4[_wgslsmith_index_u32(75339u, 9u)], false, true), vec4<bool>(global4[_wgslsmith_index_u32(55635u, 9u)], false, false, false)), !vec4<bool>(global4[_wgslsmith_index_u32(0u, 9u)], global4[_wgslsmith_index_u32(50196u, 9u)], global4[_wgslsmith_index_u32(u_input.d, 9u)], true))), vec4<u32>(~1u, ~firstLeadingBit(1u), ~select(u_input.d, u_input.d, global4[_wgslsmith_index_u32(u_input.d, 9u)]), 4294967295u)), 1u, u_input.d, u_input.d);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-929f, -919f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x + -948f) + -294f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(-vec4<i32>(26862i, -1i, -4863i, -19344i), func_1(Struct_2(vec4<i32>(11357i, -1i, u_input.c.x, u_input.a.x), Struct_1(u_input.b.xz, -367f, u_input.c, vec2<f32>(715f, global1.x), u_input.c.x), Struct_1(u_input.b.xy, -475f, u_input.c, vec2<f32>(global1.x, global3.a.x), u_input.a.x), vec2<f32>(-213f, -2223f)), u_input.b), func_1(Struct_2(vec4<i32>(u_input.a.x, -47766i, u_input.a.x, -40952i), Struct_1(u_input.b.yx, global3.a.x, vec3<i32>(u_input.c.x, 2147483647i, 1i), vec2<f32>(-1636f, global3.a.x), u_input.a.x), Struct_1(vec2<i32>(1i, u_input.b.x), global1.x, vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec2<f32>(global3.a.x, global1.x), -18321i), vec2<f32>(-653f, global1.x)), vec3<i32>(1i, u_input.a.x, -25781i)), vec2<f32>(150f, global3.a.x)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(f32(-1f) * -930f)) + global1.xy)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~_wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(6730u, 4294967295u)), ~4294967295u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d, u_input.d), abs(vec2<u32>(u_input.d, u_input.d)))), 59408u), 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(reverseBits(vec2<u32>(u_input.d, u_input.d))), vec2<u32>(u_input.d, u_input.d)), vec2<u32>(u_input.d, 82547u & u_input.d)), ~4294967295u, u_input.d);
}

