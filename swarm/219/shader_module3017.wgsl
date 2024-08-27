struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec4<i32>(14943i, i32(-2147483648), 1i, -6732i), vec2<f32>(-1449f, 849f), false, vec4<f32>(-1281f, 759f, 1369f, -848f)), Struct_1(vec4<i32>(2147483647i, 1i, -1i, -1535i), vec2<f32>(-659f, 773f), false, vec4<f32>(1000f, -445f, -428f, -655f)), Struct_1(vec4<i32>(2147483647i, 21534i, -1i, 1i), vec2<f32>(-870f, -248f), false, vec4<f32>(-691f, 578f, 282f, 453f))), Struct_2(Struct_1(vec4<i32>(-23172i, 67534i, 1i, -64637i), vec2<f32>(-1386f, 495f), true, vec4<f32>(-277f, -1870f, 319f, -144f)), Struct_1(vec4<i32>(1i, 0i, -2110i, 2147483647i), vec2<f32>(-1392f, -775f), false, vec4<f32>(-784f, 873f, -200f, 755f)), Struct_1(vec4<i32>(37986i, 0i, -23046i, -43687i), vec2<f32>(-388f, -1423f), false, vec4<f32>(1131f, 1079f, -129f, 2039f))), Struct_2(Struct_1(vec4<i32>(-1446i, -1i, 0i, 0i), vec2<f32>(235f, -101f), true, vec4<f32>(-409f, -1398f, -1267f, -1990f)), Struct_1(vec4<i32>(-14144i, 17910i, -30146i, 1i), vec2<f32>(-1166f, -763f), false, vec4<f32>(-128f, -794f, 1050f, -846f)), Struct_1(vec4<i32>(63608i, i32(-2147483648), i32(-2147483648), -1871i), vec2<f32>(-890f, 265f), false, vec4<f32>(797f, -1085f, -947f, -904f))), Struct_2(Struct_1(vec4<i32>(2147483647i, -1i, -35363i, 0i), vec2<f32>(135f, -1210f), false, vec4<f32>(-309f, 1315f, 912f, 595f)), Struct_1(vec4<i32>(-5740i, 1i, -1i, -15571i), vec2<f32>(1000f, 2015f), false, vec4<f32>(-1331f, 1963f, -1135f, -753f)), Struct_1(vec4<i32>(1i, 0i, 1i, i32(-2147483648)), vec2<f32>(-664f, 824f), true, vec4<f32>(-1000f, 1286f, -655f, -223f))), Struct_2(Struct_1(vec4<i32>(0i, 1i, -1i, i32(-2147483648)), vec2<f32>(1140f, -990f), false, vec4<f32>(-129f, 802f, 1013f, 220f)), Struct_1(vec4<i32>(44279i, 4221i, -3516i, 724i), vec2<f32>(-1000f, -558f), false, vec4<f32>(1000f, 758f, -1000f, 481f)), Struct_1(vec4<i32>(4368i, -1600i, 0i, -74076i), vec2<f32>(-623f, -1995f), true, vec4<f32>(-439f, 846f, 1199f, -605f))), Struct_2(Struct_1(vec4<i32>(-32600i, i32(-2147483648), -1i, 589i), vec2<f32>(299f, 1590f), false, vec4<f32>(253f, -1101f, -228f, -818f)), Struct_1(vec4<i32>(i32(-2147483648), -1i, -5124i, -1i), vec2<f32>(1000f, 731f), false, vec4<f32>(869f, 466f, 1022f, 711f)), Struct_1(vec4<i32>(1i, 18118i, -24461i, 0i), vec2<f32>(-1226f, -1000f), true, vec4<f32>(-595f, -1000f, 972f, 411f))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), -480i, -25566i), vec2<f32>(825f, 1000f), false, vec4<f32>(1000f, 635f, -285f, -869f)), Struct_1(vec4<i32>(i32(-2147483648), -6700i, 0i, 0i), vec2<f32>(997f, -749f), true, vec4<f32>(3430f, 532f, -365f, 725f)), Struct_1(vec4<i32>(1i, 15408i, 26915i, -6431i), vec2<f32>(-784f, 1489f), false, vec4<f32>(-880f, -868f, -487f, 837f))), Struct_2(Struct_1(vec4<i32>(-1i, 32281i, 9443i, 36675i), vec2<f32>(1284f, 344f), true, vec4<f32>(-1424f, -811f, -437f, -716f)), Struct_1(vec4<i32>(3959i, -1i, 0i, -8839i), vec2<f32>(-1486f, 966f), true, vec4<f32>(-1975f, 185f, 314f, -1626f)), Struct_1(vec4<i32>(-30385i, 2071i, -13954i, i32(-2147483648)), vec2<f32>(-121f, 1000f), false, vec4<f32>(659f, -577f, -1343f, 1248f))), Struct_2(Struct_1(vec4<i32>(19576i, 0i, 38812i, -10786i), vec2<f32>(468f, 1011f), true, vec4<f32>(-326f, -368f, 793f, -1115f)), Struct_1(vec4<i32>(-839i, -30378i, 61499i, -4093i), vec2<f32>(657f, 1804f), true, vec4<f32>(-1346f, -681f, -1232f, 507f)), Struct_1(vec4<i32>(18948i, i32(-2147483648), -1i, -1i), vec2<f32>(-729f, -831f), true, vec4<f32>(-854f, -1523f, 741f, 317f))), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -47040i, -47020i, 16378i), vec2<f32>(-2159f, -406f), true, vec4<f32>(-471f, 1677f, 365f, -1000f)), Struct_1(vec4<i32>(-1i, 1i, i32(-2147483648), -1i), vec2<f32>(1142f, 114f), true, vec4<f32>(1719f, -384f, -1020f, -693f)), Struct_1(vec4<i32>(2147483647i, -7192i, -46018i, 1i), vec2<f32>(602f, -1000f), false, vec4<f32>(-1000f, 1616f, -821f, -1555f))), Struct_2(Struct_1(vec4<i32>(35490i, -60936i, -18885i, -1i), vec2<f32>(-1000f, -1002f), false, vec4<f32>(-1004f, 1000f, 2813f, 840f)), Struct_1(vec4<i32>(-4018i, 51594i, -39913i, -8283i), vec2<f32>(-893f, -1359f), false, vec4<f32>(-441f, 1390f, 958f, 430f)), Struct_1(vec4<i32>(i32(-2147483648), -9026i, -6127i, 0i), vec2<f32>(1139f, 252f), true, vec4<f32>(662f, -282f, -1810f, 919f))));

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec4<f32>(-598f, -2035f, -1693f, 483f)), Struct_3(vec4<f32>(-1079f, 747f, -784f, 2989f)), Struct_3(vec4<f32>(1183f, -639f, -944f, 1092f)), Struct_3(vec4<f32>(-115f, -430f, -1823f, -555f)), Struct_3(vec4<f32>(1476f, 189f, 1075f, 578f)), Struct_3(vec4<f32>(572f, 382f, 1000f, -323f)), Struct_3(vec4<f32>(-445f, -787f, -324f, 908f)), Struct_3(vec4<f32>(215f, 1000f, -1860f, -174f)), Struct_3(vec4<f32>(2317f, 1000f, 196f, 1408f)), Struct_3(vec4<f32>(680f, 929f, -1138f, -697f)), Struct_3(vec4<f32>(233f, 1621f, -1709f, -466f)), Struct_3(vec4<f32>(-771f, -1024f, 2446f, 108f)), Struct_3(vec4<f32>(-1114f, 220f, 1000f, 553f)), Struct_3(vec4<f32>(253f, 941f, 450f, 1572f)), Struct_3(vec4<f32>(-1119f, 1771f, 705f, 706f)));

var<private> global3: f32;

var<private> global4: array<u32, 16>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = vec3<bool>(global1.c, global1.c, global1.c);
    global2 = array<Struct_3, 15>();
    var var_1 = Struct_1(global1.a << (reverseBits(vec4<u32>(u_input.a.x, global4[_wgslsmith_index_u32(7938u, 16u)] >> (global4[_wgslsmith_index_u32(u_input.a.x, 16u)] % 32u), 4294967295u, 55434u)) % vec4<u32>(32u)), arg_0.a.xw, global1.c, global1.d);
    global3 = _wgslsmith_f_op_f32(max(-1304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x * arg_2) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-705f, global1.d.x))) - arg_2)));
    var_0 = vec3<bool>(global1.c, false, !(false && (10195u > reverseBits(global4[_wgslsmith_index_u32(40054u, 16u)]))));
    return Struct_1(vec4<i32>(-18670i, ~_wgslsmith_add_i32(countOneBits(1i), reverseBits(1289i)), select(~var_1.a.x, _wgslsmith_sub_i32(global1.a.x ^ global1.a.x, global1.a.x), any(vec4<bool>(true, true, true, false)) == any(vec3<bool>(false, false, false))), var_1.a.x >> ((_wgslsmith_add_u32(global4[_wgslsmith_index_u32(1u, 16u)], global4[_wgslsmith_index_u32(u_input.a.x, 16u)]) | ~u_input.a.x) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b - arg_0.a.yw)), (~0u & ~u_input.a.x) > ~(u_input.a.x & u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global1.d)) + vec4<f32>(_wgslsmith_f_op_f32(arg_2 * var_1.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.x, -1615f)), -1000f, _wgslsmith_f_op_f32(abs(159f)))));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = arg_3.c.c;
    global4 = array<u32, 16>();
    let var_1 = -1i;
    var var_2 = global0[_wgslsmith_index_u32(23441u, 11u)];
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.b.b.x, arg_0.a.x), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-arg_0.a.wy))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.a.b.x + 134f))), 1000f)));
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: i32) -> Struct_2 {
    global3 = global1.d.x;
    let var_0 = func_2(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 15u)], -1127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)));
    let var_1 = firstLeadingBit(~(vec4<u32>(_wgslsmith_mult_u32(68844u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 16u)]), ~u_input.a.x, 1u, ~0u) >> (~(vec4<u32>(26452u, 45636u, 1u, arg_1.x) & vec4<u32>(30506u, global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 16u)])) % vec4<u32>(32u))));
    global3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(689f))), 194f)));
    global4 = array<u32, 16>();
    return Struct_2(func_2(global2[_wgslsmith_index_u32(arg_1.x, 15u)], _wgslsmith_f_op_f32(sign(1421f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.d.x * global1.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1691f * -1118f), global1.d.x))), Struct_1(select(~var_0.a, global1.a, !var_0.c), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(32250u, 16u)], arg_1.x, 18841u), 15u)], global1.c, var_0.c, Struct_2(var_0, var_0, var_0))))), arg_1.x < _wgslsmith_dot_vec4_u32(var_1, var_1), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1106f, arg_0, var_0.d.x) * vec4<f32>(188f, global1.d.x, arg_0, arg_0)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(802f, -473f, -909f, arg_0) + vec4<f32>(global1.b.x, 1540f, 568f, 882f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -165f, var_0.b.x, 1000f) + vec4<f32>(1518f, var_0.b.x, global1.b.x, -418f)))), var_0);
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(-arg_0.c.d.x)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(trunc(global1.d.x)), -1000f);
    let var_1 = ~countOneBits(countOneBits(arg_0.a.a));
    global2 = array<Struct_3, 15>();
    let var_2 = !func_2(Struct_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1445f, global1.d.x, -981f, global1.d.x), vec4<f32>(137f, 362f, global1.d.x, arg_0.a.b.x), arg_0.b.c))), var_0.x, _wgslsmith_f_op_f32(-806f * 2325f)).c | func_2(Struct_3(vec4<f32>(_wgslsmith_f_op_f32(global1.b.x - -398f), _wgslsmith_f_op_f32(-global1.d.x), -950f, arg_0.a.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1396f, -591f) + _wgslsmith_div_f32(global1.d.x, _wgslsmith_f_op_f32(arg_0.a.b.x * var_0.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec2_f32(func_3(global2[_wgslsmith_index_u32(firstLeadingBit(1u), 15u)], global1.c, arg_0.a.c, arg_0)).x))).c;
    let var_3 = Struct_2(func_2(global2[_wgslsmith_index_u32(2067u, 15u)], 1142f, global1.b.x), func_1(766f, u_input.a, -_wgslsmith_div_i32(arg_0.a.a.x >> (u_input.a.x % 32u), 1i)).b, func_2(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-453f, arg_0.b.d.x, 404f, var_0.x) * var_0))), _wgslsmith_f_op_f32(f32(-1f) * -1182f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -323f)))));
    return _wgslsmith_mult_vec4_u32(countOneBits(~vec4<u32>(1u, 0u, 4294967295u, 55982u) ^ vec4<u32>(max(4294967295u, u_input.a.x), _wgslsmith_div_u32(u_input.a.x, global4[_wgslsmith_index_u32(11561u, 16u)]), 29796u, 4294967295u)), vec4<u32>(~_wgslsmith_sub_u32(28757u, global4[_wgslsmith_index_u32(4294967295u, 16u)]) ^ ~(global4[_wgslsmith_index_u32(u_input.a.x, 16u)] >> (26543u % 32u)), 1u, u_input.a.x, u_input.a.x));
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    global2 = array<Struct_3, 15>();
    let var_0 = firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_i32(-1i, 1i, _wgslsmith_div_i32(-11773i, abs(global1.a.x)))));
    global4 = array<u32, 16>();
    var var_1 = global1.b;
    let var_2 = u_input.a;
    return Struct_1(vec4<i32>(-abs(_wgslsmith_div_i32(0i, 939i)), var_0, ~max(global1.a.x, global1.a.x), -var_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-596f)), _wgslsmith_f_op_f32(global1.b.x + global1.d.x)))), true, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.d))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(countOneBits(global4[_wgslsmith_index_u32(6367u, 16u)]), 31284u)), 16u)];
    var_0 = u_input.a.x;
    var_0 = global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~(~(~(~global4[_wgslsmith_index_u32(u_input.a.x, 16u)])) & ~u_input.a.x), 16u)], 16u)];
    global1 = func_5(_wgslsmith_add_vec4_u32(select(firstTrailingBit(abs(vec4<u32>(54907u, 0u, 17618u, 16698u))), func_4(func_1(global1.d.x, u_input.a, global1.a.x)), true), vec4<u32>(global4[_wgslsmith_index_u32(firstTrailingBit(~1u), 16u)], u_input.a.x, ~1u, ~(~19337u))));
    let var_1 = Struct_1(vec4<i32>(i32(-1i) * -28811i, reverseBits(_wgslsmith_sub_i32(global1.a.x, -1i)), func_5(_wgslsmith_clamp_vec4_u32(vec4<u32>(45798u, 1u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)], 16u)], global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 16u)]), vec4<u32>(u_input.a.x, global4[_wgslsmith_index_u32(3880u, 16u)], u_input.a.x, global4[_wgslsmith_index_u32(0u, 16u)]), vec4<u32>(1u, 0u, u_input.a.x, 5858u)) << (vec4<u32>(1u, 1u, 54083u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(56585u, 16u)], 16u)]) % vec4<u32>(32u))).a.x, _wgslsmith_clamp_i32(func_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 1u, global4[_wgslsmith_index_u32(u_input.a.x, 16u)]), vec3<u32>(u_input.a.x, 0u, global4[_wgslsmith_index_u32(4294967295u, 16u)])), 15u)], global1.d.x, _wgslsmith_f_op_f32(floor(global1.b.x))).a.x, _wgslsmith_mult_i32(-1i, global1.a.x), 1i)), global1.b, u_input.a.x < 55378u, global1.d);
    var var_2 = vec3<u32>(~_wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a) ^ _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(16864u, u_input.a.x, 29049u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 17757u, 0u), vec3<u32>(global4[_wgslsmith_index_u32(4294967295u, 16u)], 4294967295u, global4[_wgslsmith_index_u32(u_input.a.x, 16u)]))), _wgslsmith_dot_vec4_u32(~vec4<u32>(global4[_wgslsmith_index_u32(17122u, 16u)], global4[_wgslsmith_index_u32(1u, 16u)], 0u, u_input.a.x), select(vec4<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 16u)], 16u)], 1u, global4[_wgslsmith_index_u32(u_input.a.x, 16u)], 1u), vec4<u32>(14433u, 0u, 0u, 0u), vec4<bool>(var_1.c, true, global1.c, false)))), global4[_wgslsmith_index_u32(u_input.a.x, 16u)], select(countOneBits(~_wgslsmith_mult_u32(29961u, 52486u)), _wgslsmith_div_u32(firstLeadingBit(62949u), reverseBits(u_input.a.x)) | ~abs(global4[_wgslsmith_index_u32(0u, 16u)]), !func_5(abs(vec4<u32>(u_input.a.x, global4[_wgslsmith_index_u32(107423u, 16u)], u_input.a.x, global4[_wgslsmith_index_u32(64914u, 16u)]))).c));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(countOneBits(min(vec2<u32>(1u, global4[_wgslsmith_index_u32(var_2.x, 16u)]), vec2<u32>(1u, 18604u)))));
}

