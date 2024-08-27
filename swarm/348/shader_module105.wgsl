struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_3,
    d: vec3<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 19> = array<Struct_4, 19>(Struct_4(Struct_3(35722u, 1310u, vec4<f32>(-1079f, -1000f, -147f, 1643f), Struct_1(vec2<u32>(4294967295u, 1u), 0u)), Struct_2(Struct_1(vec2<u32>(0u, 1u), 30167u), 1088f, Struct_1(vec2<u32>(4294967295u, 0u), 29052u), Struct_1(vec2<u32>(4294967295u, 0u), 1u), vec2<u32>(1u, 50331u)), Struct_3(4294967295u, 7898u, vec4<f32>(-710f, -951f, -189f, 1403f), Struct_1(vec2<u32>(0u, 0u), 1u)), vec3<i32>(-692i, 1i, 0i)), Struct_4(Struct_3(0u, 4294967295u, vec4<f32>(-352f, -267f, 108f, 621f), Struct_1(vec2<u32>(33825u, 1u), 4294967295u)), Struct_2(Struct_1(vec2<u32>(11170u, 99620u), 4294967295u), 590f, Struct_1(vec2<u32>(4294967295u, 76877u), 37180u), Struct_1(vec2<u32>(4294967295u, 1u), 1u), vec2<u32>(1u, 41041u)), Struct_3(1u, 925u, vec4<f32>(-1547f, -535f, -1876f, 1000f), Struct_1(vec2<u32>(65978u, 14243u), 62974u)), vec3<i32>(-1i, -40851i, -59375i)), Struct_4(Struct_3(1u, 43053u, vec4<f32>(357f, 183f, 830f, -124f), Struct_1(vec2<u32>(0u, 4294967295u), 1u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 23066u), 59482u), -733f, Struct_1(vec2<u32>(10776u, 0u), 0u), Struct_1(vec2<u32>(58180u, 4294967295u), 0u), vec2<u32>(84065u, 52816u)), Struct_3(40377u, 48896u, vec4<f32>(-300f, -930f, 263f, -394f), Struct_1(vec2<u32>(4294967295u, 0u), 30824u)), vec3<i32>(2147483647i, -15966i, 1i)), Struct_4(Struct_3(41156u, 9707u, vec4<f32>(1811f, 604f, -818f, -1314f), Struct_1(vec2<u32>(44822u, 71212u), 98659u)), Struct_2(Struct_1(vec2<u32>(18541u, 4294967295u), 4294967295u), 149f, Struct_1(vec2<u32>(4294967295u, 1u), 4294967295u), Struct_1(vec2<u32>(46982u, 4294967295u), 1u), vec2<u32>(1u, 0u)), Struct_3(48307u, 31257u, vec4<f32>(-1694f, -1040f, -241f, -1779f), Struct_1(vec2<u32>(26565u, 0u), 1u)), vec3<i32>(-1i, 2147483647i, -70238i)), Struct_4(Struct_3(0u, 25016u, vec4<f32>(-2103f, -1345f, 1419f, 1000f), Struct_1(vec2<u32>(19951u, 0u), 76073u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), 4294967295u), -246f, Struct_1(vec2<u32>(1u, 1u), 1u), Struct_1(vec2<u32>(0u, 60093u), 0u), vec2<u32>(6550u, 1u)), Struct_3(1u, 30288u, vec4<f32>(1231f, -1000f, 560f, 1727f), Struct_1(vec2<u32>(4294967295u, 87494u), 1u)), vec3<i32>(-1i, 1i, 0i)), Struct_4(Struct_3(4294967295u, 51273u, vec4<f32>(149f, 1200f, 1316f, -262f), Struct_1(vec2<u32>(61076u, 1u), 14942u)), Struct_2(Struct_1(vec2<u32>(5210u, 93792u), 13420u), 135f, Struct_1(vec2<u32>(19198u, 20131u), 4294967295u), Struct_1(vec2<u32>(1u, 51153u), 2751u), vec2<u32>(4294967295u, 15949u)), Struct_3(42573u, 4294967295u, vec4<f32>(-1157f, -1088f, 2047f, -110f), Struct_1(vec2<u32>(1u, 4294967295u), 24107u)), vec3<i32>(1i, 79344i, 8161i)), Struct_4(Struct_3(36671u, 44697u, vec4<f32>(-654f, 451f, 938f, -636f), Struct_1(vec2<u32>(12162u, 29240u), 53344u)), Struct_2(Struct_1(vec2<u32>(1u, 0u), 49408u), -362f, Struct_1(vec2<u32>(12468u, 43126u), 39265u), Struct_1(vec2<u32>(0u, 4294967295u), 4294967295u), vec2<u32>(0u, 4294967295u)), Struct_3(4294967295u, 23798u, vec4<f32>(-276f, -1315f, 1076f, -1537f), Struct_1(vec2<u32>(0u, 36593u), 18401u)), vec3<i32>(2147483647i, -1i, i32(-2147483648))), Struct_4(Struct_3(1u, 90291u, vec4<f32>(1391f, -636f, 121f, 357f), Struct_1(vec2<u32>(0u, 1u), 1u)), Struct_2(Struct_1(vec2<u32>(73336u, 1u), 1u), -414f, Struct_1(vec2<u32>(16879u, 1395u), 1u), Struct_1(vec2<u32>(78493u, 1u), 38388u), vec2<u32>(4294967295u, 51618u)), Struct_3(48943u, 1u, vec4<f32>(-1000f, 511f, -497f, 1055f), Struct_1(vec2<u32>(4294967295u, 4696u), 8971u)), vec3<i32>(-19574i, -1i, 1i)), Struct_4(Struct_3(23230u, 1966u, vec4<f32>(1621f, -672f, -139f, -807f), Struct_1(vec2<u32>(102304u, 0u), 0u)), Struct_2(Struct_1(vec2<u32>(7198u, 4294967295u), 4294967295u), -795f, Struct_1(vec2<u32>(1351u, 61811u), 42296u), Struct_1(vec2<u32>(0u, 34342u), 1u), vec2<u32>(0u, 79008u)), Struct_3(0u, 49889u, vec4<f32>(-1767f, -1904f, 660f, -1000f), Struct_1(vec2<u32>(23610u, 41767u), 12037u)), vec3<i32>(-783i, 8904i, -1i)), Struct_4(Struct_3(4294967295u, 0u, vec4<f32>(-497f, 332f, 1384f, 236f), Struct_1(vec2<u32>(55049u, 18782u), 40746u)), Struct_2(Struct_1(vec2<u32>(0u, 1u), 69880u), 845f, Struct_1(vec2<u32>(54735u, 47880u), 1u), Struct_1(vec2<u32>(4294967295u, 48309u), 4294967295u), vec2<u32>(4294967295u, 1u)), Struct_3(48172u, 60506u, vec4<f32>(-1088f, 520f, -130f, -1154f), Struct_1(vec2<u32>(1u, 10322u), 86277u)), vec3<i32>(33352i, 14187i, -1i)), Struct_4(Struct_3(1u, 6268u, vec4<f32>(-364f, -581f, 1000f, 499f), Struct_1(vec2<u32>(23792u, 4294967295u), 1u)), Struct_2(Struct_1(vec2<u32>(119260u, 30884u), 46307u), -1000f, Struct_1(vec2<u32>(1u, 13854u), 1u), Struct_1(vec2<u32>(4294967295u, 17367u), 58223u), vec2<u32>(4294967295u, 23052u)), Struct_3(19842u, 4294967295u, vec4<f32>(-1308f, -442f, 308f, 1820f), Struct_1(vec2<u32>(0u, 15847u), 0u)), vec3<i32>(11943i, i32(-2147483648), i32(-2147483648))), Struct_4(Struct_3(12819u, 0u, vec4<f32>(-1178f, -1166f, -346f, 2060f), Struct_1(vec2<u32>(23297u, 4294967295u), 13574u)), Struct_2(Struct_1(vec2<u32>(4294967295u, 8805u), 0u), -1361f, Struct_1(vec2<u32>(25278u, 69003u), 1u), Struct_1(vec2<u32>(94301u, 0u), 39369u), vec2<u32>(14914u, 4294967295u)), Struct_3(4294967295u, 0u, vec4<f32>(-996f, -115f, 1850f, -641f), Struct_1(vec2<u32>(1u, 53464u), 1u)), vec3<i32>(0i, 0i, 2344i)), Struct_4(Struct_3(0u, 4294967295u, vec4<f32>(1664f, 442f, 105f, -1807f), Struct_1(vec2<u32>(12051u, 15943u), 1u)), Struct_2(Struct_1(vec2<u32>(21367u, 1u), 1u), -259f, Struct_1(vec2<u32>(0u, 1u), 0u), Struct_1(vec2<u32>(30446u, 4294967295u), 0u), vec2<u32>(1140u, 1u)), Struct_3(4294967295u, 1u, vec4<f32>(-736f, 1350f, 724f, 729f), Struct_1(vec2<u32>(14438u, 79584u), 1u)), vec3<i32>(-32980i, -5974i, -718i)), Struct_4(Struct_3(18649u, 3304u, vec4<f32>(845f, -1168f, -713f, -1357f), Struct_1(vec2<u32>(27114u, 30989u), 34898u)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), 0u), -1000f, Struct_1(vec2<u32>(5276u, 1u), 4294967295u), Struct_1(vec2<u32>(54999u, 1u), 25817u), vec2<u32>(57645u, 54806u)), Struct_3(37920u, 4294967295u, vec4<f32>(-456f, -412f, 706f, -825f), Struct_1(vec2<u32>(58656u, 1u), 0u)), vec3<i32>(53042i, 46657i, -5842i)), Struct_4(Struct_3(78773u, 10172u, vec4<f32>(-270f, -276f, -546f, 913f), Struct_1(vec2<u32>(4294967295u, 56043u), 22960u)), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u), 21487u), 743f, Struct_1(vec2<u32>(1u, 1u), 50074u), Struct_1(vec2<u32>(57054u, 25412u), 0u), vec2<u32>(0u, 83240u)), Struct_3(1u, 1u, vec4<f32>(-1000f, 791f, 509f, 996f), Struct_1(vec2<u32>(1u, 38961u), 0u)), vec3<i32>(31370i, i32(-2147483648), -27813i)), Struct_4(Struct_3(2650u, 4294967295u, vec4<f32>(706f, 149f, 399f, -2095f), Struct_1(vec2<u32>(0u, 0u), 23794u)), Struct_2(Struct_1(vec2<u32>(4433u, 52397u), 55107u), 971f, Struct_1(vec2<u32>(40165u, 4294967295u), 4294967295u), Struct_1(vec2<u32>(0u, 1u), 37889u), vec2<u32>(28059u, 40094u)), Struct_3(53447u, 1u, vec4<f32>(-183f, 593f, -1191f, -1596f), Struct_1(vec2<u32>(4294967295u, 0u), 4294967295u)), vec3<i32>(-25914i, 19677i, 2147483647i)), Struct_4(Struct_3(18049u, 46034u, vec4<f32>(-1000f, -233f, -200f, -168f), Struct_1(vec2<u32>(67322u, 4294967295u), 6011u)), Struct_2(Struct_1(vec2<u32>(1u, 1u), 13223u), -612f, Struct_1(vec2<u32>(17866u, 15528u), 53852u), Struct_1(vec2<u32>(23600u, 1u), 21114u), vec2<u32>(28808u, 1u)), Struct_3(4294967295u, 9838u, vec4<f32>(-1283f, -1077f, -216f, -342f), Struct_1(vec2<u32>(4294967295u, 0u), 4294967295u)), vec3<i32>(-17984i, 0i, -2118i)), Struct_4(Struct_3(0u, 1u, vec4<f32>(773f, 780f, -394f, -1248f), Struct_1(vec2<u32>(1u, 41063u), 4294967295u)), Struct_2(Struct_1(vec2<u32>(1u, 4294967295u), 0u), -1571f, Struct_1(vec2<u32>(46329u, 4294967295u), 4797u), Struct_1(vec2<u32>(57490u, 38911u), 21849u), vec2<u32>(53136u, 8353u)), Struct_3(1u, 0u, vec4<f32>(-272f, -898f, -562f, -667f), Struct_1(vec2<u32>(38771u, 28187u), 84196u)), vec3<i32>(31518i, -65804i, -1i)), Struct_4(Struct_3(70596u, 0u, vec4<f32>(-170f, -1014f, -490f, 1799f), Struct_1(vec2<u32>(3482u, 4294967295u), 0u)), Struct_2(Struct_1(vec2<u32>(14207u, 4294967295u), 4294967295u), -1636f, Struct_1(vec2<u32>(17519u, 53846u), 35156u), Struct_1(vec2<u32>(38630u, 37534u), 1u), vec2<u32>(14789u, 4294967295u)), Struct_3(4294967295u, 5545u, vec4<f32>(1734f, 271f, 1243f, -135f), Struct_1(vec2<u32>(1u, 50707u), 3760u)), vec3<i32>(3307i, -21749i, -1i)));

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<bool, 8> = array<bool, 8>(true, false, false, false, false, false, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> u32 {
    let var_0 = u_input.a ^ ~(vec2<u32>(arg_0.x, ~4294967295u) << (~vec2<u32>(1u, arg_0.x) % vec2<u32>(32u)));
    var var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(808f, arg_2, arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_2))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-591f, -2192f, arg_1, arg_2))), vec4<f32>(arg_1, -1144f, 1367f, arg_2), true))), !(!(global2[_wgslsmith_index_u32(6450u, 8u)] || global2[_wgslsmith_index_u32(969u, 8u)])))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(373f, arg_1, -1000f, -433f), vec4<f32>(-1546f, arg_2, -2206f, arg_2))) - vec4<f32>(-731f, -816f, 465f, 459f)) + vec4<f32>(1309f, _wgslsmith_f_op_f32(-arg_1), arg_1, _wgslsmith_f_op_f32(trunc(arg_1))))))));
    var var_3 = u_input.b;
    var var_4 = false;
    return var_0.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<Struct_4, 19>();
    global1 = -2147483647i;
    return Struct_1(vec2<u32>(1u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~u_input.c, u_input.c | 10947u, u_input.d), 0u)), func_3(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(41528u, arg_1.b, u_input.c), vec3<u32>(u_input.a.x, u_input.a.x, arg_1.a.x)), reverseBits(vec3<u32>(arg_1.a.x, u_input.d, arg_1.b))), ~select(48291u, 0u, global2[_wgslsmith_index_u32(4294967295u, 8u)]), abs(3844u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(ceil(443f)), Struct_1(arg_1.a, ~u_input.a.x)));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = Struct_3(~0u, arg_0.e.x | select(_wgslsmith_dot_vec2_u32(~u_input.a, arg_0.c.a), ~(~78615u), true), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, -903f, -1022f, _wgslsmith_f_op_f32(f32(-1f) * -602f)), vec4<f32>(_wgslsmith_f_op_f32(abs(arg_0.b)), _wgslsmith_f_op_f32(arg_0.b - 540f), _wgslsmith_f_op_f32(step(arg_1, arg_0.b)), _wgslsmith_f_op_f32(-arg_0.b)))))), Struct_1(~(~vec2<u32>(47504u, arg_0.a.b) << (arg_0.c.a % vec2<u32>(32u))), u_input.a.x));
    var var_1 = !vec4<bool>(true, true, arg_2, any(vec4<bool>(true, arg_2 | true, false, any(vec2<bool>(arg_2, false)))));
    let var_2 = Struct_4(Struct_3(~func_3(vec3<u32>(41614u, arg_0.d.b, 31429u) & vec3<u32>(72271u, 1u, var_0.d.b), _wgslsmith_f_op_f32(abs(-910f)), _wgslsmith_f_op_f32(-679f * 676f), var_0.d), u_input.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(var_0.c)) + var_0.c), var_0.d), arg_0, Struct_3(_wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(u_input.c, arg_0.a.b << (7732u % 32u)), 19698u), func_2(~vec3<i32>(u_input.b, u_input.b, u_input.b), func_2(firstTrailingBit(vec3<i32>(1i, u_input.b, -26262i)), Struct_1(arg_0.a.a, 1u))).b, var_0.c, var_0.d), select(~(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.b, -2147483647i), vec3<i32>(-2147483647i, 1i, 0i)) & max(vec3<i32>(2147483647i, -2147483647i, u_input.b), vec3<i32>(-26082i, -2147483647i, -2147483647i))), vec3<i32>(max(firstLeadingBit(1i), countOneBits(u_input.b)), u_input.b, 2147483647i), var_1.yyy));
    global0 = array<Struct_4, 19>();
    var var_3 = Struct_5(var_2.c, Struct_1(countOneBits(~vec2<u32>(87626u, 36951u)) | ~select(vec2<u32>(var_2.c.a, 21162u), var_2.b.d.a, false), 11150u));
    return _wgslsmith_mod_u32(~var_0.d.b, ~var_3.a.d.a.x);
}

fn func_1(arg_0: i32) -> vec3<u32> {
    var var_0 = u_input.d;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~func_4(Struct_2(func_2(vec3<i32>(arg_0, arg_0, 42509i), Struct_1(vec2<u32>(83862u, 63329u), u_input.c)), _wgslsmith_f_op_f32(-741f * -1176f), Struct_1(vec2<u32>(u_input.a.x, u_input.c), u_input.d), Struct_1(u_input.a, u_input.a.x), vec2<u32>(38977u, 54414u)), -1002f, (false == global2[_wgslsmith_index_u32(0u, 8u)]) & true), 1u), 8u)];
    global1 = -11079i;
    var_0 = min(34795u, ~u_input.a.x | 89580u);
    let var_2 = func_2(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0, -1i, -2147483647i), vec3<i32>(-13404i, u_input.b, arg_0), vec3<i32>(1i, 0i, 14312i)), vec3<i32>(u_input.b, _wgslsmith_mult_i32(arg_0, arg_0), 29993i)), vec3<i32>(_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec3_i32(vec3<i32>(85171i, 2147483647i, arg_0), vec3<i32>(79383i, 28337i, -2147483647i))), _wgslsmith_clamp_i32(reverseBits(-11997i), arg_0, arg_0), 37419i)), Struct_1(vec2<u32>(func_3(_wgslsmith_clamp_vec3_u32(vec3<u32>(3741u, 76909u, u_input.d), vec3<u32>(u_input.d, u_input.a.x, 3495u), vec3<u32>(u_input.d, 8541u, 0u)), -234f, _wgslsmith_f_op_f32(min(-1000f, -695f)), func_2(vec3<i32>(55110i, u_input.b, -20886i), Struct_1(u_input.a, u_input.a.x))), _wgslsmith_add_u32(u_input.d, 52529u) | countOneBits(u_input.d)), _wgslsmith_div_u32(~1u, ~firstTrailingBit(u_input.a.x))));
    return vec3<u32>(~abs(var_2.a.x) & (_wgslsmith_div_u32(var_2.a.x, u_input.c) << (~1u % 32u)), _wgslsmith_dot_vec2_u32(var_2.a, ~vec2<u32>(0u, u_input.a.x)) >> (~(~0u) % 32u), ~_wgslsmith_mult_u32(var_2.b, _wgslsmith_mult_u32(var_2.a.x, u_input.a.x & 1u)));
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: vec3<u32>, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = Struct_5(Struct_3(4294967295u, abs(50546u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-322f, 1752f, 1000f, 112f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1287f, -1584f, -319f, 1540f) - vec4<f32>(-993f, 1602f, -1175f, 1185f)))), Struct_1(min(~vec2<u32>(arg_3.x, arg_2.x), vec2<u32>(4294967295u, arg_3.x)), 1u)), Struct_1(u_input.a, u_input.d));
    var var_1 = func_2(min(-select(vec3<i32>(1i, 0i, 2147483647i), vec3<i32>(0i, 2147483647i, -1i), false), arg_0.yyz) ^ reverseBits(vec3<i32>(u_input.b, arg_0.x, i32(-1i) * -1504i)), func_2(arg_0.zzw, func_2(arg_0.xwx, var_0.a.d)));
    let var_2 = Struct_5(var_0.a, func_2(vec3<i32>(_wgslsmith_div_i32(-22324i, u_input.b) >> (var_0.a.d.a.x % 32u), -u_input.b << (0u % 32u), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.b), vec2<i32>(2147483647i, 2147483647i))), Struct_1(var_0.a.d.a, u_input.d)));
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~reverseBits(arg_2.x), var_1.a.x) >> (~(~(~arg_2)) % vec3<u32>(32u)), ~(~arg_3) >> (~arg_3 % vec3<u32>(32u)), arg_3);
    let var_4 = arg_0.x;
    return var_0.a;
}

fn func_6(arg_0: Struct_5) -> Struct_3 {
    var var_0 = ~_wgslsmith_div_u32(u_input.c, ~1u);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.c.x)), -1676f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-202f + -815f), arg_0.a.c.x))), arg_0.a.c);
    var_0 = func_4(Struct_2(func_5(~vec4<i32>(u_input.b, 17254i, 1i, 1i), 0u, _wgslsmith_div_vec3_u32(vec3<u32>(28081u, 0u, u_input.d) & vec3<u32>(u_input.d, u_input.c, u_input.a.x), vec3<u32>(108268u, arg_0.b.b, arg_0.b.b)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, 29592u, 4294967295u), vec3<u32>(u_input.c, u_input.d, arg_0.b.b))).d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-500f * _wgslsmith_f_op_f32(f32(-1f) * -1065f)), 568f)), Struct_1(vec2<u32>(~u_input.d, arg_0.a.b >> (arg_0.a.d.b % 32u)), u_input.d), func_2(-vec3<i32>(-6163i, 1i, -21411i), func_2(vec3<i32>(u_input.b, 55i, 508i) & vec3<i32>(u_input.b, 4597i, u_input.b), func_5(vec4<i32>(u_input.b, 0i, u_input.b, u_input.b), u_input.d, vec3<u32>(4294967295u, 1u, 31277u), vec3<u32>(13155u, arg_0.b.a.x, u_input.c)).d)), ~(~func_2(vec3<i32>(30488i, u_input.b, 1i), Struct_1(vec2<u32>(11901u, arg_0.a.a), arg_0.a.a)).a)), -537f, true);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), func_5(vec4<i32>(abs(_wgslsmith_add_i32(62277i, u_input.b)), u_input.b, u_input.b, -(~(-7877i))), func_4(Struct_2(Struct_1(vec2<u32>(u_input.d, 76002u), 0u), _wgslsmith_f_op_f32(-arg_0.a.c.x), arg_0.b, Struct_1(arg_0.a.d.a, 36363u), _wgslsmith_div_vec2_u32(u_input.a, u_input.a)), _wgslsmith_f_op_f32(-func_5(vec4<i32>(1i, 12557i, 0i, u_input.b), 8819u, vec3<u32>(36359u, 4294967295u, 4294967295u), vec3<u32>(0u, arg_0.b.a.x, 45292u)).c.x), global2[_wgslsmith_index_u32(~29032u, 8u)]), countOneBits(func_1(-27176i)), ~countOneBits(vec3<u32>(arg_0.b.a.x, arg_0.a.b, u_input.c))).c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1009f)) + var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, arg_0.a.c.x) - var_1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1128f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1148f))));
    let var_3 = 106416u;
    return Struct_3(0u, ~var_3, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 * vec4<f32>(770f, 499f, -784f, -1000f))))), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, firstTrailingBit(-_wgslsmith_sub_i32(13098i, 1i)), abs(firstTrailingBit(_wgslsmith_mod_i32(u_input.b, u_input.b))), ~_wgslsmith_clamp_i32(u_input.b, -u_input.b, _wgslsmith_mult_i32(0i, u_input.b))), abs(-vec4<i32>(~(-2147483647i), ~u_input.b, _wgslsmith_sub_i32(1i, u_input.b), u_input.b)));
    var var_1 = firstTrailingBit(u_input.d);
    let var_2 = Struct_4(func_6(Struct_5(func_5(firstLeadingBit(vec4<i32>(-2147483647i, 12990i, 6642i, 1077i)), 1u, select(vec3<u32>(0u, u_input.d, u_input.a.x), vec3<u32>(27368u, 4294967295u, u_input.c), false), func_1(u_input.b)), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.d), vec2<u32>(u_input.d, u_input.a.x)), abs(11844u)))), Struct_2(Struct_1(~vec2<u32>(38608u, u_input.d), ~min(u_input.c, u_input.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(512f - -1068f) + _wgslsmith_f_op_f32(trunc(145f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-944f)) - func_5(vec4<i32>(-5005i, 1i, 34731i, 0i), 4294967295u, vec3<u32>(0u, 31146u, 38220u), vec3<u32>(u_input.a.x, 0u, u_input.a.x)).c.x)), func_2(select(_wgslsmith_add_vec3_i32(var_0.www, var_0.wxx), var_0.xyw, select(vec3<bool>(global2[_wgslsmith_index_u32(51919u, 8u)], true, true), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d, 8u)], false, false), true)), func_2(firstTrailingBit(var_0.wwz), Struct_1(vec2<u32>(27081u, u_input.a.x), u_input.d))), Struct_1(func_6(Struct_5(Struct_3(u_input.d, 4294967295u, vec4<f32>(281f, 1320f, 924f, 308f), Struct_1(vec2<u32>(0u, u_input.c), u_input.d)), Struct_1(u_input.a, 46888u))).d.a, 1u), abs(u_input.a)), Struct_3(func_3(vec3<u32>(~u_input.d, min(u_input.d, u_input.a.x), 46548u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1216f))), _wgslsmith_div_f32(-449f, _wgslsmith_f_op_f32(980f + -554f)), Struct_1(firstTrailingBit(u_input.a), u_input.a.x)), 1u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(401f, 492f, -1408f, 391f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1272f, 1704f, -614f, 532f))), (2147483647i ^ var_0.x) < -var_0.x)), Struct_1(~func_6(Struct_5(Struct_3(u_input.a.x, 0u, vec4<f32>(-229f, -217f, -1065f, -789f), Struct_1(vec2<u32>(u_input.c, u_input.d), 1u)), Struct_1(u_input.a, 46691u))).d.a, ~1u)), vec3<i32>(var_0.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, u_input.b), ~_wgslsmith_sub_i32(0i, u_input.b), -2147483647i), select(u_input.b, _wgslsmith_mult_i32(firstTrailingBit(1i), firstLeadingBit(0i)), all(select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(17782u, 8u)], true), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(16449u, 8u)]), global2[_wgslsmith_index_u32(65623u, 8u)])))));
    let var_3 = _wgslsmith_mult_i32(i32(-1i) * -14870i, -(26774i | u_input.b));
    var_1 = var_2.b.e.x;
    global2 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~max(~vec3<u32>(4294967295u, 7242u, 4294967295u) >> ((vec3<u32>(u_input.a.x, var_2.a.b, var_2.a.d.b) << (vec3<u32>(u_input.d, u_input.c, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b.d.b, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 51982u, 12962u)) >> ((vec3<u32>(var_2.c.a, var_2.c.d.b, 0u) << (vec3<u32>(14371u, u_input.c, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

