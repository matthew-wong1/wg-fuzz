struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
    c: Struct_2,
    d: Struct_3,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(100196u, vec4<u32>(0u, 22723u, 1u, 4294967295u), Struct_2(Struct_1(vec3<f32>(-1329f, -234f, 1132f)), vec4<i32>(2147483647i, -29182i, 10176i, i32(-2147483648)), Struct_1(vec3<f32>(560f, -370f, 327f)), 16494i, Struct_1(vec3<f32>(-1172f, 118f, 610f))), Struct_3(vec3<u32>(1u, 42660u, 1u), 348f, false, true), Struct_3(vec3<u32>(0u, 0u, 1u), 1000f, false, false)), Struct_4(39125u, vec4<u32>(8242u, 1u, 0u, 210u), Struct_2(Struct_1(vec3<f32>(-329f, -568f, -1015f)), vec4<i32>(27431i, 12127i, 12085i, 1i), Struct_1(vec3<f32>(-131f, -443f, 249f)), 1i, Struct_1(vec3<f32>(1000f, -280f, 520f))), Struct_3(vec3<u32>(4294967295u, 43525u, 35170u), -2778f, true, true), Struct_3(vec3<u32>(0u, 9980u, 15773u), 276f, true, false)), Struct_4(21176u, vec4<u32>(17315u, 4294967295u, 39933u, 1u), Struct_2(Struct_1(vec3<f32>(1000f, 1907f, 1787f)), vec4<i32>(-26762i, 2147483647i, -27432i, -4496i), Struct_1(vec3<f32>(371f, 140f, 1221f)), -1i, Struct_1(vec3<f32>(847f, -1122f, 1512f))), Struct_3(vec3<u32>(51804u, 1u, 3677u), -1494f, true, true), Struct_3(vec3<u32>(53323u, 1u, 0u), 171f, true, false)), Struct_4(48024u, vec4<u32>(1u, 50092u, 40419u, 0u), Struct_2(Struct_1(vec3<f32>(112f, 826f, -786f)), vec4<i32>(2147483647i, 0i, i32(-2147483648), 1i), Struct_1(vec3<f32>(-1022f, -197f, -1191f)), 20173i, Struct_1(vec3<f32>(-295f, 1593f, 802f))), Struct_3(vec3<u32>(49541u, 1u, 55027u), 896f, false, false), Struct_3(vec3<u32>(14073u, 23257u, 4294967295u), -696f, true, true)), Struct_4(0u, vec4<u32>(42933u, 0u, 4294967295u, 0u), Struct_2(Struct_1(vec3<f32>(-1101f, 738f, -944f)), vec4<i32>(19823i, -18239i, 70218i, i32(-2147483648)), Struct_1(vec3<f32>(-950f, -618f, -1939f)), -14400i, Struct_1(vec3<f32>(-1000f, -1543f, 2243f))), Struct_3(vec3<u32>(4294967295u, 4294967295u, 1082u), -267f, false, false), Struct_3(vec3<u32>(1u, 42537u, 4294967295u), -944f, false, false)), Struct_4(42581u, vec4<u32>(16940u, 0u, 13366u, 17519u), Struct_2(Struct_1(vec3<f32>(-470f, -475f, 1377f)), vec4<i32>(2878i, -1i, 5162i, i32(-2147483648)), Struct_1(vec3<f32>(-1400f, 1627f, 1163f)), -1i, Struct_1(vec3<f32>(-349f, 455f, 487f))), Struct_3(vec3<u32>(53131u, 57191u, 0u), 1355f, false, true), Struct_3(vec3<u32>(5425u, 58499u, 0u), 1200f, false, false)), Struct_4(1u, vec4<u32>(43904u, 4294967295u, 1u, 0u), Struct_2(Struct_1(vec3<f32>(131f, -1131f, 1307f)), vec4<i32>(i32(-2147483648), 16921i, 2147483647i, 0i), Struct_1(vec3<f32>(-1371f, -480f, 1271f)), 1i, Struct_1(vec3<f32>(388f, -538f, -914f))), Struct_3(vec3<u32>(1u, 22131u, 50314u), 1355f, true, true), Struct_3(vec3<u32>(4294967295u, 51963u, 40480u), 120f, true, true)), Struct_4(45456u, vec4<u32>(15149u, 0u, 4294967295u, 77741u), Struct_2(Struct_1(vec3<f32>(-1000f, 1733f, -1268f)), vec4<i32>(-927i, -1i, 16152i, 1i), Struct_1(vec3<f32>(123f, 284f, -1950f)), 1i, Struct_1(vec3<f32>(-1901f, 1542f, -1465f))), Struct_3(vec3<u32>(0u, 1u, 0u), 218f, true, true), Struct_3(vec3<u32>(4294967295u, 0u, 0u), 918f, false, false)), Struct_4(4294967295u, vec4<u32>(12220u, 3223u, 36285u, 71445u), Struct_2(Struct_1(vec3<f32>(-1132f, -1000f, -544f)), vec4<i32>(42120i, 0i, 34403i, 63789i), Struct_1(vec3<f32>(-384f, 387f, -1131f)), -1851i, Struct_1(vec3<f32>(810f, -1000f, 911f))), Struct_3(vec3<u32>(1u, 5015u, 66996u), -385f, true, true), Struct_3(vec3<u32>(0u, 39184u, 19825u), -552f, true, false)), Struct_4(0u, vec4<u32>(106469u, 4294967295u, 4294967295u, 4294967295u), Struct_2(Struct_1(vec3<f32>(2587f, -547f, 1057f)), vec4<i32>(-1i, 0i, 41237i, -4495i), Struct_1(vec3<f32>(1109f, 495f, 1730f)), 0i, Struct_1(vec3<f32>(-840f, -1000f, -874f))), Struct_3(vec3<u32>(0u, 1u, 45178u), 825f, false, true), Struct_3(vec3<u32>(1u, 30758u, 0u), 1336f, true, true)), Struct_4(1u, vec4<u32>(19962u, 13741u, 0u, 3614u), Struct_2(Struct_1(vec3<f32>(-500f, 1041f, -893f)), vec4<i32>(26822i, -15420i, i32(-2147483648), -44317i), Struct_1(vec3<f32>(-405f, 1000f, -1000f)), 17014i, Struct_1(vec3<f32>(-510f, 296f, -2167f))), Struct_3(vec3<u32>(62829u, 0u, 0u), 1034f, true, true), Struct_3(vec3<u32>(1306u, 1u, 4353u), 664f, false, false)), Struct_4(4294967295u, vec4<u32>(0u, 0u, 0u, 1u), Struct_2(Struct_1(vec3<f32>(-962f, 706f, -372f)), vec4<i32>(5588i, 0i, 46467i, 32906i), Struct_1(vec3<f32>(-207f, -347f, 268f)), 18710i, Struct_1(vec3<f32>(1040f, -800f, -1000f))), Struct_3(vec3<u32>(0u, 53447u, 4294967295u), 1137f, false, true), Struct_3(vec3<u32>(10386u, 101786u, 28054u), 1302f, false, true)), Struct_4(47543u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 10713u), Struct_2(Struct_1(vec3<f32>(213f, 1000f, 1689f)), vec4<i32>(2147483647i, 2147483647i, -4855i, -1i), Struct_1(vec3<f32>(421f, -1099f, -1000f)), -17357i, Struct_1(vec3<f32>(-1740f, -1357f, 999f))), Struct_3(vec3<u32>(420u, 31797u, 37215u), -728f, true, true), Struct_3(vec3<u32>(17177u, 0u, 1u), -1614f, false, true)), Struct_4(96538u, vec4<u32>(0u, 6845u, 4294967295u, 69246u), Struct_2(Struct_1(vec3<f32>(164f, -1550f, -662f)), vec4<i32>(-1i, 13306i, 1i, -33257i), Struct_1(vec3<f32>(-1000f, 2205f, 451f)), 2147483647i, Struct_1(vec3<f32>(210f, -575f, 226f))), Struct_3(vec3<u32>(17625u, 6453u, 4294967295u), -607f, true, true), Struct_3(vec3<u32>(0u, 53329u, 2856u), 333f, true, false)), Struct_4(12161u, vec4<u32>(4294967295u, 98376u, 34410u, 4294967295u), Struct_2(Struct_1(vec3<f32>(232f, 417f, -1308f)), vec4<i32>(-24089i, 91014i, 2147483647i, i32(-2147483648)), Struct_1(vec3<f32>(1543f, 182f, -135f)), -1i, Struct_1(vec3<f32>(-1000f, 857f, 2199f))), Struct_3(vec3<u32>(0u, 8913u, 0u), -603f, true, true), Struct_3(vec3<u32>(70259u, 24663u, 41276u), -894f, true, true)), Struct_4(0u, vec4<u32>(1u, 1u, 13042u, 42632u), Struct_2(Struct_1(vec3<f32>(-440f, 763f, -311f)), vec4<i32>(-66601i, -43121i, 66991i, -10269i), Struct_1(vec3<f32>(2566f, 1327f, -1659f)), i32(-2147483648), Struct_1(vec3<f32>(-548f, 1398f, 1865f))), Struct_3(vec3<u32>(1u, 32508u, 0u), 2456f, false, true), Struct_3(vec3<u32>(68108u, 1u, 26161u), -407f, true, true)), Struct_4(0u, vec4<u32>(41233u, 7930u, 89569u, 32730u), Struct_2(Struct_1(vec3<f32>(-357f, -236f, -143f)), vec4<i32>(0i, -9703i, i32(-2147483648), -1i), Struct_1(vec3<f32>(-1000f, 1686f, 1055f)), -1i, Struct_1(vec3<f32>(867f, -1000f, 1352f))), Struct_3(vec3<u32>(28321u, 60081u, 22024u), 1194f, false, false), Struct_3(vec3<u32>(0u, 12432u, 6480u), 494f, true, true)), Struct_4(4294967295u, vec4<u32>(150662u, 0u, 4294967295u, 49434u), Struct_2(Struct_1(vec3<f32>(302f, 1052f, 774f)), vec4<i32>(38107i, 12101i, 2147483647i, 54551i), Struct_1(vec3<f32>(1026f, 978f, -1259f)), 2147483647i, Struct_1(vec3<f32>(-1319f, 541f, -536f))), Struct_3(vec3<u32>(60712u, 29886u, 4294967295u), -1106f, true, false), Struct_3(vec3<u32>(4294967295u, 1u, 4294967295u), 741f, false, false)), Struct_4(22513u, vec4<u32>(4294967295u, 46181u, 4294967295u, 0u), Struct_2(Struct_1(vec3<f32>(620f, 257f, 1426f)), vec4<i32>(0i, -47272i, -4514i, 0i), Struct_1(vec3<f32>(-560f, -282f, -1000f)), -41320i, Struct_1(vec3<f32>(-662f, 440f, 1096f))), Struct_3(vec3<u32>(41311u, 4294967295u, 26027u), -1000f, false, true), Struct_3(vec3<u32>(105650u, 4294967295u, 4294967295u), 854f, true, true)));

var<private> global1: array<bool, 13> = array<bool, 13>(false, true, false, false, true, false, false, false, false, false, true, true, false);

var<private> global2: bool;

var<private> global3: vec2<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> vec3<u32> {
    global0 = array<Struct_4, 19>();
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.a, 4294967295u, 52578u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 3381u), vec3<u32>(arg_0, 13589u, u_input.a))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 1u, arg_0), min(vec3<u32>(u_input.a, arg_0, arg_0), vec3<u32>(u_input.a, 4294967295u, 12239u))), _wgslsmith_mod_u32(17269u >> (arg_0 % 32u), 1u), ~select(1u, arg_0, global1[_wgslsmith_index_u32(arg_0, 13u)]))), _wgslsmith_div_vec3_u32(vec3<u32>(22020u, 16323u, _wgslsmith_clamp_u32(arg_0, u_input.a, arg_0)) << (_wgslsmith_div_vec3_u32(~vec3<u32>(0u, 47440u, arg_0), vec3<u32>(4294967295u, 12057u, 0u)) % vec3<u32>(32u)), ~vec3<u32>(_wgslsmith_div_u32(45173u, u_input.a), ~61115u, _wgslsmith_sub_u32(u_input.a, 4294967295u))));
    let var_1 = !global1[_wgslsmith_index_u32(var_0.x | ~reverseBits(countOneBits(u_input.a)), 13u)];
    let var_2 = select(~firstTrailingBit(var_0.yy) << (~(~vec2<u32>(1u, 27194u)) % vec2<u32>(32u)), ~(~vec2<u32>(~31632u, u_input.a)), global1[_wgslsmith_index_u32(~67033u, 13u)]);
    var var_3 = (vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, -29923i), _wgslsmith_mod_vec2_i32(vec2<i32>(-26335i, -36199i), vec2<i32>(global3.x, global3.x)), vec2<i32>(-30455i, 22241i))) & ~(~(~firstTrailingBit(vec2<i32>(7226i, -21982i))));
    return ~(~vec3<u32>(firstLeadingBit(arg_0) << (82177u % 32u), arg_0, _wgslsmith_mod_u32(var_0.x, ~arg_0)));
}

fn func_2(arg_0: f32) -> bool {
    global0 = array<Struct_4, 19>();
    var var_0 = Struct_3(func_3(reverseBits(~(~0u))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1849f, _wgslsmith_f_op_f32(abs(1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + arg_0)), -494f)), false, all(select(select(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 13u)], false, false), select(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], false), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(u_input.a, 13u)])), true || global1[_wgslsmith_index_u32(1u, 13u)]), vec4<bool>(!global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)], 1176f < arg_0, true), vec4<bool>(false, !global1[_wgslsmith_index_u32(30970u, 13u)], !global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)] && global1[_wgslsmith_index_u32(u_input.a, 13u)]))));
    global2 = true;
    global1 = array<bool, 13>();
    global2 = select(false, false, false);
    return 2147483647i <= max(1i, _wgslsmith_add_i32(_wgslsmith_div_i32(53040i, global3.x), _wgslsmith_add_i32(1i, 1i)) << (~1u % 32u));
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    global1 = array<bool, 13>();
    var var_0 = -2147483647i;
    global1 = array<bool, 13>();
    let var_1 = 12457i;
    var var_2 = select(select(!(!(!vec3<bool>(global1[_wgslsmith_index_u32(16143u, 13u)], true, global1[_wgslsmith_index_u32(20968u, 13u)]))), select(vec3<bool>(true, func_2(arg_1.b), true), vec3<bool>(true, global1[_wgslsmith_index_u32(func_3(u_input.a).x, 13u)], any(vec3<bool>(false, global1[_wgslsmith_index_u32(25150u, 13u)], arg_1.c))), arg_1.c), vec3<bool>(!all(vec4<bool>(false, false, global1[_wgslsmith_index_u32(arg_2, 13u)], false)), true, arg_1.c)), vec3<bool>(global1[_wgslsmith_index_u32(~arg_1.a.x, 13u)], !global1[_wgslsmith_index_u32(0u, 13u)], !select(any(vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a.x, 13u)], arg_1.d, global1[_wgslsmith_index_u32(arg_0, 13u)], global1[_wgslsmith_index_u32(1u, 13u)])), global1[_wgslsmith_index_u32(u_input.a, 13u)] | arg_1.c, true)), arg_1.a.x == min(_wgslsmith_div_u32(15946u, 19232u), 35696u));
    return Struct_2(Struct_1(vec3<f32>(-363f, _wgslsmith_f_op_f32(abs(arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b)) - _wgslsmith_f_op_f32(-arg_1.b)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(-2147483647i), 0i, 0i, var_1), vec4<i32>(var_1, global3.x, var_1, _wgslsmith_mod_i32(select(56466i, global3.x, true), global3.x << (45682u % 32u))), vec4<i32>(global3.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global3.x, global3.x), vec2<i32>(global3.x, 30498i)), firstLeadingBit(-2147483647i), select(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, var_1), vec3<i32>(var_1, global3.x, -46147i)), _wgslsmith_sub_i32(-47533i, global3.x), false))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.b, arg_1.b, arg_1.b), vec3<f32>(-971f, 1536f, 183f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.b, 1375f, -1849f), vec3<f32>(-402f, arg_1.b, arg_1.b), vec3<bool>(true, arg_1.c, true)))) + vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.b, arg_1.b)), _wgslsmith_f_op_f32(round(-1638f)), _wgslsmith_f_op_f32(abs(-980f))))), global3.x, Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, 602f, arg_1.b)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(534f, 1058f, -181f))), vec3<f32>(1746f, _wgslsmith_f_op_f32(-arg_1.b), arg_1.b))));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_4 {
    var var_0 = func_4(abs(~62639u), Struct_3(~(~abs(vec3<u32>(u_input.a, u_input.a, 4294967295u))), -1039f, all(select(vec2<bool>(true, true), !vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 13u)]), !vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 13u)], false))), !(!func_2(488f))), countOneBits(15384u));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.a.x, 605f), arg_1.a.zy), arg_1.a.zz))))));
    global1 = array<bool, 13>();
    global0 = array<Struct_4, 19>();
    var_0 = Struct_2(func_4(u_input.a, Struct_3(vec3<u32>(4294967295u, func_3(0u).x, ~arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - var_0.e.a.x) - _wgslsmith_f_op_f32(arg_1.a.x * 1722f)), false, true), u_input.a).a, select(select(firstTrailingBit(min(var_0.b, var_0.b)), vec4<i32>(global3.x >> (2980u % 32u), var_0.b.x, var_0.d, ~0i), vec4<bool>(false, false, true, true)), var_0.b, true), var_0.c, global3.x, var_0.c);
    return Struct_4(arg_0, _wgslsmith_mod_vec4_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, arg_0, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, 52445u, arg_0)))), reverseBits(reverseBits(firstLeadingBit(vec4<u32>(u_input.a, arg_0, arg_0, arg_0))))), Struct_2(arg_1, var_0.b, var_0.e, -2147483647i, arg_1), Struct_3(vec3<u32>(~u_input.a | u_input.a, 41474u, func_3(u_input.a).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1417f), var_0.c.a.x))), false, global1[_wgslsmith_index_u32(u_input.a | min(~22564u, 1u), 13u)]), Struct_3(_wgslsmith_add_vec3_u32(~vec3<u32>(13165u, u_input.a, arg_0) ^ ~vec3<u32>(42321u, 112159u, u_input.a), ~vec3<u32>(42874u, u_input.a, arg_0) << (_wgslsmith_add_vec3_u32(vec3<u32>(51476u, u_input.a, 44218u), vec3<u32>(arg_0, arg_0, u_input.a)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-154f - -1939f), !(!(global1[_wgslsmith_index_u32(0u, 13u)] == false)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-reverseBits(vec3<i32>(-1i, global3.x, -5772i) ^ vec3<i32>(210i, 0i, 28188i)), vec3<i32>(global3.x, _wgslsmith_mult_i32(min(0i, -31733i), _wgslsmith_add_i32(global3.x, 2147483647i)), _wgslsmith_clamp_i32(771i | global3.x, global3.x, abs(global3.x)))), -_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global3.x, 2147483647i, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, 1i, global3.x), vec3<i32>(14502i, -583i, global3.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 0i, global3.x) ^ vec3<i32>(global3.x, global3.x, global3.x), abs(vec3<i32>(global3.x, global3.x, global3.x)))));
    global2 = true;
    var var_1 = Struct_5(func_1(max(_wgslsmith_mod_u32(~0u, 40625u), u_input.a), Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1213f, 1000f, -881f)))))), all(!vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)])) | (any(vec2<bool>(global1[_wgslsmith_index_u32(62290u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)])) && global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.a, _wgslsmith_mod_u32(u_input.a, 1u), 4294967295u), 13u)]));
    var var_2 = func_4(u_input.a, var_1.a.d, 4294967295u);
    global0 = array<Struct_4, 19>();
    var var_3 = var_1.a.e.a.xz;
    var var_4 = var_2.d & var_2.b.x;
    var_1 = Struct_5(var_1.a, var_1.a.d.d);
    var var_5 = Struct_3(func_1(var_1.a.a, func_4(~4294967295u, Struct_3(var_1.a.d.a, 1290f, global1[_wgslsmith_index_u32(var_3.x & u_input.a, 13u)], false), firstTrailingBit(43166u)).c).b.xzw, 104f, select(false, _wgslsmith_add_i32(var_0.x, var_2.b.x) < abs(-var_1.a.c.b.x), all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 13u)]), vec2<bool>(false, var_1.b), vec2<bool>(global1[_wgslsmith_index_u32(0u, 13u)], var_1.a.e.d))) && true), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(586f, var_2.a.a.x, var_5.b, -902f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_5.b, var_1.a.e.b, var_1.a.e.b, -226f)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d.b) - _wgslsmith_f_op_f32(var_1.a.d.b - var_5.b)), -1889f, func_1(func_3(var_1.a.b.x).x, func_1(var_3.x, Struct_1(vec3<f32>(var_1.a.e.b, 2146f, -471f))).c.c).c.c.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.b)))), var_5.a, ~var_0.x & 17217i);
}

