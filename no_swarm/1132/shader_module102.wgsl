struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, 26654i, vec2<f32>(-433f, 574f), vec2<i32>(-42405i, 0i), vec3<u32>(1493u, 523u, 58583u)), Struct_1(false, -1i, vec2<f32>(208f, 370f), vec2<i32>(-30960i, 2020i), vec3<u32>(4294967295u, 51877u, 37095u)), Struct_1(false, -40667i, vec2<f32>(789f, 704f), vec2<i32>(i32(-2147483648), 1i), vec3<u32>(14987u, 4294967295u, 1u)), Struct_1(false, -83849i, vec2<f32>(-2104f, -295f), vec2<i32>(10443i, 0i), vec3<u32>(51453u, 20043u, 110222u)), Struct_1(false, 0i, vec2<f32>(185f, -892f), vec2<i32>(-20096i, 8383i), vec3<u32>(1u, 4294967295u, 73613u)), Struct_1(false, -20654i, vec2<f32>(-114f, -416f), vec2<i32>(17510i, 17001i), vec3<u32>(1u, 65080u, 72586u)), Struct_1(true, -6491i, vec2<f32>(-744f, -310f), vec2<i32>(-26353i, 4424i), vec3<u32>(0u, 65077u, 1u)), Struct_1(true, 0i, vec2<f32>(1423f, 2484f), vec2<i32>(2147483647i, 1i), vec3<u32>(34786u, 4294967295u, 3905u)), Struct_1(true, 0i, vec2<f32>(-1000f, -198f), vec2<i32>(-1i, 0i), vec3<u32>(0u, 51358u, 84343u)), Struct_1(false, -20995i, vec2<f32>(-716f, -896f), vec2<i32>(-1i, -1i), vec3<u32>(4294967295u, 92235u, 4294967295u)), Struct_1(false, -20920i, vec2<f32>(-405f, -106f), vec2<i32>(i32(-2147483648), 2147483647i), vec3<u32>(29022u, 31918u, 16154u)), Struct_1(true, 2147483647i, vec2<f32>(1241f, 1066f), vec2<i32>(36431i, 0i), vec3<u32>(2690u, 0u, 1u)), Struct_1(false, i32(-2147483648), vec2<f32>(-917f, -125f), vec2<i32>(-1i, -29187i), vec3<u32>(4294967295u, 41586u, 4294967295u)), Struct_1(true, 33410i, vec2<f32>(1177f, 118f), vec2<i32>(-18552i, 0i), vec3<u32>(68642u, 64349u, 1u)), Struct_1(false, -52482i, vec2<f32>(-511f, 408f), vec2<i32>(2147483647i, 1i), vec3<u32>(118528u, 1u, 109916u)), Struct_1(false, 1i, vec2<f32>(199f, -2868f), vec2<i32>(0i, 0i), vec3<u32>(0u, 40642u, 23499u)), Struct_1(true, -30269i, vec2<f32>(-154f, 878f), vec2<i32>(-21080i, -61826i), vec3<u32>(4294967295u, 0u, 0u)), Struct_1(false, 0i, vec2<f32>(-476f, -1026f), vec2<i32>(54532i, -22908i), vec3<u32>(0u, 0u, 51281u)), Struct_1(false, 2147483647i, vec2<f32>(-128f, -1693f), vec2<i32>(14396i, 2147483647i), vec3<u32>(49251u, 0u, 115464u)), Struct_1(false, i32(-2147483648), vec2<f32>(-1015f, -1659f), vec2<i32>(-34832i, 48193i), vec3<u32>(19652u, 4294967295u, 1u)), Struct_1(true, -15375i, vec2<f32>(298f, -368f), vec2<i32>(35018i, 22814i), vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(false, 0i, vec2<f32>(-1660f, -293f), vec2<i32>(i32(-2147483648), 1i), vec3<u32>(87185u, 1u, 11610u)), Struct_1(true, 26779i, vec2<f32>(-515f, -239f), vec2<i32>(i32(-2147483648), -12983i), vec3<u32>(34005u, 44218u, 23970u)), Struct_1(true, i32(-2147483648), vec2<f32>(-157f, 131f), vec2<i32>(0i, 31234i), vec3<u32>(1u, 82496u, 31172u)), Struct_1(false, 2966i, vec2<f32>(-128f, 333f), vec2<i32>(-1i, -18692i), vec3<u32>(4294967295u, 4294967295u, 69078u)), Struct_1(true, -19522i, vec2<f32>(-845f, 2054f), vec2<i32>(15265i, 28776i), vec3<u32>(75768u, 1u, 0u)), Struct_1(true, 2147483647i, vec2<f32>(-1017f, -222f), vec2<i32>(1i, -15932i), vec3<u32>(35533u, 0u, 0u)), Struct_1(false, -10300i, vec2<f32>(-1287f, 1000f), vec2<i32>(-1i, 2147483647i), vec3<u32>(1u, 1354u, 18501u)), Struct_1(false, 2147483647i, vec2<f32>(267f, 2118f), vec2<i32>(38476i, 6904i), vec3<u32>(95157u, 1u, 1u)), Struct_1(true, i32(-2147483648), vec2<f32>(1772f, 656f), vec2<i32>(-1i, 1i), vec3<u32>(24920u, 4294967295u, 13585u)), Struct_1(false, 28287i, vec2<f32>(1243f, 145f), vec2<i32>(-1i, -1i), vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(true, 1i, vec2<f32>(-1000f, -471f), vec2<i32>(0i, 1i), vec3<u32>(4294967295u, 44038u, 0u)));

var<private> global1: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(true, 15735i, vec2<f32>(635f, 1354f), vec2<i32>(-1i, -1391i), vec3<u32>(70853u, 1267u, 0u)), Struct_1(false, 1i, vec2<f32>(-275f, 1794f), vec2<i32>(9928i, -44102i), vec3<u32>(41647u, 9070u, 28811u)), Struct_1(true, 0i, vec2<f32>(-635f, 409f), vec2<i32>(-1i, 2147483647i), vec3<u32>(1u, 29191u, 20453u)), Struct_1(true, 2147483647i, vec2<f32>(-571f, -1325f), vec2<i32>(-1i, 32358i), vec3<u32>(0u, 0u, 1u)), Struct_1(true, -1i, vec2<f32>(-869f, -934f), vec2<i32>(-38262i, 41915i), vec3<u32>(0u, 4294967295u, 1796u)), Struct_1(false, 2147483647i, vec2<f32>(439f, 121f), vec2<i32>(0i, -26501i), vec3<u32>(4294967295u, 0u, 0u)), Struct_1(false, 2147483647i, vec2<f32>(1000f, -924f), vec2<i32>(2147483647i, 0i), vec3<u32>(0u, 0u, 31873u)), Struct_1(false, -4300i, vec2<f32>(-1000f, -1465f), vec2<i32>(-1i, i32(-2147483648)), vec3<u32>(4294967295u, 1u, 70849u)), Struct_1(true, i32(-2147483648), vec2<f32>(1122f, -1340f), vec2<i32>(0i, 44916i), vec3<u32>(1u, 38036u, 1u)), Struct_1(false, i32(-2147483648), vec2<f32>(-490f, 1017f), vec2<i32>(56178i, 0i), vec3<u32>(69447u, 0u, 39810u)), Struct_1(true, -25728i, vec2<f32>(1051f, -1163f), vec2<i32>(-29603i, i32(-2147483648)), vec3<u32>(1u, 180u, 4294967295u)), Struct_1(false, -1816i, vec2<f32>(-2047f, -1448f), vec2<i32>(0i, 0i), vec3<u32>(4532u, 55104u, 32414u)));

var<private> global2: array<bool, 32> = array<bool, 32>(false, true, false, true, true, false, true, true, false, false, false, false, false, true, true, true, false, false, true, false, true, false, true, true, false, false, true, true, true, true, true, false);

var<private> global3: array<bool, 20>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0.c.x;
    var var_1 = global1[_wgslsmith_index_u32(73228u, 12u)];
    global1 = array<Struct_1, 12>();
    let var_2 = abs(firstTrailingBit(vec4<u32>(1u, _wgslsmith_dot_vec3_u32(var_1.e, vec3<u32>(var_1.e.x, 39022u, var_1.e.x)) ^ ~var_1.e.x, arg_0.e.x, arg_0.e.x)));
    let var_3 = 0i;
    return -1817f;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.c.x, arg_3.c.x), _wgslsmith_div_f32(107f, arg_0.c.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.c.x)))), _wgslsmith_f_op_f32(func_3(Struct_1(arg_0.a, countOneBits(arg_0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1515f, arg_0.c.x)), -vec2<i32>(arg_2.x, 0i), ~arg_3.e))))));
    let var_1 = vec3<bool>(arg_0.d.x <= 1i, _wgslsmith_mod_i32(0i, _wgslsmith_sub_i32(arg_3.b, -u_input.a)) <= 12681i, max(-arg_3.d.x, arg_2.x) == (arg_0.d.x & 1i));
    global3 = array<bool, 20>();
    let var_2 = arg_3.e.x & reverseBits(1u >> (countOneBits(arg_0.e.x) % 32u));
    var var_3 = vec2<bool>(true, !(true | !global3[_wgslsmith_index_u32(arg_0.e.x, 20u)]) & arg_1);
    return Struct_1(any(vec4<bool>(!any(var_1), all(select(vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], arg_3.a, arg_0.a), vec3<bool>(arg_0.a, false, true), vec3<bool>(true, false, var_3.x))), true, all(select(vec4<bool>(true, arg_0.a, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false))))), 22745i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c)), max(vec2<i32>(_wgslsmith_div_i32(-1i, 2147483647i), arg_0.d.x), vec2<i32>(28670i, 1655i) & (arg_3.d >> (arg_0.e.yz % vec2<u32>(32u)))) ^ abs(-vec2<i32>(1i, arg_3.b) | abs(arg_0.d)), select(arg_3.e, select(~vec3<u32>(arg_3.e.x, 0u, var_2), ~firstLeadingBit(arg_0.e), select(arg_0.a, false, any(vec2<bool>(true, true)))), vec3<bool>(all(select(vec4<bool>(true, false, true, var_3.x), vec4<bool>(false, var_1.x, true, true), vec4<bool>(global2[_wgslsmith_index_u32(arg_0.e.x, 32u)], false, global3[_wgslsmith_index_u32(arg_0.e.x, 20u)], false))), false, select(var_1.x, true, !arg_1))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = func_2(func_2(Struct_1(all(!vec3<bool>(global3[_wgslsmith_index_u32(3751u, 20u)], arg_1.a, false)), firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d.x, u_input.a), arg_0.d)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.c, vec2<f32>(-230f, 674f), global2[_wgslsmith_index_u32(arg_0.e.x, 32u)])), vec2<f32>(1f, 1f)), _wgslsmith_div_vec2_i32(arg_1.d, select(vec2<i32>(13440i, arg_1.d.x), arg_0.d, true)), func_2(func_2(global0[_wgslsmith_index_u32(arg_0.e.x, 32u)], arg_1.a, vec2<i32>(arg_0.d.x, u_input.a), Struct_1(true, -28500i, vec2<f32>(-813f, 1909f), arg_1.d, arg_1.e)), all(vec2<bool>(false, false)), ~vec2<i32>(0i, arg_1.b), Struct_1(global2[_wgslsmith_index_u32(arg_0.e.x, 32u)], arg_0.b, vec2<f32>(arg_1.c.x, arg_1.c.x), arg_1.d, arg_1.e)).e), arg_1.a != true, -(-arg_1.d >> (firstLeadingBit(vec2<u32>(71438u, arg_0.e.x)) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(~(~arg_0.e.x), 32u)]), arg_0.a != (all(!vec3<bool>(arg_0.a, arg_0.a, true)) | all(vec3<bool>(global3[_wgslsmith_index_u32(arg_1.e.x, 20u)], global2[_wgslsmith_index_u32(67057u, 32u)], false))), arg_1.d, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(min(_wgslsmith_dot_vec4_u32(vec4<u32>(18193u, arg_0.e.x, arg_1.e.x, arg_0.e.x), vec4<u32>(arg_0.e.x, arg_1.e.x, 3060u, 0u)), _wgslsmith_clamp_u32(4294967295u, arg_1.e.x, 1u))), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~arg_1.e, countOneBits(arg_0.e)), ~vec3<u32>(0u, 0u, 6896u))), 12u)]);
    let var_1 = global3[_wgslsmith_index_u32(min(~var_0.e.x | 1u, ~_wgslsmith_dot_vec3_u32(max(arg_1.e, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.e.x, 25382u, 19983u), arg_1.e)), select(vec3<u32>(542u, 80716u, 1u), ~vec3<u32>(5741u, 4294967295u, 1u), !vec3<bool>(global2[_wgslsmith_index_u32(arg_0.e.x, 32u)], true, global2[_wgslsmith_index_u32(4294967295u, 32u)])))), 20u)];
    let var_2 = _wgslsmith_div_vec2_u32(vec2<u32>((arg_1.e.x & arg_0.e.x) << (select(~arg_1.e.x, ~arg_1.e.x, true) % 32u), 0u), arg_0.e.yy);
    let var_3 = _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x))) * -516f));
    global2 = array<bool, 32>();
    return func_2(func_2(Struct_1(true, -arg_1.d.x, vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.c.x)), -1000f), vec2<i32>(_wgslsmith_add_i32(-14480i, var_0.b), -1i), ~(~vec3<u32>(38226u, var_2.x, arg_1.e.x))), !all(vec4<bool>(global3[_wgslsmith_index_u32(arg_0.e.x, 20u)], true, false, var_0.a)), arg_0.d & vec2<i32>(countOneBits(2147483647i), var_0.b), func_2(global1[_wgslsmith_index_u32(0u, 12u)], all(vec2<bool>(arg_0.a, true)), vec2<i32>(var_0.b, _wgslsmith_sub_i32(-32801i, arg_1.b)), global0[_wgslsmith_index_u32(var_2.x, 32u)])), !any(!vec3<bool>(true, global2[_wgslsmith_index_u32(arg_0.e.x, 32u)], false)), arg_0.d, Struct_1(any(select(select(vec3<bool>(false, false, true), vec3<bool>(false, arg_1.a, arg_0.a), vec3<bool>(var_0.a, true, false)), vec3<bool>(true, true, global2[_wgslsmith_index_u32(arg_1.e.x, 32u)]), any(vec2<bool>(global3[_wgslsmith_index_u32(0u, 20u)], global3[_wgslsmith_index_u32(1u, 20u)])))), arg_0.d.x, vec2<f32>(-598f, arg_0.c.x), _wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(arg_1.d.x, 1i) | var_0.d) >> (vec2<u32>(4294967295u, arg_1.e.x) % vec2<u32>(32u)), abs(_wgslsmith_add_vec3_u32(var_0.e, countOneBits(arg_1.e)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    let var_1 = max(-vec4<i32>(abs(-arg_1.b), func_4(func_2(global1[_wgslsmith_index_u32(var_0.e.x, 12u)], global3[_wgslsmith_index_u32(1u, 20u)], vec2<i32>(arg_0.b, var_0.b), global0[_wgslsmith_index_u32(4294967295u, 32u)]), func_2(global0[_wgslsmith_index_u32(arg_1.e.x, 32u)], global2[_wgslsmith_index_u32(var_0.e.x, 32u)], vec2<i32>(1i, 2147483647i), Struct_1(global3[_wgslsmith_index_u32(arg_1.e.x, 20u)], var_0.d.x, var_0.c, arg_1.d, var_0.e))).b, 2147483647i, _wgslsmith_mult_i32(arg_0.b, 342i)), -firstTrailingBit(~vec4<i32>(0i, arg_0.d.x, arg_1.d.x, arg_0.b)) & ~select(-vec4<i32>(34192i, u_input.a, var_0.b, 14900i), ~vec4<i32>(u_input.a, 6605i, u_input.a, 1i), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.e.x, 1u, arg_0.e.x, 4294967295u), vec4<u32>(arg_1.e.x, 4294967295u, 1u, 29624u)), 20u)]));
    let var_2 = arg_1.c.x;
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(499f - 1013f)))));
    var var_4 = func_4(arg_1, Struct_1(true, 2147483647i, vec2<f32>(var_2, arg_1.c.x), func_2(func_4(Struct_1(false, u_input.a, arg_1.c, arg_1.d, var_0.e), arg_0), select(global2[_wgslsmith_index_u32(var_0.e.x, 32u)], !arg_0.a, false), var_0.d, Struct_1(any(vec2<bool>(arg_1.a, false)), var_1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -151f)), ~vec2<i32>(10602i, var_1.x), ~arg_1.e)).d, max(var_0.e, max(~arg_0.e, vec3<u32>(arg_0.e.x, 17409u, var_0.e.x) << (var_0.e % vec3<u32>(32u))))));
    return 527f;
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global3 = array<bool, 20>();
    let var_0 = Struct_1(false, u_input.a, vec2<f32>(949f, _wgslsmith_f_op_f32(func_5(func_4(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a, vec2<f32>(-2052f, -1150f), vec2<i32>(-1i, 11909i), vec3<u32>(1u, 1u, 0u)), func_2(Struct_1(global3[_wgslsmith_index_u32(17615u, 20u)], u_input.a, vec2<f32>(496f, 182f), vec2<i32>(u_input.a, -2783i), vec3<u32>(0u, 34507u, 4294967295u)), global3[_wgslsmith_index_u32(1u, 20u)], vec2<i32>(-1i, 1i), global0[_wgslsmith_index_u32(42953u, 32u)])), func_2(global0[_wgslsmith_index_u32(1u, 32u)], true, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, u_input.a), vec2<i32>(arg_0.x, arg_0.x)), Struct_1(true, arg_0.x, vec2<f32>(-1113f, 382f), arg_0.zy, vec3<u32>(51095u, 4294967295u, 4294967295u)))))), min(arg_0.yz, select(vec2<i32>(u_input.a, u_input.a), func_4(global0[_wgslsmith_index_u32(func_2(Struct_1(global2[_wgslsmith_index_u32(40775u, 32u)], arg_0.x, vec2<f32>(939f, 729f), arg_0.xy, vec3<u32>(4294967295u, 1u, 7156u)), global3[_wgslsmith_index_u32(0u, 20u)], vec2<i32>(25605i, 2147483647i), Struct_1(false, arg_0.x, vec2<f32>(821f, -1374f), vec2<i32>(17139i, 19285i), vec3<u32>(25055u, 0u, 20867u))).e.x, 32u)], Struct_1(global2[_wgslsmith_index_u32(34156u, 32u)], -1i, vec2<f32>(-1008f, -736f), arg_0.xz, vec3<u32>(0u, 75100u, 0u))).d, vec2<bool>(func_4(Struct_1(false, arg_0.x, vec2<f32>(-858f, 517f), arg_0.xy, vec3<u32>(1077u, 0u, 48186u)), Struct_1(global3[_wgslsmith_index_u32(4294967295u, 20u)], arg_0.x, vec2<f32>(1030f, -1392f), arg_0.xx, vec3<u32>(25338u, 40521u, 24147u))).a, global3[_wgslsmith_index_u32(~1u, 20u)]))), vec3<u32>(46368u, 1u, ~1u));
    global2 = array<bool, 32>();
    var var_1 = ~max(select(countOneBits(29603i), -arg_0.x, true), (-2147483647i & u_input.a) << (1u % 32u)) << (func_2(Struct_1(var_0.b >= var_0.b, ~(-1i >> (var_0.e.x % 32u)), vec2<f32>(_wgslsmith_f_op_f32(-1117f * -238f), var_0.c.x), -var_0.d, select(vec3<u32>(30939u, 3628u, 23586u), var_0.e, global2[_wgslsmith_index_u32(var_0.e.x, 32u)]) & (vec3<u32>(79989u, var_0.e.x, 12286u) & var_0.e)), global3[_wgslsmith_index_u32(var_0.e.x, 20u)], vec2<i32>(1i, var_0.b & -67711i), Struct_1(all(!vec4<bool>(true, global2[_wgslsmith_index_u32(19713u, 32u)], global2[_wgslsmith_index_u32(var_0.e.x, 32u)], global3[_wgslsmith_index_u32(var_0.e.x, 20u)])), var_0.b, vec2<f32>(var_0.c.x, var_0.c.x), _wgslsmith_sub_vec2_i32(var_0.d, vec2<i32>(u_input.a, 2147483647i)), var_0.e)).e.x % 32u);
    global1 = array<Struct_1, 12>();
    return global0[_wgslsmith_index_u32(0u, 32u)];
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = 41627i;
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1637f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x + arg_2.c.x) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(arg_2.c.x - _wgslsmith_f_op_f32(-arg_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - -1000f) + arg_1), _wgslsmith_f_op_f32(f32(-1f) * -535f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-449f, -1000f, -623f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c.x, -281f, arg_2.c.x) * vec3<f32>(1345f, arg_0.c.x, -1150f))), vec3<f32>(-1958f, arg_1, 207f)))), func_1(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.d.x, 20619i, 0i), ~vec3<i32>(u_input.a, -1i, -48481i))).d.x <= _wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, -37119i), func_2(func_1(vec3<i32>(arg_2.d.x, 2147483647i, 13166i)), arg_2.a, arg_0.d, arg_0).d)));
    let var_2 = ~(~arg_0.e.yy | _wgslsmith_sub_vec2_u32(select(vec2<u32>(1u, 1u), min(arg_0.e.yy, vec2<u32>(0u, arg_2.e.x)), arg_2.a), vec2<u32>(44886u, countOneBits(arg_2.e.x))));
    let var_3 = select(max(min(vec2<u32>(4294967295u, 18049u), vec2<u32>(arg_2.e.x, 33503u)) | _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(10412u, arg_0.e.x), vec2<u32>(0u, arg_0.e.x)), ~vec2<u32>(1u, arg_2.e.x), arg_2.e.xx), func_1(_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.d.x, -1i, var_0), vec3<i32>(-2147483647i, 0i, u_input.a)), vec3<i32>(var_0, -31724i, var_0) & vec3<i32>(1022i, u_input.a, -2147483647i))).e.yy), ~var_2, select(vec2<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(21723u, 32u)], global2[_wgslsmith_index_u32(arg_2.e.x, 32u)])), true), vec2<bool>(true, true), true));
    global0 = array<Struct_1, 32>();
    return vec4<f32>(2068f, _wgslsmith_f_op_f32(-655f - arg_0.c.x), 262f, 175f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_6(func_1(_wgslsmith_mod_vec3_i32(-(vec3<i32>(-26851i, u_input.a, u_input.a) & vec3<i32>(0i, u_input.a, -47114i)), ~_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.a, 53544i), vec3<i32>(-1i, u_input.a, u_input.a)))), -603f, Struct_1(!all(!vec3<bool>(false, true, global3[_wgslsmith_index_u32(44143u, 20u)])), -_wgslsmith_mod_i32(u_input.a << (0u % 32u), 0i | u_input.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f)), 1000f), vec2<i32>(u_input.a, ~(u_input.a | -15877i)), max(_wgslsmith_div_vec3_u32(vec3<u32>(63333u, 34347u, 1u), vec3<u32>(12999u, 4294967295u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(19190u, 22640u, 1u), vec3<u32>(36392u, 37216u, 9524u)), ~vec3<u32>(34075u, 53238u, 0u))))));
    let var_1 = -1i;
    var var_2 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(min(40609u, 4294967295u), 59186u) << (_wgslsmith_div_u32(~66144u, func_1(vec3<i32>(0i, var_1, 1i)).e.x) % 32u), 1u, ~(~3634u) << (min(1u, ~0u) % 32u)), 12u)];
    var_2 = func_2(global0[_wgslsmith_index_u32(var_2.e.x, 32u)], true, -countOneBits(vec2<i32>(-1i) * -vec2<i32>(var_2.d.x, -10458i)), func_4(Struct_1(!global3[_wgslsmith_index_u32(abs(16755u), 20u)], func_2(global0[_wgslsmith_index_u32(var_2.e.x, 32u)], !global2[_wgslsmith_index_u32(0u, 32u)], max(var_2.d, var_2.d), Struct_1(false, -35182i, vec2<f32>(-430f, var_0.x), vec2<i32>(33593i, var_1), vec3<u32>(7601u, var_2.e.x, 31830u))).b, vec2<f32>(_wgslsmith_f_op_f32(2421f + -830f), var_0.x), max(var_2.d, var_2.d), var_2.e), Struct_1(true, ~reverseBits(u_input.a), vec2<f32>(1824f, _wgslsmith_f_op_f32(-var_2.c.x)), abs(vec2<i32>(22593i, 58668i)), vec3<u32>(var_2.e.x >> (var_2.e.x % 32u), ~1u, var_2.e.x))));
    var var_3 = global0[_wgslsmith_index_u32(var_2.e.x, 32u)];
    global2 = array<bool, 32>();
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_3.c.x, var_3.c.x), var_3.c)));
    var var_5 = vec2<bool>(!var_2.a, var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(-814f, 1000f, var_2.e.x, _wgslsmith_f_op_vec4_f32(min(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0)) + var_0))), _wgslsmith_sub_vec2_u32(var_3.e.zy, max(func_2(global0[_wgslsmith_index_u32(1u, 32u)], any(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], var_5.x)), ~vec2<i32>(u_input.a, -1i), Struct_1(false, 2039i, vec2<f32>(-204f, var_2.c.x), var_3.d, vec3<u32>(66309u, var_3.e.x, var_3.e.x))).e.xy, var_2.e.xy ^ ~var_2.e.xy)));
}

