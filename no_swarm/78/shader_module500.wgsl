struct Struct_1 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_2,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(i32(-2147483648), 1027f, Struct_2(vec2<i32>(2147483647i, -21526i), true, vec2<u32>(37314u, 0u), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<f32>(-303f, -1140f, -666f, 804f), vec3<f32>(1142f, 741f, -564f))), 35674u, vec4<i32>(72573i, 0i, i32(-2147483648), -14154i)), Struct_3(1i, 2158f, Struct_2(vec2<i32>(-1i, -10986i), false, vec2<u32>(0u, 92591u), Struct_1(vec4<u32>(0u, 49957u, 4294967295u, 35885u), vec4<f32>(869f, -516f, 1603f, -2549f), vec3<f32>(-443f, -321f, -1340f))), 12296u, vec4<i32>(-80385i, -1i, -12651i, -38752i)), Struct_3(-1i, -891f, Struct_2(vec2<i32>(i32(-2147483648), -5778i), true, vec2<u32>(0u, 56552u), Struct_1(vec4<u32>(9859u, 99345u, 0u, 0u), vec4<f32>(-1000f, 1858f, -1085f, -1623f), vec3<f32>(1251f, 895f, 297f))), 59683u, vec4<i32>(-40595i, -22136i, 8562i, 1i)), Struct_3(44120i, -1363f, Struct_2(vec2<i32>(i32(-2147483648), -5354i), true, vec2<u32>(0u, 1u), Struct_1(vec4<u32>(1u, 40662u, 60054u, 0u), vec4<f32>(459f, -733f, -262f, -1290f), vec3<f32>(-810f, 796f, -868f))), 4294967295u, vec4<i32>(-42352i, -43773i, -6182i, -21191i)), Struct_3(1i, 137f, Struct_2(vec2<i32>(9795i, 0i), false, vec2<u32>(1u, 4294967295u), Struct_1(vec4<u32>(40969u, 1u, 28430u, 21168u), vec4<f32>(254f, 741f, -111f, 305f), vec3<f32>(360f, 1822f, -1338f))), 1u, vec4<i32>(-10577i, -1996i, 36367i, -18882i)), Struct_3(-25817i, -1280f, Struct_2(vec2<i32>(1i, 2147483647i), false, vec2<u32>(20727u, 0u), Struct_1(vec4<u32>(43095u, 1u, 0u, 1u), vec4<f32>(1441f, -2231f, -680f, 1000f), vec3<f32>(-377f, 157f, 427f))), 5938u, vec4<i32>(6730i, -292i, -13497i, -41049i)), Struct_3(32235i, 823f, Struct_2(vec2<i32>(i32(-2147483648), 5618i), false, vec2<u32>(37137u, 50025u), Struct_1(vec4<u32>(4294967295u, 0u, 0u, 72545u), vec4<f32>(1067f, -839f, 988f, -426f), vec3<f32>(701f, 105f, -1893f))), 4294967295u, vec4<i32>(0i, 38733i, 5796i, 0i)), Struct_3(-1i, -350f, Struct_2(vec2<i32>(2147483647i, 1i), true, vec2<u32>(32724u, 283u), Struct_1(vec4<u32>(18395u, 0u, 27510u, 15275u), vec4<f32>(-1000f, -219f, 802f, 1000f), vec3<f32>(160f, -748f, -2966f))), 0u, vec4<i32>(2147483647i, -2507i, -7345i, 1i)), Struct_3(1i, 716f, Struct_2(vec2<i32>(-21506i, i32(-2147483648)), true, vec2<u32>(4294967295u, 0u), Struct_1(vec4<u32>(42621u, 19076u, 35626u, 53519u), vec4<f32>(-153f, 185f, 764f, -584f), vec3<f32>(-1169f, 424f, -1426f))), 1u, vec4<i32>(i32(-2147483648), 0i, -7235i, -68187i)), Struct_3(0i, -1216f, Struct_2(vec2<i32>(-1i, 0i), true, vec2<u32>(4294967295u, 15259u), Struct_1(vec4<u32>(0u, 19467u, 1u, 8150u), vec4<f32>(-567f, -353f, 2724f, 924f), vec3<f32>(-571f, -421f, -702f))), 111453u, vec4<i32>(0i, -17723i, 1i, 36535i)), Struct_3(1i, 827f, Struct_2(vec2<i32>(60300i, -1i), false, vec2<u32>(4294967295u, 0u), Struct_1(vec4<u32>(38276u, 4294967295u, 128082u, 0u), vec4<f32>(-939f, 959f, 434f, 1537f), vec3<f32>(433f, 2279f, 927f))), 1u, vec4<i32>(-1i, -44624i, 1i, 49696i)), Struct_3(-1i, 256f, Struct_2(vec2<i32>(2147483647i, 2147483647i), true, vec2<u32>(4294967295u, 48452u), Struct_1(vec4<u32>(131463u, 20599u, 52325u, 17284u), vec4<f32>(-1000f, -720f, 1138f, 1000f), vec3<f32>(412f, -755f, 1472f))), 4294967295u, vec4<i32>(-34609i, i32(-2147483648), 1i, 9528i)), Struct_3(24732i, 632f, Struct_2(vec2<i32>(80613i, 12194i), true, vec2<u32>(1484u, 1u), Struct_1(vec4<u32>(1u, 4294967295u, 39739u, 4294967295u), vec4<f32>(-256f, -1771f, 113f, 193f), vec3<f32>(1000f, -712f, -1206f))), 0u, vec4<i32>(i32(-2147483648), 2147483647i, -1323i, 1i)), Struct_3(1i, -1000f, Struct_2(vec2<i32>(16748i, i32(-2147483648)), true, vec2<u32>(4294967295u, 10126u), Struct_1(vec4<u32>(1u, 55482u, 4294967295u, 18415u), vec4<f32>(-1015f, 604f, -401f, -325f), vec3<f32>(-1220f, 1000f, 2577f))), 0u, vec4<i32>(1i, 7951i, 2147483647i, 8071i)), Struct_3(0i, -857f, Struct_2(vec2<i32>(2147483647i, -41011i), true, vec2<u32>(60686u, 1u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<f32>(891f, 1126f, 349f, -317f), vec3<f32>(269f, 1290f, 236f))), 4294967295u, vec4<i32>(i32(-2147483648), -32037i, -1i, 2147483647i)), Struct_3(12799i, -1487f, Struct_2(vec2<i32>(0i, -24511i), true, vec2<u32>(1u, 0u), Struct_1(vec4<u32>(23720u, 0u, 9943u, 4294967295u), vec4<f32>(731f, 1136f, 483f, -143f), vec3<f32>(-236f, -584f, 384f))), 71112u, vec4<i32>(-49169i, -5496i, 38326i, 4754i)), Struct_3(1i, 1119f, Struct_2(vec2<i32>(2147483647i, 2147483647i), true, vec2<u32>(76635u, 18229u), Struct_1(vec4<u32>(9613u, 4294967295u, 0u, 4294967295u), vec4<f32>(1035f, 1429f, 522f, -805f), vec3<f32>(-1069f, -447f, 1000f))), 1u, vec4<i32>(0i, -13247i, 1i, 1i)), Struct_3(2147483647i, 897f, Struct_2(vec2<i32>(0i, 1i), true, vec2<u32>(1u, 1u), Struct_1(vec4<u32>(0u, 28455u, 1u, 28166u), vec4<f32>(408f, -399f, 423f, -2316f), vec3<f32>(304f, -1000f, 508f))), 0u, vec4<i32>(2147483647i, 1i, 42914i, -9444i)), Struct_3(-101034i, -200f, Struct_2(vec2<i32>(-82842i, -20162i), false, vec2<u32>(4294967295u, 0u), Struct_1(vec4<u32>(0u, 29086u, 22452u, 20841u), vec4<f32>(116f, -425f, 368f, -1647f), vec3<f32>(1066f, 382f, 223f))), 15606u, vec4<i32>(-29323i, 2147483647i, 2147483647i, 45305i)), Struct_3(18179i, 486f, Struct_2(vec2<i32>(-15831i, 48017i), false, vec2<u32>(0u, 1u), Struct_1(vec4<u32>(4294967295u, 8639u, 16589u, 8034u), vec4<f32>(-341f, -820f, 970f, -649f), vec3<f32>(1529f, -211f, -809f))), 1352u, vec4<i32>(-34737i, -29430i, -2385i, 9414i)), Struct_3(49312i, 276f, Struct_2(vec2<i32>(-1i, i32(-2147483648)), true, vec2<u32>(65286u, 29651u), Struct_1(vec4<u32>(15796u, 30809u, 101989u, 44896u), vec4<f32>(222f, 786f, 531f, 576f), vec3<f32>(454f, 1288f, 581f))), 0u, vec4<i32>(-49307i, -1i, 2147483647i, -20241i)), Struct_3(2147483647i, 1465f, Struct_2(vec2<i32>(26908i, -30947i), true, vec2<u32>(9006u, 0u), Struct_1(vec4<u32>(11414u, 13571u, 1u, 4294967295u), vec4<f32>(-517f, -864f, -584f, 392f), vec3<f32>(1499f, 1198f, -186f))), 16135u, vec4<i32>(-20566i, -1i, -24686i, -1i)), Struct_3(8225i, 264f, Struct_2(vec2<i32>(2147483647i, 8614i), true, vec2<u32>(17959u, 33965u), Struct_1(vec4<u32>(50724u, 94608u, 64820u, 4294967295u), vec4<f32>(-475f, -1431f, -1240f, -1364f), vec3<f32>(1273f, 644f, -393f))), 33321u, vec4<i32>(1i, -1i, 1i, 0i)), Struct_3(1i, -1836f, Struct_2(vec2<i32>(58518i, 2147483647i), true, vec2<u32>(37634u, 0u), Struct_1(vec4<u32>(4294967295u, 4892u, 14339u, 72377u), vec4<f32>(634f, -1949f, -1236f, -112f), vec3<f32>(781f, -768f, -1000f))), 19033u, vec4<i32>(0i, -2081i, 1i, 16790i)), Struct_3(-1i, -189f, Struct_2(vec2<i32>(0i, -1i), false, vec2<u32>(43957u, 1u), Struct_1(vec4<u32>(4294967295u, 4294967295u, 679u, 35309u), vec4<f32>(-834f, 1569f, -1000f, 1000f), vec3<f32>(1898f, -255f, 365f))), 4294967295u, vec4<i32>(57607i, 0i, 0i, 2147483647i)), Struct_3(16660i, 148f, Struct_2(vec2<i32>(-30228i, 1i), true, vec2<u32>(1u, 1u), Struct_1(vec4<u32>(70812u, 0u, 4294967295u, 1u), vec4<f32>(1738f, -502f, -1114f, -805f), vec3<f32>(1513f, -465f, -1123f))), 48249u, vec4<i32>(0i, 0i, i32(-2147483648), 0i)));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> f32 {
    global0 = array<Struct_3, 26>();
    let var_0 = 2389f;
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(u_input.b.x & countOneBits(36908u), _wgslsmith_div_u32(firstTrailingBit(~5177u), ~(28123u | u_input.b.x)), 31360u), 26u)];
    global0 = array<Struct_3, 26>();
    var var_2 = Struct_1(u_input.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.c.d.b * _wgslsmith_f_op_vec4_f32(vec4<f32>(479f, var_1.b, var_0, -1478f) * vec4<f32>(var_1.c.d.c.x, 182f, 723f, var_1.c.d.c.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.c.d.c.x * _wgslsmith_f_op_f32(abs(var_1.c.d.b.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(select(var_0, var_0, var_1.c.b))), var_0));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.c.d.b.x, _wgslsmith_f_op_f32(abs(var_2.b.x))), -302f)), 549f);
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(263f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -699f) * _wgslsmith_f_op_f32(max(1058f, -145f))))) * 1137f));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1118f * 270f) + _wgslsmith_f_op_f32(523f - -3064f))))));
    var var_1 = vec4<f32>(_wgslsmith_div_f32(541f, 484f), _wgslsmith_f_op_f32(427f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-995f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1285f)))));
    let var_2 = u_input.d.x;
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(ceil(var_1.x)), 432f, _wgslsmith_f_op_f32(min(var_1.x, var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(819f + _wgslsmith_f_op_f32(-var_1.x)) + _wgslsmith_f_op_f32(-var_1.x)), 556f));
    return Struct_3(1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + 110f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-2473f, var_1.x))) + -310f)), Struct_2(_wgslsmith_add_vec2_i32(-vec2<i32>(10632i, -46259i) | _wgslsmith_mod_vec2_i32(u_input.c, u_input.c), arg_0), false, u_input.d, Struct_1(vec4<u32>(u_input.d.x, _wgslsmith_sub_u32(var_2, u_input.d.x), 52278u, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -887f, 1000f, -407f) + vec4<f32>(-393f, var_1.x, -784f, -1240f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -2204f, 1151f, var_1.x))), vec3<f32>(_wgslsmith_f_op_f32(step(1397f, var_1.x)), _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(select(-1303f, -921f, true))))), 4294967295u, _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x << (u_input.b.x % 32u), ~arg_0.x, 19286i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, -1i, u_input.c.x), vec3<i32>(u_input.a, arg_0.x, -2147483647i))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-18184i, u_input.a, -2147483647i, -11963i), vec4<i32>(arg_0.x, 1i, 0i, 56900i)), vec4<i32>(u_input.a, -27186i, 1i, arg_0.x), ~vec4<i32>(arg_0.x, u_input.c.x, 24490i, u_input.a))) >> (~u_input.b % vec4<u32>(32u)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    let var_0 = func_2(vec2<i32>(abs(0i), _wgslsmith_clamp_i32(2147483647i, 4520i, u_input.a)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1203f, arg_1.x))))) * var_0.c.d.c.zy) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.d.c.x))) * 1336f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)))));
    let var_2 = func_2(~(-var_0.c.a << ((vec2<u32>(26179u, var_0.d) >> (u_input.b.yy % vec2<u32>(32u))) % vec2<u32>(32u))) | firstTrailingBit(_wgslsmith_clamp_vec2_i32(var_0.c.a & u_input.c, _wgslsmith_div_vec2_i32(u_input.c, vec2<i32>(-12853i, var_0.c.a.x)), u_input.c))).c;
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.a, _wgslsmith_div_i32(_wgslsmith_div_i32(_wgslsmith_mod_i32(var_2.a.x, 12960i), _wgslsmith_sub_i32(var_2.a.x, 1i)), _wgslsmith_mult_i32(i32(-1i) * -39378i, var_0.c.a.x))), u_input.c);
    let var_4 = Struct_2(min(-min(-vec2<i32>(var_2.a.x, var_2.a.x), ~u_input.c), vec2<i32>(_wgslsmith_add_i32(38787i, u_input.a), ~(u_input.c.x >> (28784u % 32u)))), var_3.x > 1i, var_0.c.c, var_0.c.d);
    return _wgslsmith_f_op_f32(-var_4.d.b.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2) -> vec2<u32> {
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    return _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, reverseBits(select(0u, abs(u_input.b.x), true))), u_input.b.xw);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32) -> StorageBuffer {
    return StorageBuffer(~countOneBits(u_input.b.x << (4294967295u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(Struct_2(~u_input.c, min(-54362i, _wgslsmith_div_i32(-33193i, 37774i)) >= u_input.a, func_4(vec2<f32>(_wgslsmith_f_op_f32(func_1(false, vec2<f32>(1000f, -317f))), -681f), func_2(u_input.c).c), func_2(u_input.c).c.d), vec3<bool>(all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true)))), all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec2<bool>(true, true))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2213f - -361f)), -1018f, true)));
}

