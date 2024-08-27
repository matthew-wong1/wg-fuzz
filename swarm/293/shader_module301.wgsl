struct Struct_1 {
    a: i32,
    b: bool,
    c: i32,
    d: vec3<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec2<i32>,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(-19914i, -1i, vec2<u32>(0u, 0u), Struct_1(1i, false, 2147483647i, vec3<f32>(581f, 1728f, -920f), vec3<f32>(401f, 263f, -737f)), Struct_2(vec2<u32>(0u, 60591u), 75330u, 124207u, vec3<f32>(366f, -540f, -493f), false)), Struct_3(9223i, 52162i, vec2<u32>(4294967295u, 21855u), Struct_1(2147483647i, false, 60315i, vec3<f32>(-588f, -653f, -1915f), vec3<f32>(-229f, 900f, 242f)), Struct_2(vec2<u32>(61261u, 49959u), 2080u, 1u, vec3<f32>(287f, 1150f, -186f), false)), Struct_3(1i, 1i, vec2<u32>(0u, 14729u), Struct_1(44649i, false, -5933i, vec3<f32>(191f, -565f, -717f), vec3<f32>(-1398f, -576f, -555f)), Struct_2(vec2<u32>(3850u, 4294967295u), 4294967295u, 0u, vec3<f32>(894f, -1092f, 1348f), true)), Struct_3(0i, 30481i, vec2<u32>(38414u, 4294967295u), Struct_1(-1i, true, 60131i, vec3<f32>(418f, 1114f, 1688f), vec3<f32>(-449f, 1057f, -659f)), Struct_2(vec2<u32>(4294967295u, 4294967295u), 27353u, 0u, vec3<f32>(744f, -460f, -688f), false)), Struct_3(-25445i, -1i, vec2<u32>(14613u, 1u), Struct_1(-5703i, false, 34746i, vec3<f32>(1093f, 1000f, 1197f), vec3<f32>(168f, -128f, -618f)), Struct_2(vec2<u32>(50010u, 19998u), 4294967295u, 5756u, vec3<f32>(-475f, 1028f, -847f), true)), Struct_3(-1i, -854i, vec2<u32>(32220u, 1u), Struct_1(1i, true, -20811i, vec3<f32>(346f, 1000f, 545f), vec3<f32>(-250f, 1000f, -569f)), Struct_2(vec2<u32>(15908u, 4294967295u), 85556u, 4294967295u, vec3<f32>(-195f, 707f, 598f), false)), Struct_3(-5264i, -28408i, vec2<u32>(22102u, 46816u), Struct_1(-12498i, false, -1i, vec3<f32>(-846f, 1339f, 105f), vec3<f32>(585f, 112f, -535f)), Struct_2(vec2<u32>(1u, 0u), 20636u, 97837u, vec3<f32>(226f, -916f, -1228f), false)), Struct_3(2147483647i, 2147483647i, vec2<u32>(17190u, 5750u), Struct_1(518i, false, 27351i, vec3<f32>(1987f, -730f, -707f), vec3<f32>(-118f, -652f, 1499f)), Struct_2(vec2<u32>(93696u, 4294967295u), 651u, 4294967295u, vec3<f32>(-202f, -389f, -738f), false)), Struct_3(i32(-2147483648), -6486i, vec2<u32>(8657u, 12515u), Struct_1(i32(-2147483648), true, 1i, vec3<f32>(138f, -750f, -803f), vec3<f32>(212f, -1000f, -165f)), Struct_2(vec2<u32>(144948u, 1u), 4294967295u, 1u, vec3<f32>(216f, 825f, 164f), true)), Struct_3(-49622i, 1i, vec2<u32>(39933u, 67607u), Struct_1(2147483647i, false, -3418i, vec3<f32>(-1171f, -1534f, -976f), vec3<f32>(578f, 804f, 171f)), Struct_2(vec2<u32>(0u, 4294967295u), 1u, 0u, vec3<f32>(284f, 150f, 182f), false)), Struct_3(2147483647i, -1i, vec2<u32>(1u, 0u), Struct_1(-1i, false, 33109i, vec3<f32>(1000f, -117f, 318f), vec3<f32>(1222f, 2468f, -863f)), Struct_2(vec2<u32>(7204u, 4294967295u), 0u, 5127u, vec3<f32>(-1000f, 296f, 1000f), false)), Struct_3(1i, -65187i, vec2<u32>(5895u, 0u), Struct_1(16561i, true, 28713i, vec3<f32>(968f, -895f, -1424f), vec3<f32>(2223f, 923f, 106f)), Struct_2(vec2<u32>(1u, 1u), 38427u, 19263u, vec3<f32>(1040f, 1194f, 1000f), false)), Struct_3(-21767i, 2147483647i, vec2<u32>(4294967295u, 37068u), Struct_1(-14372i, true, 2147483647i, vec3<f32>(446f, 701f, 121f), vec3<f32>(-1000f, -217f, 892f)), Struct_2(vec2<u32>(35978u, 9259u), 378u, 0u, vec3<f32>(286f, -1478f, -494f), true)), Struct_3(-1i, 8792i, vec2<u32>(4294967295u, 4294967295u), Struct_1(0i, true, -1252i, vec3<f32>(-1883f, 430f, 1000f), vec3<f32>(1097f, -1230f, 290f)), Struct_2(vec2<u32>(50768u, 4294967295u), 0u, 56594u, vec3<f32>(668f, -1000f, -762f), true)), Struct_3(-1i, 0i, vec2<u32>(40173u, 15024u), Struct_1(1i, true, i32(-2147483648), vec3<f32>(1265f, 216f, -804f), vec3<f32>(1000f, -483f, -692f)), Struct_2(vec2<u32>(77193u, 38489u), 42212u, 4294967295u, vec3<f32>(825f, -2125f, -1851f), true)), Struct_3(49124i, 23533i, vec2<u32>(4294967295u, 0u), Struct_1(-30135i, true, 6168i, vec3<f32>(-462f, -1741f, -2137f), vec3<f32>(1031f, 1553f, -183f)), Struct_2(vec2<u32>(66184u, 40642u), 46576u, 0u, vec3<f32>(650f, 869f, -1000f), false)), Struct_3(0i, 2147483647i, vec2<u32>(0u, 17894u), Struct_1(2147483647i, false, 1i, vec3<f32>(-1007f, 2124f, 1221f), vec3<f32>(-1974f, -351f, 1729f)), Struct_2(vec2<u32>(0u, 31019u), 4294967295u, 7914u, vec3<f32>(-319f, 3083f, 168f), false)), Struct_3(1i, 1i, vec2<u32>(62073u, 1u), Struct_1(1i, false, 2147483647i, vec3<f32>(790f, -298f, 839f), vec3<f32>(-148f, -387f, 217f)), Struct_2(vec2<u32>(0u, 4294967295u), 62309u, 4294967295u, vec3<f32>(231f, -356f, 705f), true)), Struct_3(-1i, 2147483647i, vec2<u32>(4294967295u, 36004u), Struct_1(47092i, false, 24897i, vec3<f32>(2003f, -466f, 192f), vec3<f32>(-1299f, 1172f, 574f)), Struct_2(vec2<u32>(37199u, 12836u), 46281u, 4294967295u, vec3<f32>(-423f, 428f, 823f), true)), Struct_3(2147483647i, 2147483647i, vec2<u32>(0u, 1u), Struct_1(1i, false, -1i, vec3<f32>(1297f, -1845f, 1000f), vec3<f32>(-1390f, -1000f, 474f)), Struct_2(vec2<u32>(12311u, 1u), 66788u, 4294967295u, vec3<f32>(-1010f, 883f, 236f), false)), Struct_3(-1i, 0i, vec2<u32>(81004u, 70152u), Struct_1(22805i, true, 2147483647i, vec3<f32>(-365f, 1316f, 1703f), vec3<f32>(-136f, 376f, 1618f)), Struct_2(vec2<u32>(0u, 1u), 4294967295u, 4294967295u, vec3<f32>(192f, 602f, 107f), true)), Struct_3(i32(-2147483648), -55966i, vec2<u32>(0u, 55374u), Struct_1(-1i, true, 1i, vec3<f32>(428f, -294f, 1048f), vec3<f32>(-103f, -277f, 274f)), Struct_2(vec2<u32>(0u, 1u), 70130u, 4294967295u, vec3<f32>(-1000f, 455f, 439f), true)), Struct_3(0i, -9549i, vec2<u32>(27472u, 49680u), Struct_1(2147483647i, true, -38593i, vec3<f32>(1000f, -344f, -496f), vec3<f32>(1328f, -210f, 976f)), Struct_2(vec2<u32>(0u, 4294967295u), 61169u, 23960u, vec3<f32>(-1000f, -1490f, 1407f), true)), Struct_3(29648i, 21547i, vec2<u32>(4294967295u, 0u), Struct_1(-1i, true, -2528i, vec3<f32>(1275f, 241f, -421f), vec3<f32>(-1997f, 1000f, -440f)), Struct_2(vec2<u32>(4294967295u, 4705u), 192023u, 66392u, vec3<f32>(980f, 999f, 205f), false)), Struct_3(1i, -16860i, vec2<u32>(27219u, 1u), Struct_1(7264i, false, 14154i, vec3<f32>(-1313f, 1785f, -397f), vec3<f32>(330f, 1038f, 1000f)), Struct_2(vec2<u32>(4294967295u, 56432u), 12445u, 11804u, vec3<f32>(-649f, 869f, 123f), true)), Struct_3(-1i, -1i, vec2<u32>(2218u, 62329u), Struct_1(1i, true, -11933i, vec3<f32>(846f, 169f, -1103f), vec3<f32>(-300f, -532f, -300f)), Struct_2(vec2<u32>(69906u, 77042u), 4294967295u, 10307u, vec3<f32>(-466f, -802f, -1000f), true)));

var<private> global1: Struct_1 = Struct_1(-1i, false, i32(-2147483648), vec3<f32>(-1000f, 144f, -440f), vec3<f32>(-116f, -1207f, 160f));

var<private> global2: vec4<i32> = vec4<i32>(1i, 48437i, 2147483647i, 1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_5) -> f32 {
    let var_0 = -_wgslsmith_add_vec3_i32(vec3<i32>(0i, ~(-arg_1), arg_1), vec3<i32>(abs(reverseBits(-1i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(346i, 2147483647i), global1.a, -17372i), -7498i));
    var var_1 = _wgslsmith_dot_vec2_i32(var_0.xx, firstLeadingBit(u_input.a.xx));
    let var_2 = Struct_2(vec2<u32>(countOneBits(arg_0), arg_0), select(2178u & firstTrailingBit(_wgslsmith_clamp_u32(4294967295u, arg_0, u_input.b)), _wgslsmith_mod_u32(~4294967295u, reverseBits(4294967295u)), abs(_wgslsmith_mult_u32(arg_0, arg_0)) == (~4294967295u | min(arg_0, u_input.b))), ~(~u_input.b), vec3<f32>(arg_2.d, _wgslsmith_f_op_f32(-global1.e.x), arg_2.d), !arg_2.b.x | all(select(arg_2.b.zz, select(vec2<bool>(false, true), vec2<bool>(false, false), true), true)));
    var var_3 = arg_0;
    var var_4 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.a.yyy, global2.xzx), vec3<i32>(-2147483647i, 1i, -16904i)), i32(-1i) * -33824i), ~select(firstTrailingBit(vec2<i32>(var_0.x, arg_2.c.x)), min(global2.yz, ~u_input.a.xz), false));
    return 535f;
}

fn func_2() -> vec2<f32> {
    global2 = _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, _wgslsmith_mod_i32(u_input.a.x & u_input.a.x, _wgslsmith_div_i32(global1.a, global2.x)), global2.x, 1i)), u_input.a);
    global0 = array<Struct_3, 26>();
    let var_0 = Struct_1(-1i, false, global1.a, vec3<f32>(_wgslsmith_f_op_f32(346f * 1f), _wgslsmith_f_op_f32(-604f - 910f), -172f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.b, u_input.a.x, Struct_5(u_input.a, vec3<bool>(false, global1.b, global1.b), vec2<i32>(1i, global1.a), 719f, vec4<f32>(660f, 832f, global1.e.x, -296f)))), _wgslsmith_f_op_f32(-global1.e.x), _wgslsmith_f_op_f32(global1.d.x * -675f))), _wgslsmith_f_op_vec3_f32(global1.e * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-252f, -1000f, 565f))), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, global1.b, true), vec3<bool>(global1.b, false, global1.b)), select(vec3<bool>(false, global1.b, global1.b), vec3<bool>(global1.b, true, false), false), global1.b))));
    var var_1 = ~(_wgslsmith_add_i32(-18426i, u_input.a.x) << ((~_wgslsmith_mult_u32(u_input.b, u_input.b) << (u_input.b % 32u)) % 32u));
    let var_2 = ~(~max(vec2<i32>(global1.c, -2147483647i), -global2.wx));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.e.yx));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: u32) -> vec3<f32> {
    var var_0 = Struct_2(firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(select(vec4<u32>(78579u, arg_2, u_input.b, arg_2), vec4<u32>(u_input.b, 16407u, 0u, u_input.b), vec4<bool>(false, true, false, false)), select(vec4<u32>(arg_3, 4294967295u, 4294967295u, u_input.b), vec4<u32>(arg_2, u_input.b, 5479u, 0u), arg_0.b)), 1u)), ~(~arg_3) | ~26735u, 2479u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.d + vec3<f32>(arg_0.d.x, 349f, -1000f))), _wgslsmith_f_op_vec3_f32(-global1.d)))), all(select(!vec3<bool>(arg_0.b, false, arg_0.b), !vec3<bool>(global1.b, global1.b, false), true)) != !any(!vec3<bool>(arg_0.b, false, arg_0.b)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(global1.d.xx)), vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(-arg_0.e.x)))));
    let var_2 = Struct_1(10932i, true, global1.a, var_0.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_0.e.x)) + _wgslsmith_f_op_vec3_f32(global1.d * vec3<f32>(1000f, -415f, arg_0.d.x))), global1.d));
    var var_3 = vec4<bool>(_wgslsmith_mod_i32(7964i, 2147483647i) == _wgslsmith_sub_i32(95689i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(global2.wzx, vec3<i32>(43964i, -2147483647i, global2.x)), global2.x >> (1u % 32u), 2147483647i)), arg_0.b, ~countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2, 22112u), vec3<u32>(1u, var_0.a.x, 0u))) > arg_3, arg_0.b);
    var_0 = Struct_2(vec2<u32>(_wgslsmith_add_u32(select(6778u, var_0.c, var_0.e) >> (~arg_3 % 32u), _wgslsmith_add_u32(u_input.b, _wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(arg_2, arg_2)))), ~(~(~var_0.c))), u_input.b >> (_wgslsmith_clamp_u32(50134u, abs(_wgslsmith_add_u32(arg_3, arg_2)), u_input.b) % 32u), 51229u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.e.x, var_2.d.x)), _wgslsmith_f_op_f32(abs(1254f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1136f * 207f)))), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, select(var_0.b, var_0.b, true)), arg_2, ~23346u) != 68124u);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.x)), var_1.x, any(vec4<bool>(true, false, var_2.b, true)))) + 785f), var_0.d.x, var_0.d.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = Struct_2(vec2<u32>(4294967295u, _wgslsmith_div_u32(~reverseBits(0u), 48239u)), ~u_input.b >> (~u_input.b % 32u), select(~(~u_input.b << (1u % 32u)), ~4294967295u, all(!(!arg_1.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -964f))), arg_1.c.b);
    var var_1 = ~u_input.a.x ^ ~global1.a;
    let var_2 = !(!(!(!select(vec3<bool>(false, true, arg_1.d), vec3<bool>(global1.b, var_0.e, false), vec3<bool>(true, true, global1.b)))));
    global1 = Struct_1(_wgslsmith_sub_i32(-2147483647i, global2.x), arg_1.c.b, u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1035f, _wgslsmith_f_op_f32(-global1.e.x), 114f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global1.e, vec3<f32>(-1187f, -1269f, global1.d.x)))))), _wgslsmith_f_op_vec3_f32(func_4(arg_1.c, _wgslsmith_f_op_vec2_f32(func_2()), 25308u, (1u & u_input.b) >> (~(~1u) % 32u))));
    var var_3 = u_input.b;
    return Struct_3(arg_1.c.c, arg_1.a, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_mod_u32(~4151u, _wgslsmith_clamp_u32(1u, u_input.b, var_0.b))), abs(vec2<u32>(u_input.b, ~53448u))), arg_1.c, var_0);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> vec3<bool> {
    global1 = Struct_1(-global1.c, global1.b, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -1i, _wgslsmith_mult_i32(3321i, -arg_2.b), _wgslsmith_sub_i32(~(-1i), min(2147483647i, arg_1))), -vec4<i32>(arg_0, 71683i, ~(-27722i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global2.x, -42426i, arg_0), vec4<i32>(arg_1, -1i, 0i, 2147483647i)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1f), arg_2.d.e.x, arg_2.d.d.x) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.d.d.x, arg_2.e.d.x) - _wgslsmith_f_op_f32(global1.e.x - global1.e.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - arg_2.d.d.x) - -1000f))), vec3<f32>(571f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.e.d.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    global0 = array<Struct_3, 26>();
    global1 = Struct_1(func_1(vec2<bool>(false, all(!vec4<bool>(arg_2.d.b, true, false, arg_2.d.b))), Struct_4(func_1(vec2<bool>(true, arg_2.d.b), Struct_4(global2.x, vec2<bool>(true, global1.b), Struct_1(u_input.a.x, global1.b, 10313i, vec3<f32>(883f, -2428f, global1.e.x), arg_2.e.d), true)).a, vec2<bool>(arg_2.e.d.x >= arg_2.e.d.x, true), func_1(select(vec2<bool>(global1.b, false), vec2<bool>(false, true), global1.b), Struct_4(-1i, vec2<bool>(global1.b, false), Struct_1(-2111i, global1.b, u_input.a.x, vec3<f32>(arg_2.d.d.x, global1.d.x, -557f), global1.e), arg_2.e.e)).d, !all(vec2<bool>(false, arg_2.e.e)))).a, (arg_2.b | 1i) == u_input.a.x, _wgslsmith_dot_vec2_i32(global2.ww, ~firstLeadingBit(u_input.a.yz)), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.e.d.x), _wgslsmith_f_op_f32(-1935f - -1758f), _wgslsmith_f_op_f32(func_3(u_input.b, 1i, Struct_5(vec4<i32>(2147483647i, -52938i, 49744i, -45232i), vec3<bool>(true, true, arg_2.e.e), u_input.a.xw, 634f, vec4<f32>(-451f, 466f, 168f, -822f)))))), vec3<f32>(-299f, _wgslsmith_f_op_f32(step(354f, arg_2.d.e.x)), func_1(vec2<bool>(global1.b && false, arg_2.e.e), Struct_4(arg_1, vec2<bool>(true, arg_2.d.b), Struct_1(4704i, false, -26484i, arg_2.e.d, arg_2.e.d), any(vec2<bool>(false, true)))).e.d.x));
    let var_0 = Struct_4(select(global1.a, -22443i, arg_2.d.b), !(!(!vec2<bool>(true, arg_2.d.b))), arg_2.d, all(vec3<bool>(!any(vec2<bool>(arg_2.e.e, false)), global1.b, global1.b)));
    global0 = array<Struct_3, 26>();
    return !vec3<bool>(!func_1(vec2<bool>(arg_2.e.e, false), var_0).d.b, -1i <= _wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1, 32796i), ~vec2<i32>(-1i, arg_0)), true);
}

fn func_6(arg_0: vec3<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.x + 809f)) + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-119f, 970f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d.x), -969f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.e.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.e + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.d.x, global1.e.x, global1.e.x)))) + _wgslsmith_f_op_vec3_f32(sign(global1.e))))));
    let var_1 = u_input.a;
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -716f), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1595f + global1.e.x))) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))));
    global2 = _wgslsmith_mod_vec4_i32(~u_input.a, abs(-firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-15012i, 2147483647i, -23857i, u_input.a.x), vec4<i32>(u_input.a.x, global2.x, global2.x, 67231i)))));
    var var_2 = func_5(30935i, global2.x, global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(21037u, 57715u, u_input.b, u_input.b), vec4<u32>(10159u, u_input.b, u_input.b, 12991u)) & func_1(vec2<bool>(global1.b, global1.b), Struct_4(1i, vec2<bool>(true, global1.b), Struct_1(-2147483647i, arg_0.x, var_1.x, global1.e, global1.d), false)).e.b, firstTrailingBit(~33429u), _wgslsmith_mod_u32(4294967295u, u_input.b)), 26u)]).xx;
    return _wgslsmith_clamp_vec4_i32(abs(~u_input.a & vec4<i32>(global2.x >> (1u % 32u), 63607i, 46486i, global2.x >> (17348u % 32u))), vec4<i32>(4004i << (abs(28616u | u_input.b) % 32u), -reverseBits(_wgslsmith_sub_i32(global1.c, 5353i)), -2147483647i, var_1.x | 11415i), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(reverseBits(u_input.a.x), 1i, i32(-1i) * -1i, 51701i), u_input.a), u_input.a | _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(var_1.x, u_input.a.x, u_input.a.x, var_1.x)), var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.d.x), global1.e.x, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1.d.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e.x * global1.d.x))))));
    let var_1 = true;
    let var_2 = ~min(func_6(func_5(reverseBits(23986i), i32(-1i) * -1i, func_1(vec2<bool>(var_1, global1.b), Struct_4(-1i, vec2<bool>(global1.b, false), Struct_1(u_input.a.x, true, u_input.a.x, vec3<f32>(global1.d.x, 205f, 1000f), global1.e), global1.b)))), -_wgslsmith_sub_vec4_i32(u_input.a ^ vec4<i32>(69288i, 0i, global1.a, global2.x), _wgslsmith_div_vec4_i32(u_input.a, u_input.a)));
    let var_3 = Struct_5(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(abs(14992i), u_input.a.x), 7209i, var_2.x, 61559i), firstTrailingBit(vec4<i32>(_wgslsmith_mod_i32(43353i, -2147483647i), ~global1.a, -2147483647i, global2.x ^ u_input.a.x))), !vec3<bool>(global1.b, true, global1.b), vec2<i32>(firstTrailingBit(global2.x), _wgslsmith_mult_i32(~(~var_2.x), _wgslsmith_add_i32(min(1i, 1i), -68730i))), var_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1576f, var_0, global1.d.x, -1892f))))));
    let var_4 = vec2<i32>(-u_input.a.x, ~(~_wgslsmith_mod_i32(var_3.c.x, 1i & u_input.a.x)));
    global2 = vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(select(global2.x, var_3.a.x, var_3.b.x), 0i, _wgslsmith_div_i32(var_3.a.x, var_2.x)), u_input.a.xwx | firstLeadingBit(var_3.a.zzy)), ~var_2.x, var_4.x & -1i, var_3.a.x);
    global0 = array<Struct_3, 26>();
    global0 = array<Struct_3, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~(vec3<u32>(u_input.b, 29983u, 0u) | max(vec3<u32>(u_input.b, 0u, 258u), vec3<u32>(u_input.b, u_input.b, 2717u))), min(select(vec3<u32>(u_input.b, 53666u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 4294967295u), var_3.b) | firstLeadingBit(vec3<u32>(53038u, 1u, u_input.b)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(u_input.b, 0u, 0u))), vec3<bool>(!(!var_1), global1.b, _wgslsmith_div_i32(1i, var_3.a.x) == _wgslsmith_mod_i32(var_3.c.x, var_4.x))), var_3.e);
}

