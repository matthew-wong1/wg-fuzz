struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(true, vec2<i32>(1i, 7320i), vec4<f32>(672f, 703f, 218f, 1186f), Struct_1(349f, false, -1i, 4294967295u)), Struct_2(true, vec2<i32>(2147483647i, 17209i), vec4<f32>(417f, -1296f, 250f, -1804f), Struct_1(631f, false, -1i, 81678u)), Struct_2(true, vec2<i32>(-1i, 22842i), vec4<f32>(218f, -696f, 902f, 1000f), Struct_1(-1230f, false, 19543i, 20015u)), Struct_2(false, vec2<i32>(i32(-2147483648), -40047i), vec4<f32>(-1126f, 557f, 1210f, -658f), Struct_1(-736f, true, -1i, 55945u)), Struct_2(false, vec2<i32>(0i, 43165i), vec4<f32>(389f, 2603f, 1215f, -365f), Struct_1(-1000f, false, 2147483647i, 149u)), Struct_2(true, vec2<i32>(i32(-2147483648), 2147483647i), vec4<f32>(-581f, -251f, 437f, -2440f), Struct_1(720f, false, -33542i, 4294967295u)), Struct_2(false, vec2<i32>(2147483647i, -1i), vec4<f32>(-526f, -1055f, 321f, 1169f), Struct_1(-363f, false, 59563i, 39471u)), Struct_2(true, vec2<i32>(2147483647i, 873i), vec4<f32>(-934f, 1000f, -740f, -1517f), Struct_1(-1000f, true, 59020i, 4294967295u)), Struct_2(true, vec2<i32>(0i, 0i), vec4<f32>(279f, 1000f, 1119f, 262f), Struct_1(974f, true, 13106i, 0u)), Struct_2(true, vec2<i32>(0i, 0i), vec4<f32>(-1187f, 290f, 1665f, -471f), Struct_1(-277f, false, 1i, 0u)), Struct_2(false, vec2<i32>(38379i, 36579i), vec4<f32>(355f, 1000f, -627f, -2957f), Struct_1(-1000f, true, -3390i, 4294967295u)), Struct_2(true, vec2<i32>(2147483647i, 17742i), vec4<f32>(1000f, 480f, 678f, 1499f), Struct_1(-972f, false, -51160i, 35736u)), Struct_2(false, vec2<i32>(8114i, 2147483647i), vec4<f32>(225f, -1264f, 198f, -602f), Struct_1(185f, true, -5590i, 2652u)), Struct_2(false, vec2<i32>(-7590i, -2595i), vec4<f32>(-1000f, -775f, 757f, -230f), Struct_1(-1278f, true, -45530i, 4294967295u)), Struct_2(true, vec2<i32>(1i, 1791i), vec4<f32>(160f, -720f, -507f, -325f), Struct_1(-752f, true, 1i, 1914u)), Struct_2(true, vec2<i32>(1i, 25450i), vec4<f32>(-468f, -1111f, -639f, -673f), Struct_1(121f, true, 11033i, 4294967295u)), Struct_2(true, vec2<i32>(316i, 41205i), vec4<f32>(-381f, 631f, 422f, 360f), Struct_1(547f, true, 24240i, 0u)), Struct_2(false, vec2<i32>(2147483647i, 1i), vec4<f32>(446f, 436f, -576f, 666f), Struct_1(-915f, true, 5194i, 4294967295u)), Struct_2(true, vec2<i32>(0i, 19987i), vec4<f32>(-360f, 639f, 413f, -1000f), Struct_1(-1282f, true, 29435i, 50392u)), Struct_2(false, vec2<i32>(-86555i, -11648i), vec4<f32>(839f, -1184f, 417f, 1355f), Struct_1(-1000f, false, -4152i, 1u)));

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(true, vec2<i32>(-17597i, 56490i), vec4<f32>(-1000f, -864f, -335f, 1756f), Struct_1(-264f, false, 1i, 14288u)), Struct_2(true, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<f32>(-1206f, 1000f, 1495f, 154f), Struct_1(-445f, false, i32(-2147483648), 4294967295u)), Struct_2(true, vec2<i32>(33740i, 24556i), vec4<f32>(-336f, -106f, 344f, 967f), Struct_1(319f, true, -17619i, 1u)), Struct_2(false, vec2<i32>(0i, -25596i), vec4<f32>(1295f, -1875f, 1460f, -249f), Struct_1(571f, false, 32456i, 3757u)), Struct_2(true, vec2<i32>(-13453i, -3263i), vec4<f32>(-647f, -776f, -1092f, -1071f), Struct_1(-637f, true, 12581i, 22537u)), Struct_2(false, vec2<i32>(-40248i, 71380i), vec4<f32>(1413f, -572f, -3341f, 661f), Struct_1(-1000f, false, 7611i, 1u)), Struct_2(false, vec2<i32>(-2673i, 1i), vec4<f32>(-1759f, 264f, 1295f, 714f), Struct_1(261f, true, 0i, 4294967295u)), Struct_2(false, vec2<i32>(-9383i, -2986i), vec4<f32>(1492f, 1000f, -109f, 388f), Struct_1(-688f, true, 6697i, 4294967295u)), Struct_2(false, vec2<i32>(-35700i, 25662i), vec4<f32>(2371f, -1037f, 787f, -592f), Struct_1(-253f, false, 16571i, 4294967295u)), Struct_2(true, vec2<i32>(-1i, 18164i), vec4<f32>(958f, -1349f, 572f, -1055f), Struct_1(-1115f, false, 30045i, 46085u)), Struct_2(true, vec2<i32>(-17558i, 2147483647i), vec4<f32>(1604f, 1844f, 1000f, 1357f), Struct_1(1668f, true, 2147483647i, 1u)), Struct_2(false, vec2<i32>(57714i, 2147483647i), vec4<f32>(101f, -329f, 134f, 615f), Struct_1(1000f, false, i32(-2147483648), 4124u)), Struct_2(false, vec2<i32>(1i, 1i), vec4<f32>(-348f, 1011f, -247f, -1876f), Struct_1(758f, true, -6841i, 1u)), Struct_2(false, vec2<i32>(-20531i, i32(-2147483648)), vec4<f32>(1930f, -505f, 841f, -218f), Struct_1(-861f, false, 1i, 4294967295u)), Struct_2(false, vec2<i32>(1i, -1i), vec4<f32>(1668f, -1400f, 161f, 130f), Struct_1(-316f, true, -1i, 41798u)), Struct_2(false, vec2<i32>(20717i, 1i), vec4<f32>(-448f, 1991f, -842f, 715f), Struct_1(-175f, false, 2147483647i, 4294967295u)), Struct_2(true, vec2<i32>(33215i, i32(-2147483648)), vec4<f32>(-158f, -2011f, 521f, -112f), Struct_1(1054f, false, i32(-2147483648), 35143u)), Struct_2(false, vec2<i32>(-47594i, 8625i), vec4<f32>(1591f, 792f, 237f, 783f), Struct_1(-881f, true, i32(-2147483648), 13528u)));

var<private> global2: u32 = 4294967295u;

var<private> global3: array<i32, 3> = array<i32, 3>(2147483647i, -1i, -2939i);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c) * _wgslsmith_f_op_vec4_f32(max(arg_0.c, vec4<f32>(-661f, arg_0.c.x, arg_0.d.a, 460f)))))), arg_0.c)));
    return !arg_1;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = Struct_2(!(false || func_3(Struct_2(false, vec2<i32>(global3[_wgslsmith_index_u32(arg_0.x, 3u)], -2147483647i), vec4<f32>(-1516f, -138f, -799f, 260f), Struct_1(-632f, true, -18650i, 39421u)), u_input.a >= -66857i)), vec2<i32>(~(-15680i), -2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2562f, 400f, -2039f, 1927f), vec4<f32>(275f, -2357f, -183f, 331f))))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-157f))))), !(223f > _wgslsmith_f_op_f32(ceil(-1339f))), -(~(-1i)), ~_wgslsmith_add_u32(_wgslsmith_div_u32(arg_0.x, 4294967295u), ~u_input.d)));
    global1 = array<Struct_2, 18>();
    var var_1 = !vec3<bool>(!var_0.d.b, any(select(select(vec2<bool>(false, true), vec2<bool>(var_0.a, var_0.d.b), var_0.a), !vec2<bool>(false, var_0.d.b), select(vec2<bool>(var_0.a, var_0.d.b), vec2<bool>(false, false), vec2<bool>(false, true)))), !any(vec3<bool>(var_0.d.b, var_0.d.b, var_0.d.b)));
    let var_2 = 29796u;
    let var_3 = global0[_wgslsmith_index_u32(firstLeadingBit(57979u), 20u)];
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-996f * _wgslsmith_f_op_f32(abs(var_3.d.a))))), true, reverseBits(_wgslsmith_dot_vec2_i32(-countOneBits(var_3.b), ~var_0.b)), 86760u);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<f32>) -> Struct_2 {
    global3 = array<i32, 3>();
    var var_0 = arg_2.x;
    let var_1 = func_2(u_input.c);
    var var_2 = Struct_2(!any(!select(vec4<bool>(false, true, arg_1, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), vec4<bool>(true, arg_0.b, true, var_1.b))), ~_wgslsmith_clamp_vec2_i32(-vec2<i32>(-26046i, var_1.c), countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(arg_0.d, 3u)], u_input.a), vec2<i32>(26719i, global3[_wgslsmith_index_u32(var_1.d, 3u)]), vec2<i32>(-2327i, u_input.a))), vec2<i32>(arg_0.c, _wgslsmith_mod_i32(arg_0.c, arg_0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_3) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-129f)), -1000f, func_2(u_input.c).a, _wgslsmith_f_op_f32(select(-2262f, var_1.a, arg_1))))), func_2(vec3<u32>(~u_input.d, _wgslsmith_mult_u32(var_1.d, ~u_input.d), ~0u)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(120f * _wgslsmith_f_op_f32(-var_2.d.a))), _wgslsmith_div_f32(796f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.x)))))) - _wgslsmith_f_op_f32(-1000f + arg_0.a));
    return global1[_wgslsmith_index_u32(~(~1u), 18u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = vec4<bool>(any(!(!(!vec2<bool>(arg_2.d.b, true)))), arg_2.d.b, true, true);
    let var_1 = arg_2.d;
    var var_2 = Struct_1(1f, false, i32(-1i) * -1i, 0u);
    let var_3 = select(~(~(-_wgslsmith_mult_vec2_i32(vec2<i32>(-49108i, arg_2.b.x), vec2<i32>(-1i, 42629i)))), arg_1.yx, var_0.yy);
    let var_4 = 2147483647i;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = func_4(select(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-1i, 6418i, 1i, 1i), vec4<i32>(-26824i, -15458i, 8325i, u_input.a), vec4<bool>(true, true, var_0, true)), ~vec4<i32>(global3[_wgslsmith_index_u32(1795u, 3u)], -2147483647i, -2147483647i, global3[_wgslsmith_index_u32(u_input.c.x, 3u)])), vec4<i32>(~(-17988i), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 1u), 3u)], _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(u_input.d, 3u)], global3[_wgslsmith_index_u32(u_input.d, 3u)]), global3[_wgslsmith_index_u32(max(u_input.c.x, 4294967295u), 3u)])), firstTrailingBit((vec4<i32>(global3[_wgslsmith_index_u32(41805u, 3u)], global3[_wgslsmith_index_u32(u_input.d, 3u)], 0i, -2147483647i) << (vec4<u32>(0u, u_input.d, u_input.d, u_input.c.x) % vec4<u32>(32u))) ^ vec4<i32>(global3[_wgslsmith_index_u32(u_input.d, 3u)], global3[_wgslsmith_index_u32(u_input.d, 3u)], global3[_wgslsmith_index_u32(u_input.c.x, 3u)], global3[_wgslsmith_index_u32(20988u, 3u)])), true), countOneBits(_wgslsmith_mult_vec3_i32(firstLeadingBit(-vec3<i32>(1i, global3[_wgslsmith_index_u32(51666u, 3u)], u_input.b)), vec3<i32>(u_input.a, firstTrailingBit(0i), _wgslsmith_mod_i32(u_input.b, u_input.b)))), func_1(Struct_1(_wgslsmith_f_op_f32(sign(-970f)), true, -2147483647i, u_input.d), true, vec4<f32>(1619f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f + -2972f)), 146f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -925f))), vec4<f32>(-345f, 1f, _wgslsmith_f_op_f32(ceil(-522f)), _wgslsmith_f_op_f32(ceil(1f)))));
    let var_2 = u_input.d;
    var_1 = func_4(-((vec4<i32>(604i, -2147483647i, 9460i, 1i) & vec4<i32>(global3[_wgslsmith_index_u32(u_input.d, 3u)], u_input.b, global3[_wgslsmith_index_u32(4294967295u, 3u)], global3[_wgslsmith_index_u32(var_2, 3u)])) << (select(vec4<u32>(var_1.d, 85008u, 1u, var_1.d), ~vec4<u32>(0u, var_2, var_1.d, 0u), !var_1.b) % vec4<u32>(32u))), _wgslsmith_add_vec3_i32(abs(~select(vec3<i32>(global3[_wgslsmith_index_u32(var_2, 3u)], global3[_wgslsmith_index_u32(var_1.d, 3u)], 30680i), vec3<i32>(-50059i, u_input.a, -2147483647i), vec3<bool>(false, true, true))), vec3<i32>(_wgslsmith_sub_i32(2147483647i, i32(-1i) * -58705i), -2147483647i, max(-2236i | var_1.c, 1i))), Struct_2(!(!var_0), vec2<i32>(-11774i, -2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.a - var_1.a), _wgslsmith_f_op_f32(-467f + var_1.a), func_1(Struct_1(var_1.a, var_1.b, 1i, u_input.c.x), var_1.b, vec4<f32>(var_1.a, -2538f, var_1.a, 621f), vec4<f32>(-247f, var_1.a, -1000f, -536f)).d.a, _wgslsmith_f_op_f32(-var_1.a))), func_1(func_1(func_1(Struct_1(var_1.a, true, 0i, 0u), true, vec4<f32>(-1117f, 353f, var_1.a, var_1.a), vec4<f32>(-428f, 226f, var_1.a, var_1.a)).d, var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1070f, 504f, -249f, var_1.a) - vec4<f32>(var_1.a, -810f, 237f, var_1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -291f, var_1.a, -1894f) * vec4<f32>(var_1.a, var_1.a, var_1.a, var_1.a))).d, func_4(~vec4<i32>(u_input.a, -13504i, -9496i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-21720i, -1i, 21445i), vec3<i32>(u_input.b, u_input.a, u_input.b)), Struct_2(var_1.b, vec2<i32>(var_1.c, 531i), vec4<f32>(1768f, var_1.a, -827f, var_1.a), Struct_1(var_1.a, false, var_1.c, var_2))).b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.a, var_1.a, var_1.a, 837f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-150f, -1843f, 341f, -1716f))).d));
    let var_3 = -1428f;
    global0 = array<Struct_2, 20>();
    global2 = u_input.c.x;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, var_1.a)), vec3<f32>(1995f, var_3, var_3))) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1285f, -877f, 283f))))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(func_1(Struct_1(-375f, false, global3[_wgslsmith_index_u32(1u, 3u)], var_2), var_1.b, vec4<f32>(-723f, var_3, var_1.a, -283f), vec4<f32>(var_1.a, -514f, var_1.a, -617f)).c.xxy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, 537f, -150f), vec3<f32>(-188f, var_1.a, -281f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(275f, 107f, var_1.a) + vec3<f32>(-1000f, var_1.a, var_3))), _wgslsmith_f_op_f32(f32(-1f) * -584f) != _wgslsmith_div_f32(-1226f, var_1.a))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_3, 753f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.a, var_3, -407f), vec3<f32>(136f, 442f, 312f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(747f, 230f, var_3))))))));
    let var_5 = vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(~vec3<i32>(var_1.c, global3[_wgslsmith_index_u32(1u, 3u)], -3494i), abs(vec3<i32>(var_1.c, 0i, -21824i)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.d, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(837f, -1000f, 280f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1205f, var_1.a, 1768f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3, var_1.a, 1236f), vec3<f32>(-992f, 430f, 2162f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1491f, -1449f, var_3) * vec3<f32>(-2001f, var_3, -407f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3, -445f, -287f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_4.x, 202f, var_4.x), vec3<f32>(var_3, var_3, var_1.a))))))));
}

