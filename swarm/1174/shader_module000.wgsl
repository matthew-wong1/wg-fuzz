struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(4294967295u, 34906u, 61067u, 0u), vec4<u32>(4294967295u, 0u, 5423u, 1u), vec4<u32>(0u, 4294967295u, 38222u, 1346u), vec4<u32>(23642u, 0u, 1897u, 18816u), vec4<u32>(0u, 16731u, 28149u, 27894u), vec4<u32>(1u, 4294967295u, 47095u, 7548u), vec4<u32>(94589u, 56915u, 13020u, 35088u), vec4<u32>(10325u, 807u, 49363u, 28761u), vec4<u32>(4153u, 4294967295u, 61420u, 42094u), vec4<u32>(1u, 38885u, 4294967295u, 3255u), vec4<u32>(31695u, 11139u, 43184u, 0u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(1u, 86080u, 50428u, 1u), vec4<u32>(9725u, 20834u, 15771u, 44768u), vec4<u32>(4294967295u, 56464u, 49268u, 0u), vec4<u32>(56167u, 23607u, 84172u, 4294967295u), vec4<u32>(23832u, 4294967295u, 1u, 26168u), vec4<u32>(40323u, 29192u, 62648u, 0u), vec4<u32>(1u, 29142u, 105168u, 87772u), vec4<u32>(56191u, 0u, 6083u, 2883u), vec4<u32>(0u, 4294967295u, 57233u, 0u), vec4<u32>(48726u, 4294967295u, 69110u, 106012u), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec4<u32>(84561u, 88322u, 0u, 0u), vec4<u32>(1u, 4294967295u, 10426u, 4294967295u), vec4<u32>(8502u, 4294967295u, 0u, 25851u), vec4<u32>(24388u, 4294967295u, 36779u, 1u), vec4<u32>(0u, 0u, 4294967295u, 4294967295u), vec4<u32>(37853u, 11699u, 0u, 54446u));

var<private> global2: array<vec3<u32>, 12>;

var<private> global3: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(vec4<f32>(274f, -1094f, -1032f, 138f), vec2<u32>(4294967295u, 59156u)), Struct_2(vec4<f32>(1747f, 296f, 1776f, -772f), vec2<u32>(70029u, 97535u)), Struct_2(vec4<f32>(642f, -234f, 109f, 459f), vec2<u32>(76094u, 36344u)), Struct_2(vec4<f32>(437f, 587f, -746f, -224f), vec2<u32>(76266u, 1u)), Struct_2(vec4<f32>(-1570f, -491f, 142f, 1226f), vec2<u32>(24254u, 42320u)), Struct_2(vec4<f32>(846f, -1000f, 490f, 1802f), vec2<u32>(54601u, 1u)), Struct_2(vec4<f32>(3027f, -596f, -2935f, 990f), vec2<u32>(52589u, 0u)), Struct_2(vec4<f32>(1673f, 1280f, 627f, 204f), vec2<u32>(0u, 4294967295u)), Struct_2(vec4<f32>(2162f, 338f, 1128f, 1067f), vec2<u32>(4294967295u, 0u)), Struct_2(vec4<f32>(239f, -1343f, 144f, 847f), vec2<u32>(0u, 4294967295u)), Struct_2(vec4<f32>(808f, -932f, 702f, 474f), vec2<u32>(0u, 0u)), Struct_2(vec4<f32>(-1328f, -167f, 409f, -2040f), vec2<u32>(18171u, 4294967295u)), Struct_2(vec4<f32>(615f, -1832f, -442f, 213f), vec2<u32>(25210u, 0u)), Struct_2(vec4<f32>(782f, 1000f, -737f, 552f), vec2<u32>(514u, 14057u)), Struct_2(vec4<f32>(1482f, -851f, 208f, 588f), vec2<u32>(55699u, 4294967295u)), Struct_2(vec4<f32>(870f, 1134f, 1526f, -872f), vec2<u32>(1u, 4294967295u)), Struct_2(vec4<f32>(-210f, 1172f, 508f, 888f), vec2<u32>(0u, 0u)), Struct_2(vec4<f32>(1338f, 1718f, 2024f, -1331f), vec2<u32>(0u, 0u)), Struct_2(vec4<f32>(-501f, 905f, -279f, -1323f), vec2<u32>(4294967295u, 1u)), Struct_2(vec4<f32>(1067f, 427f, 961f, 398f), vec2<u32>(20822u, 4294967295u)), Struct_2(vec4<f32>(499f, -1000f, -2183f, 939f), vec2<u32>(4294967295u, 76935u)), Struct_2(vec4<f32>(-671f, -1347f, -998f, 2011f), vec2<u32>(16253u, 17141u)), Struct_2(vec4<f32>(987f, 273f, -114f, 396f), vec2<u32>(55946u, 28241u)), Struct_2(vec4<f32>(-129f, -1114f, -747f, -272f), vec2<u32>(4294967295u, 51902u)), Struct_2(vec4<f32>(-304f, -1693f, -222f, -1000f), vec2<u32>(0u, 42756u)), Struct_2(vec4<f32>(-393f, -388f, 391f, 796f), vec2<u32>(4294967295u, 26804u)));

var<private> global4: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<f32>(2040f, -2617f, -1602f), 418f, vec3<i32>(-1i, 2147483647i, 0i), 1282f), Struct_1(vec3<f32>(-1000f, -1000f, 826f), -1000f, vec3<i32>(9570i, -1i, 24239i), 535f), Struct_1(vec3<f32>(-261f, 780f, -1123f), -1537f, vec3<i32>(-13368i, i32(-2147483648), -1i), -1600f), Struct_1(vec3<f32>(310f, 306f, -2066f), 469f, vec3<i32>(-35852i, -1i, 1i), -620f), Struct_1(vec3<f32>(-497f, -334f, 405f), 242f, vec3<i32>(-48950i, -31036i, 2147483647i), -168f), Struct_1(vec3<f32>(578f, -525f, 533f), -970f, vec3<i32>(2147483647i, 34931i, 31312i), 750f), Struct_1(vec3<f32>(881f, -174f, 1664f), 747f, vec3<i32>(-32110i, 1i, -53212i), 132f), Struct_1(vec3<f32>(-1241f, -1582f, 626f), -220f, vec3<i32>(28704i, i32(-2147483648), 13001i), 935f), Struct_1(vec3<f32>(321f, 1921f, -172f), -1000f, vec3<i32>(i32(-2147483648), -3300i, -40281i), 104f), Struct_1(vec3<f32>(152f, 862f, 277f), 414f, vec3<i32>(-189i, 38342i, 2147483647i), -1959f), Struct_1(vec3<f32>(-884f, -593f, -365f), -104f, vec3<i32>(i32(-2147483648), 2147483647i, -3461i), -1348f), Struct_1(vec3<f32>(-615f, 613f, -1000f), 423f, vec3<i32>(2147483647i, 24580i, 3075i), -1009f), Struct_1(vec3<f32>(-441f, 106f, -102f), -1412f, vec3<i32>(i32(-2147483648), -1i, -22400i), 1282f), Struct_1(vec3<f32>(767f, -203f, 1839f), 127f, vec3<i32>(57718i, 2147483647i, 0i), 1000f), Struct_1(vec3<f32>(-672f, 347f, 771f), 621f, vec3<i32>(1i, 0i, 2324i), 799f), Struct_1(vec3<f32>(-119f, -522f, 990f), -482f, vec3<i32>(2147483647i, -64544i, -37703i), 1439f), Struct_1(vec3<f32>(498f, -970f, -197f), -452f, vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), -927f), Struct_1(vec3<f32>(1311f, 1000f, 820f), -678f, vec3<i32>(1i, 1i, -14697i), 435f), Struct_1(vec3<f32>(988f, 1925f, 2212f), -911f, vec3<i32>(24202i, 31136i, 2147483647i), 386f), Struct_1(vec3<f32>(-715f, -380f, -513f), 2468f, vec3<i32>(2147483647i, 67529i, 31618i), -695f), Struct_1(vec3<f32>(-283f, -339f, -1433f), -255f, vec3<i32>(7700i, -82124i, -1i), 1408f), Struct_1(vec3<f32>(477f, -1037f, -629f), -1609f, vec3<i32>(-1i, -1i, -1i), -1000f), Struct_1(vec3<f32>(1404f, 402f, -141f), -485f, vec3<i32>(2147483647i, 0i, -61918i), -1972f), Struct_1(vec3<f32>(310f, -383f, 157f), -642f, vec3<i32>(-14128i, -1i, -1i), 517f), Struct_1(vec3<f32>(-1204f, 644f, 1397f), -1524f, vec3<i32>(46756i, 38599i, 2147483647i), 1128f), Struct_1(vec3<f32>(-328f, -200f, 1372f), -685f, vec3<i32>(-11176i, 39239i, -24925i), 1060f), Struct_1(vec3<f32>(1071f, 1172f, 1804f), 1000f, vec3<i32>(2147483647i, -32728i, 1070i), 680f), Struct_1(vec3<f32>(268f, -546f, 1773f), 347f, vec3<i32>(-38050i, 2147483647i, i32(-2147483648)), 1506f), Struct_1(vec3<f32>(368f, -421f, 1000f), -556f, vec3<i32>(i32(-2147483648), 0i, 1i), 1655f), Struct_1(vec3<f32>(396f, -826f, 275f), -2228f, vec3<i32>(i32(-2147483648), -1i, -52449i), -764f), Struct_1(vec3<f32>(-372f, 521f, 2351f), 967f, vec3<i32>(-1i, 2599i, 12506i), 518f));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: Struct_3) -> i32 {
    let var_0 = vec4<i32>(-1i) * -firstTrailingBit(-vec4<i32>(2147483647i, 2147483647i, arg_3.d.c.x, arg_3.c.c.x) >> (firstLeadingBit(vec4<u32>(arg_3.b.x, u_input.b, 4294967295u, 1u)) % vec4<u32>(32u)));
    global4 = array<Struct_1, 31>();
    var var_1 = arg_3.c.c.x;
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    return arg_3.a.c.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<i32>, arg_3: vec2<i32>) -> vec2<bool> {
    let var_0 = select((14716i >> (u_input.c % 32u)) >> (_wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global2[_wgslsmith_index_u32(21712u, 12u)], vec3<u32>(arg_1, 92465u, arg_1)), select(global2[_wgslsmith_index_u32(33946u, 12u)], vec3<u32>(u_input.c, 20246u, arg_1), vec3<bool>(false, false, true))), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(0u, 0u, 0u, u_input.b)), global1[_wgslsmith_index_u32(min(u_input.c, 1u), 29u)])) % 32u), countOneBits(~(-2147483647i)), all(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, true), true)), arg_0.x != 1275f, any(vec2<bool>(true, true)))));
    return select(select(vec2<bool>(_wgslsmith_f_op_f32(-arg_0.x) >= _wgslsmith_f_op_f32(-553f - arg_0.x), !select(false, false, true)), select(vec2<bool>(false, all(vec4<bool>(true, true, false, false))), !select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(select(true, true, false), true)), vec2<bool>(true, true)), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), vec2<bool>(false, select(false, true, false)), vec2<bool>(true, true)), !vec2<bool>(true, all(vec3<bool>(false, false, false))), !select(vec2<bool>(false, true), vec2<bool>(false, true), true)), select(!(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)), vec2<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false)), true), vec2<bool>(true, !(arg_1 != 28613u))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> f32 {
    var var_0 = func_4(arg_3.a.zz, u_input.c, vec2<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2, arg_2, u_input.a), vec3<i32>(arg_2, arg_2, u_input.a))), _wgslsmith_add_i32(-(~0i), func_3(any(vec4<bool>(false, false, false, true)), -vec2<i32>(2147483647i, arg_2), _wgslsmith_f_op_vec3_f32(-arg_1), Struct_3(Struct_1(arg_3.a.xwx, arg_1.x, vec3<i32>(1i, arg_2, arg_2), -1651f), arg_0.zy, global4[_wgslsmith_index_u32(arg_3.b.x, 31u)], global0[_wgslsmith_index_u32(u_input.c, 23u)], 186f)))), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, arg_2), vec2<i32>(arg_2, -18716i)), ~abs(~vec2<i32>(arg_2, arg_2))));
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, ~49342u), vec2<u32>(_wgslsmith_sub_u32(arg_3.b.x, 0u) << (arg_3.b.x % 32u), arg_0.x)), global4[_wgslsmith_index_u32(1u, 31u)], global4[_wgslsmith_index_u32(~u_input.b, 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -880f, true | select(var_0.x, true, var_0.x)))));
    var var_2 = arg_0;
    let var_3 = global0[_wgslsmith_index_u32(4294967295u, 23u)];
    var var_4 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(700f * arg_3.a.x), _wgslsmith_f_op_f32(280f - -656f), _wgslsmith_f_op_f32(round(-607f))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), -386f, _wgslsmith_f_op_f32(trunc(-159f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_3.a), _wgslsmith_f_op_vec3_f32(select(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -183f, -544f)), select(vec3<bool>(false, var_0.x, true), vec3<bool>(false, true, false), true))))), 1f, _wgslsmith_clamp_vec3_i32(-abs(~var_3.c), firstLeadingBit(vec3<i32>(37889i << (1u % 32u), firstTrailingBit(0i), ~(-7661i))), _wgslsmith_add_vec3_i32(~(var_3.c ^ vec3<i32>(u_input.a, -3665i, var_1.c.c.x)), -vec3<i32>(var_1.c.c.x, -7036i, u_input.a))), _wgslsmith_f_op_f32(1669f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - var_1.a.a.x)), _wgslsmith_f_op_f32(trunc(var_3.b)), var_0.x))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - var_3.b), 1365f);
}

fn func_1(arg_0: f32) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-425f * arg_0) * _wgslsmith_f_op_f32(func_2(vec3<u32>(1u, 46652u, u_input.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -1029f, 2521f)), 37263i, global3[_wgslsmith_index_u32(1u, 26u)]))) * _wgslsmith_f_op_f32(f32(-1f) * -134f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(793f, arg_0) + _wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.b, u_input.c, 61637u), vec3<f32>(arg_0, arg_0, 970f), u_input.a, Struct_2(vec4<f32>(arg_0, arg_0, arg_0, arg_0), vec2<u32>(1u, u_input.c))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-292f, 1488f, arg_0, 681f) * vec4<f32>(767f, arg_0, arg_0, arg_0)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-355f, -1361f, var_0.x, arg_0))))))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, var_0.x, 789f, 425f), vec4<f32>(var_0.x, 405f, -2404f, -2275f)))), vec4<f32>(_wgslsmith_div_f32(-2743f, -574f), _wgslsmith_div_f32(arg_0, 305f), arg_0, _wgslsmith_f_op_f32(var_0.x - arg_0)))))));
    let var_2 = global3[_wgslsmith_index_u32(u_input.b, 26u)];
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), _wgslsmith_clamp_vec2_i32(~abs(vec2<i32>(u_input.a, u_input.a)), -vec2<i32>(~u_input.a, u_input.a), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-21548i, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -1i))), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(1i, -47050i)))));
    var var_4 = _wgslsmith_sub_vec3_i32(vec3<i32>(min(_wgslsmith_sub_i32(1i, _wgslsmith_add_i32(u_input.a, 0i)), 30202i), -_wgslsmith_div_i32(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)), max(select(u_input.a, -85726i, true), u_input.a) << (var_2.b.x % 32u)), max(-vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, -40235i)), u_input.a, -1i), -vec3<i32>(u_input.a, 0i, -56524i) | vec3<i32>(u_input.a, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(1i, u_input.a, 62158i, u_input.a)))));
    return Struct_1(var_2.a.wyz, var_0.x, _wgslsmith_div_vec3_i32(vec3<i32>(-19306i, countOneBits(u_input.a & u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -43282i, var_4.x, u_input.a) | vec4<i32>(u_input.a, 0i, var_4.x, -12712i), max(vec4<i32>(var_4.x, -39416i, var_4.x, u_input.a), vec4<i32>(7074i, -1i, 0i, 1i)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(abs(var_4.x), 0i ^ u_input.a, var_4.x), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, var_4.x, u_input.a), vec3<i32>(1i, u_input.a, u_input.a) | vec3<i32>(var_4.x, -20375i, -22669i)), vec3<i32>(var_4.x, -38305i, -16553i))), 871f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 12>();
    var var_0 = Struct_3(func_1(-1493f), ~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.b, u_input.b))) & ~_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), min(vec2<u32>(0u, u_input.c), vec2<u32>(20714u, u_input.c))), global4[_wgslsmith_index_u32(_wgslsmith_add_u32(~u_input.c, min(~u_input.b, _wgslsmith_mod_u32(u_input.b, 50563u) ^ ~0u)), 31u)], func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1399f, 832f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-1797f, _wgslsmith_f_op_f32(-2644f - 1195f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(~((global1[_wgslsmith_index_u32(38679u, 29u)] & global1[_wgslsmith_index_u32(u_input.c, 29u)]) << ((global1[_wgslsmith_index_u32(u_input.b, 29u)] << (vec4<u32>(63675u, 1079u, var_0.b.x, u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u))) & ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.x, var_0.b.x, u_input.b), vec3<u32>(u_input.c, var_0.b.x, 4294967295u)), var_0.b.x | u_input.c, _wgslsmith_mod_u32(var_0.b.x, 4294967295u), var_0.b.x), max(var_0.a.c.xy | vec2<i32>(1i, u_input.a), countOneBits(~vec2<i32>(var_0.d.c.x, var_0.a.c.x))), _wgslsmith_clamp_vec3_i32(~var_0.c.c, vec3<i32>(var_0.a.c.x, func_1(_wgslsmith_f_op_f32(-var_0.a.a.x)).c.x, u_input.a), -func_1(_wgslsmith_f_op_f32(-328f * var_0.a.d)).c));
}

