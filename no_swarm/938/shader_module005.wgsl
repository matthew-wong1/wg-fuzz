struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: array<Struct_2, 23>;

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(true, Struct_1(-755f, vec2<f32>(-1178f, 1244f), vec4<i32>(-17641i, 41250i, 11205i, -45047i), i32(-2147483648), vec4<bool>(true, false, true, false))), Struct_2(true, Struct_1(-1941f, vec2<f32>(-1836f, 1231f), vec4<i32>(-12364i, 28000i, -5852i, -34263i), -6685i, vec4<bool>(false, true, false, false))), Struct_2(true, Struct_1(562f, vec2<f32>(621f, 349f), vec4<i32>(-5205i, 2147483647i, 1i, 116785i), 9947i, vec4<bool>(true, false, true, false))), Struct_2(true, Struct_1(-249f, vec2<f32>(1000f, -166f), vec4<i32>(1i, -1i, -44245i, 41724i), 1i, vec4<bool>(false, false, false, false))), Struct_2(false, Struct_1(850f, vec2<f32>(425f, -245f), vec4<i32>(84107i, 21496i, 1i, 21200i), i32(-2147483648), vec4<bool>(false, true, true, false))), Struct_2(false, Struct_1(-474f, vec2<f32>(-2475f, 2566f), vec4<i32>(0i, 1i, -1i, -15386i), 2147483647i, vec4<bool>(false, true, true, false))), Struct_2(true, Struct_1(-1107f, vec2<f32>(819f, -1050f), vec4<i32>(i32(-2147483648), 0i, -1i, 0i), 33858i, vec4<bool>(true, true, false, true))), Struct_2(false, Struct_1(-123f, vec2<f32>(-1000f, 1671f), vec4<i32>(-1i, 17751i, 1i, 1i), 15738i, vec4<bool>(false, true, false, true))), Struct_2(false, Struct_1(-351f, vec2<f32>(1000f, -485f), vec4<i32>(1i, -47266i, -3390i, -24397i), -1i, vec4<bool>(true, true, true, false))), Struct_2(true, Struct_1(-530f, vec2<f32>(886f, 1942f), vec4<i32>(1i, -11355i, i32(-2147483648), -1i), -47687i, vec4<bool>(false, true, true, true))), Struct_2(true, Struct_1(-1627f, vec2<f32>(-1316f, -808f), vec4<i32>(-1i, 1i, -35204i, i32(-2147483648)), -10864i, vec4<bool>(true, false, true, false))), Struct_2(true, Struct_1(780f, vec2<f32>(-1650f, 852f), vec4<i32>(43993i, -19996i, -3634i, 1i), 1i, vec4<bool>(false, false, false, false))), Struct_2(true, Struct_1(-500f, vec2<f32>(516f, 939f), vec4<i32>(-1i, -1i, 1i, 17086i), 2147483647i, vec4<bool>(true, true, true, false))), Struct_2(true, Struct_1(1629f, vec2<f32>(584f, -1000f), vec4<i32>(-31820i, -46507i, 0i, 15171i), 1i, vec4<bool>(true, false, true, true))), Struct_2(false, Struct_1(1124f, vec2<f32>(1321f, 958f), vec4<i32>(1i, 0i, 43327i, 1i), -3070i, vec4<bool>(true, false, true, false))), Struct_2(true, Struct_1(252f, vec2<f32>(692f, 404f), vec4<i32>(i32(-2147483648), 1i, 1239i, 5739i), 1i, vec4<bool>(false, true, false, false))), Struct_2(false, Struct_1(-728f, vec2<f32>(-309f, 1801f), vec4<i32>(0i, -1i, -1i, -1i), i32(-2147483648), vec4<bool>(true, false, false, true))), Struct_2(true, Struct_1(-656f, vec2<f32>(-829f, 455f), vec4<i32>(14323i, -20028i, 2147483647i, -46891i), 2147483647i, vec4<bool>(false, true, false, true))), Struct_2(true, Struct_1(349f, vec2<f32>(424f, 1720f), vec4<i32>(0i, i32(-2147483648), 36655i, 0i), i32(-2147483648), vec4<bool>(false, true, true, true))), Struct_2(true, Struct_1(515f, vec2<f32>(203f, -120f), vec4<i32>(2504i, 12692i, -25994i, -1i), -3411i, vec4<bool>(false, true, true, true))), Struct_2(false, Struct_1(766f, vec2<f32>(1183f, 1000f), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -17804i), -1i, vec4<bool>(true, true, false, true))), Struct_2(false, Struct_1(793f, vec2<f32>(-529f, -1140f), vec4<i32>(1097i, 0i, 2147483647i, 0i), -1i, vec4<bool>(true, false, false, true))), Struct_2(false, Struct_1(-1195f, vec2<f32>(-674f, 1196f), vec4<i32>(2147483647i, -36666i, 4904i, 12295i), -40017i, vec4<bool>(false, true, true, true))), Struct_2(false, Struct_1(-1000f, vec2<f32>(-1214f, -1631f), vec4<i32>(1i, 29059i, 3944i, -1i), 2147483647i, vec4<bool>(true, false, true, false))), Struct_2(false, Struct_1(773f, vec2<f32>(1000f, -605f), vec4<i32>(-96981i, -1i, 0i, -43491i), i32(-2147483648), vec4<bool>(true, false, false, false))), Struct_2(false, Struct_1(1971f, vec2<f32>(-1000f, 756f), vec4<i32>(-62477i, 8238i, -24954i, -1i), 51333i, vec4<bool>(true, false, true, false))), Struct_2(true, Struct_1(-828f, vec2<f32>(-2259f, 1000f), vec4<i32>(1i, 0i, -10196i, i32(-2147483648)), 10290i, vec4<bool>(true, false, false, true))), Struct_2(true, Struct_1(-1181f, vec2<f32>(-1516f, 1459f), vec4<i32>(25527i, 12508i, -15061i, -13604i), i32(-2147483648), vec4<bool>(true, true, false, false))));

var<private> global4: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(false, Struct_1(840f, vec2<f32>(726f, -375f), vec4<i32>(1i, -18389i, 42229i, -1i), 0i, vec4<bool>(true, true, false, true))), Struct_2(true, Struct_1(1000f, vec2<f32>(227f, 547f), vec4<i32>(-1i, -57886i, -24144i, 0i), 2147483647i, vec4<bool>(false, false, true, true))), Struct_2(false, Struct_1(-895f, vec2<f32>(-1914f, -105f), vec4<i32>(-1i, 16404i, -1i, 1i), 40704i, vec4<bool>(true, true, false, false))), Struct_2(false, Struct_1(-241f, vec2<f32>(-2016f, -1000f), vec4<i32>(-29037i, -32080i, i32(-2147483648), 0i), 19684i, vec4<bool>(false, true, true, true))), Struct_2(false, Struct_1(429f, vec2<f32>(-168f, 1113f), vec4<i32>(-54783i, i32(-2147483648), -7948i, i32(-2147483648)), 14671i, vec4<bool>(true, true, false, true))), Struct_2(false, Struct_1(-110f, vec2<f32>(1000f, 914f), vec4<i32>(1i, 37309i, -1i, 27588i), 0i, vec4<bool>(true, false, false, false))), Struct_2(true, Struct_1(-267f, vec2<f32>(-1464f, 1125f), vec4<i32>(962i, -37926i, -20958i, -1i), -1i, vec4<bool>(true, false, true, false))), Struct_2(true, Struct_1(602f, vec2<f32>(443f, 1879f), vec4<i32>(-19682i, -2850i, i32(-2147483648), -29223i), 1i, vec4<bool>(false, false, false, false))), Struct_2(false, Struct_1(-619f, vec2<f32>(-597f, -1337f), vec4<i32>(8010i, 18134i, -16516i, -44124i), 25989i, vec4<bool>(false, false, false, false))), Struct_2(false, Struct_1(-549f, vec2<f32>(-1619f, -537f), vec4<i32>(9563i, 48087i, i32(-2147483648), i32(-2147483648)), -14307i, vec4<bool>(false, true, true, true))), Struct_2(true, Struct_1(715f, vec2<f32>(299f, -1613f), vec4<i32>(2027i, -58090i, 16789i, 2147483647i), 1i, vec4<bool>(true, false, true, true))), Struct_2(true, Struct_1(2388f, vec2<f32>(949f, 997f), vec4<i32>(1i, 0i, 3360i, 15290i), 41091i, vec4<bool>(false, true, true, false))), Struct_2(true, Struct_1(-1358f, vec2<f32>(807f, 182f), vec4<i32>(-5131i, -1i, i32(-2147483648), -13167i), -10340i, vec4<bool>(true, false, true, false))), Struct_2(false, Struct_1(1000f, vec2<f32>(-748f, -906f), vec4<i32>(1i, 9850i, 0i, -54952i), -1i, vec4<bool>(true, false, false, true))), Struct_2(false, Struct_1(1000f, vec2<f32>(926f, 1681f), vec4<i32>(-1i, 16090i, 17608i, -13223i), 0i, vec4<bool>(false, true, true, false))), Struct_2(true, Struct_1(-1121f, vec2<f32>(566f, 1450f), vec4<i32>(0i, -1i, i32(-2147483648), 19172i), -36137i, vec4<bool>(true, true, true, true))), Struct_2(true, Struct_1(556f, vec2<f32>(1322f, 595f), vec4<i32>(748i, 0i, 0i, 24046i), 2147483647i, vec4<bool>(false, true, true, true))), Struct_2(false, Struct_1(485f, vec2<f32>(475f, -573f), vec4<i32>(-45529i, -10599i, 26065i, 74533i), -26583i, vec4<bool>(true, true, false, false))), Struct_2(true, Struct_1(666f, vec2<f32>(172f, -493f), vec4<i32>(-1i, -16714i, 2147483647i, 20831i), -47465i, vec4<bool>(true, false, true, false))), Struct_2(false, Struct_1(369f, vec2<f32>(-1246f, 582f), vec4<i32>(1i, 22554i, 17000i, 1i), 9150i, vec4<bool>(true, false, false, false))), Struct_2(true, Struct_1(1000f, vec2<f32>(874f, -597f), vec4<i32>(18309i, 12510i, -65049i, 2147483647i), 2147483647i, vec4<bool>(true, true, true, true))), Struct_2(false, Struct_1(1573f, vec2<f32>(1629f, -734f), vec4<i32>(52118i, 1i, i32(-2147483648), 2147483647i), 51631i, vec4<bool>(true, false, true, true))), Struct_2(true, Struct_1(1002f, vec2<f32>(-549f, 522f), vec4<i32>(1i, 0i, 0i, -53037i), i32(-2147483648), vec4<bool>(false, true, false, true))), Struct_2(true, Struct_1(-846f, vec2<f32>(996f, -1343f), vec4<i32>(2147483647i, -14208i, 1i, 0i), 1i, vec4<bool>(true, false, false, true))), Struct_2(false, Struct_1(-2585f, vec2<f32>(410f, 578f), vec4<i32>(1i, 41523i, -1i, -11784i), -1i, vec4<bool>(false, true, false, true))), Struct_2(true, Struct_1(1268f, vec2<f32>(2214f, 125f), vec4<i32>(0i, 2147483647i, 1i, 0i), -1i, vec4<bool>(true, false, true, true))), Struct_2(true, Struct_1(-828f, vec2<f32>(-847f, -321f), vec4<i32>(28378i, 4669i, i32(-2147483648), 8757i), 38194i, vec4<bool>(true, false, true, false))), Struct_2(false, Struct_1(-725f, vec2<f32>(-1000f, 1256f), vec4<i32>(-1i, -22889i, i32(-2147483648), 2147483647i), -1832i, vec4<bool>(false, false, false, false))), Struct_2(false, Struct_1(-1557f, vec2<f32>(247f, -1488f), vec4<i32>(1i, 0i, 0i, i32(-2147483648)), i32(-2147483648), vec4<bool>(true, true, false, false))), Struct_2(true, Struct_1(-174f, vec2<f32>(-1772f, 1000f), vec4<i32>(0i, 29379i, 23108i, 17640i), 1231i, vec4<bool>(false, false, true, false))), Struct_2(true, Struct_1(-170f, vec2<f32>(1758f, 532f), vec4<i32>(i32(-2147483648), 2147483647i, -5483i, i32(-2147483648)), -1i, vec4<bool>(false, false, true, true))), Struct_2(false, Struct_1(-1411f, vec2<f32>(1604f, 528f), vec4<i32>(20903i, 1i, 1i, -1i), i32(-2147483648), vec4<bool>(true, true, true, true))));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: u32) -> i32 {
    let var_0 = ~arg_1.c;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_1.a.zw)), vec2<f32>(arg_1.a.x, 295f))))));
    global3 = array<Struct_2, 28>();
    var var_2 = max(~(~arg_1.d.d), _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-21508i, 33827i, 16946i, arg_1.d.d), vec4<i32>(-56027i, arg_0.a.b.c.x, arg_0.a.b.c.x, arg_0.c)), _wgslsmith_add_vec4_i32(arg_0.a.b.c, arg_1.d.c))) << (var_0.x % 32u));
    var var_3 = Struct_1(var_1.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1 * _wgslsmith_f_op_vec2_f32(-var_1)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(601f, arg_0.b.a)))))) - vec2<f32>(310f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1668f, arg_1.d.b.x)))))), vec4<i32>(min(arg_0.b.c.x >> (0u % 32u), -4946i), ~arg_0.a.b.d, 33293i, -45767i) ^ abs(arg_0.b.c & -vec4<i32>(-29669i, 0i, arg_0.c, arg_0.a.b.c.x)), u_input.c.x, arg_0.a.b.e);
    return ~(-select(2147483647i, _wgslsmith_mod_i32(~arg_0.c, arg_1.d.c.x), all(select(vec3<bool>(global2.x, var_3.e.x, var_3.e.x), global2.wzw, vec3<bool>(true, false, false)))));
}

fn func_2() -> bool {
    let var_0 = vec3<bool>(true, !(!(_wgslsmith_div_i32(1i, u_input.c.x) > func_3(Struct_4(Struct_2(false, Struct_1(-108f, vec2<f32>(-437f, 536f), vec4<i32>(2147483647i, 2147483647i, u_input.b.x, u_input.c.x), u_input.a.x, vec4<bool>(global2.x, global2.x, true, true))), Struct_1(-773f, vec2<f32>(-142f, -960f), vec4<i32>(u_input.b.x, 0i, u_input.c.x, 0i), u_input.c.x, vec4<bool>(global2.x, true, true, false)), 39376i), Struct_3(vec4<f32>(837f, -2092f, -834f, 955f), true, vec2<u32>(11932u, 21915u), Struct_1(265f, vec2<f32>(746f, -1445f), vec4<i32>(0i, u_input.b.x, -9000i, 18625i), 1i, vec4<bool>(true, global2.x, false, global2.x))), 26283u))), any(select(!(!vec4<bool>(global2.x, false, global2.x, false)), vec4<bool>(global2.x && global2.x, true, true, all(vec3<bool>(false, true, global2.x))), global2.x)));
    let var_1 = Struct_4(global1[_wgslsmith_index_u32(61984u, 23u)], Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(917f * _wgslsmith_f_op_f32(-739f - -691f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-463f * -349f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-881f, -2002f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(866f, 1000f), vec2<f32>(1498f, -973f)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(181f, -561f))), countOneBits(vec4<i32>(30469i, 1i, -1i, u_input.c.x)) >> (vec4<u32>(4294967295u, reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 2596u, 0u, 38098u), vec4<u32>(81498u, 1u, 0u, 55393u)), 1u) % vec4<u32>(32u)), 1i, vec4<bool>(global2.x, false || all(vec2<bool>(true, false)), any(vec4<bool>(global2.x, var_0.x, global2.x, false)), u_input.b.x >= (u_input.b.x >> (1u % 32u)))), 4383i);
    let var_2 = var_1;
    global3 = array<Struct_2, 28>();
    let var_3 = Struct_4(Struct_2(true, Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.b.b.x, var_1.a.b.b.x)), var_1.b.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(421f, var_2.b.a)), vec4<i32>(abs(4172i), var_2.c | 0i, max(-2147483647i, var_2.a.b.c.x), 0i), u_input.c.x, select(!var_1.b.e, vec4<bool>(false, false, var_1.b.e.x, var_0.x), vec4<bool>(true, false, var_0.x, false)))), var_1.b, max(u_input.a.x, var_2.c));
    return var_0.x;
}

fn func_4(arg_0: vec2<bool>) -> u32 {
    global2 = !vec4<bool>(arg_0.x, any(!select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, global2.x), vec4<bool>(arg_0.x, true, global2.x, global2.x), false)), any(!vec2<bool>(false, global2.x)), arg_0.x);
    var var_0 = Struct_4(Struct_2(all(!select(global2.xxx, global2.yzw, true)), Struct_1(_wgslsmith_f_op_f32(ceil(-256f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(619f, -1258f)), vec4<i32>(firstTrailingBit(u_input.a.x), -1i, -u_input.c.x, ~(-58022i)), u_input.c.x, !select(vec4<bool>(false, global2.x, arg_0.x, false), vec4<bool>(false, true, arg_0.x, false), vec4<bool>(true, arg_0.x, global2.x, false)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-350f, -593f)) + -789f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(417f, 802f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1516f, 1367f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1258f, 633f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-295f, 1153f) * vec2<f32>(316f, -347f))), global2.x && true)), _wgslsmith_div_vec4_i32(select(vec4<i32>(-20268i, 1i, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.a.x, u_input.b.x, 18011i, u_input.b.x), ~vec4<i32>(u_input.c.x, u_input.b.x, -7967i, u_input.b.x), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), global2.x)), abs(vec4<i32>(u_input.a.x, u_input.b.x, 18012i, 25764i) >> (vec4<u32>(64842u, 125785u, 0u, 42296u) % vec4<u32>(32u)))), -45495i, vec4<bool>(false, true, true, !arg_0.x)), u_input.c.x);
    let var_1 = var_0.b;
    var var_2 = vec2<bool>(false, false);
    var var_3 = var_0.a;
    return select(select(8527u, abs(abs(1u)), all(var_1.e)), 22951u, !(!func_2()));
}

fn func_1() -> vec4<u32> {
    let var_0 = max(-_wgslsmith_clamp_i32(3745i, _wgslsmith_div_i32(0i, ~u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, -1i, u_input.c.x)))), u_input.a.x);
    var var_1 = vec4<f32>(-1322f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(463f)) - -963f))), 220f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -844f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(143f, -587f)) * -1060f), 1064f)), 134f);
    var var_2 = func_4(select(vec2<bool>(func_2(), !global2.x), vec2<bool>(false, true), vec2<bool>(true, !select(global2.x, global2.x, global2.x))));
    global4 = array<Struct_2, 32>();
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-321f, 806f, var_1.x, 578f))))))), any(select(select(!vec2<bool>(true, global2.x), vec2<bool>(global2.x, false), global2.xy), select(global2.zy, vec2<bool>(global2.x, global2.x), false), global2.yw)), ~vec2<u32>(1u, 1u), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * -2017f), _wgslsmith_f_op_f32(abs(var_1.x))))), _wgslsmith_f_op_vec2_f32(var_1.yz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xz * var_1.yy))), vec4<i32>(u_input.a.x, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, u_input.c.x), vec4<i32>(1i, -32345i, var_0, var_0)), firstLeadingBit(countOneBits(var_0)), var_0), ~(~33529i), !(!select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, false)))));
    return firstLeadingBit(~_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, var_3.c.x, 37759u, 52838u)), select(vec4<u32>(1431u, var_3.c.x, 40549u, var_3.c.x), vec4<u32>(21866u, 49838u, 47636u, 29163u), true)));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>, arg_2: i32) -> Struct_3 {
    var var_0 = !vec2<bool>(global2.x, any(vec2<bool>(all(vec2<bool>(global2.x, false)), global2.x)));
    global3 = array<Struct_2, 28>();
    var var_1 = true;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -441f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + arg_0))))));
    let var_3 = global1[_wgslsmith_index_u32(~(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(30098u, 59464u, arg_1.x, arg_1.x), arg_1)))), 23u)];
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(714f - -1572f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(646f)), _wgslsmith_f_op_f32(min(-1459f, -1212f)), !var_0.x)), 293f)), all(vec4<bool>(var_3.b.e.x, 17608i > u_input.c.x, var_3.b.c.x != var_3.b.c.x, global2.x)) || var_0.x, ~vec2<u32>(func_4(global2.xx), _wgslsmith_mod_u32(60892u ^ arg_1.x, 54281u)), var_3.b);
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - 1389f)))))), vec4<u32>(100126u, 1u ^ min(_wgslsmith_sub_u32(arg_1.c.x, 1u), _wgslsmith_add_u32(arg_1.c.x, arg_1.c.x)), (arg_1.c.x & _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, 78113u, 84111u, 91245u), vec4<u32>(25612u, 0u, 1u, arg_1.c.x))) | 1112u, countOneBits(arg_1.c.x)), -2147483647i);
    let var_1 = abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(2147483647i, ~u_input.b.x) & -1i, ~_wgslsmith_sub_i32(-6904i, var_0.d.c.x) >> (_wgslsmith_mult_u32(var_0.c.x, _wgslsmith_sub_u32(28929u, 1u)) % 32u)));
    global0 = array<vec3<i32>, 30>();
    global1 = array<Struct_2, 23>();
    global3 = array<Struct_2, 28>();
    return func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.b.x * 1372f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.d.b.x))) * 517f)), ~abs(~vec4<u32>(45018u, 39383u, 21336u, 6806u)), -(i32(-1i) * -(1i | arg_0))).d;
}

fn func_7(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = true || any(global2.wx);
    global0 = array<vec3<i32>, 30>();
    let var_1 = Struct_4(Struct_2(!func_2(), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_2.b.x, 290f))), _wgslsmith_f_op_vec2_f32(-arg_3.wy), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-2147483647i, -12103i, arg_1, u_input.c.x)), -arg_2.c), arg_2.c.x, vec4<bool>(true, true, false, func_2()))), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.x + -484f), -334f, true))), max(~(vec4<u32>(17865u, 11927u, arg_0, 45091u) ^ vec4<u32>(arg_0, arg_0, 0u, 42976u)), ~min(vec4<u32>(arg_0, arg_0, 58830u, arg_0), vec4<u32>(9079u, 20451u, arg_0, 0u))), 15279i).d, 64201i);
    global4 = array<Struct_2, 32>();
    let var_2 = min(~select(~(vec4<u32>(arg_0, 4294967295u, 5868u, arg_0) << (vec4<u32>(arg_0, arg_0, 0u, arg_0) % vec4<u32>(32u))), ~func_1(), arg_2.e), reverseBits(~vec4<u32>(arg_0 >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(12221u, arg_0), vec2<u32>(1u, 1u)), _wgslsmith_sub_u32(arg_0, arg_0), ~arg_0)));
    return Struct_4(Struct_2(true, func_6(arg_1, Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-671f, arg_3.x, 1000f, 887f))), arg_0 == var_2.x, ~vec2<u32>(72135u, 0u), var_1.b))), Struct_1(_wgslsmith_f_op_f32(abs(1478f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(278f, 1306f), vec2<f32>(var_1.a.b.b.x, arg_2.a)), func_6(22136i, Struct_3(arg_3, var_1.a.b.e.x, var_2.zw, Struct_1(arg_2.b.x, vec2<f32>(var_1.a.b.a, var_1.a.b.b.x), var_1.b.c, 11399i, var_1.b.e))).b))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(arg_2.d, arg_2.c.x, -1i, u_input.a.x), arg_2.c), vec4<i32>(35734i, -19640i, abs(arg_1), _wgslsmith_sub_i32(u_input.c.x, arg_1))), min(-min(-1i, var_1.a.b.c.x), i32(-1i) * -2147483647i), !(!arg_2.e)), arg_2.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(_wgslsmith_sub_u32(15805u, 1u), 25236i | abs(u_input.b.x), func_6(-1i, func_5(-1046f, select(~vec4<u32>(2820u, 0u, 598u, 4294967295u), func_1(), global2.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, u_input.a.x, 2147483647i)), vec3<i32>(u_input.a.x, u_input.c.x, -20363i)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-150f, -1340f, func_6(_wgslsmith_dot_vec2_i32(u_input.a.xx, vec2<i32>(-3731i, -1i)), Struct_3(vec4<f32>(508f, 976f, -1176f, 1653f), global2.x, vec2<u32>(888u, 0u), Struct_1(-1092f, vec2<f32>(1279f, -808f), vec4<i32>(-1i, -2147483647i, u_input.a.x, 8156i), -32553i, vec4<bool>(global2.x, global2.x, global2.x, true)))).b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f + 466f)))));
    global3 = array<Struct_2, 28>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1022f, var_0.a.b.b.x, var_0.b.a, -1243f)))))), func_2(), func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_i32(-var_0.c, 34639i & var_0.c)).c, func_5(1552f, vec4<u32>(_wgslsmith_mod_u32(~4294967295u, 4294967295u), reverseBits(_wgslsmith_div_u32(4294967295u, 83841u)), _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, 4294967295u), 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 9793u, 26598u, 20019u))), max(~u_input.a.x, 0i)).d);
    global4 = array<Struct_2, 32>();
    var var_2 = Struct_4(Struct_2(func_7(~6345u << (max(70848u, var_1.c.x) % 32u), firstTrailingBit(var_0.a.b.c.x << (var_1.c.x % 32u)), var_0.b, _wgslsmith_f_op_vec4_f32(-var_1.a)).a.a, var_1.d), var_1.d, _wgslsmith_div_i32(2147483647i, 1i >> (~var_1.c.x % 32u)));
    let var_3 = func_6(func_5(func_6(~8555i ^ var_2.a.b.c.x, func_5(_wgslsmith_f_op_f32(var_0.b.b.x - 1054f), ~vec4<u32>(var_1.c.x, 1u, 2926u, var_1.c.x), var_1.d.c.x)).a, select(vec4<u32>(49342u, var_1.c.x, 1u, var_1.c.x), ~vec4<u32>(var_1.c.x, var_1.c.x, var_1.c.x, 4781u), var_0.a.b.e) << (firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, var_1.c.x, var_1.c.x), vec4<u32>(1u, 0u, 1u, 0u))) % vec4<u32>(32u)), ~var_2.c).d.d, Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a)) + _wgslsmith_f_op_vec4_f32(exp2(var_1.a))), true, _wgslsmith_clamp_vec2_u32(min(~var_1.c, min(var_1.c, vec2<u32>(81134u, 3944u))), ~(vec2<u32>(55061u, var_1.c.x) >> (var_1.c % vec2<u32>(32u))), var_1.c), Struct_1(-602f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1566f)), reverseBits(select(var_2.b.c, var_1.d.c, var_1.b)), 31400i, func_6(var_1.d.c.x, Struct_3(var_1.a, var_2.b.e.x, vec2<u32>(var_1.c.x, 35477u), Struct_1(var_2.b.a, vec2<f32>(var_0.a.b.b.x, var_0.a.b.a), vec4<i32>(var_0.a.b.d, -2147483647i, var_2.b.c.x, 57182i), 0i, vec4<bool>(var_1.b, false, var_2.a.b.e.x, var_0.a.a)))).e)));
    let var_4 = 756f;
    var var_5 = _wgslsmith_mod_vec4_u32(vec4<u32>(func_1().x, var_1.c.x, 44535u, func_1().x ^ var_1.c.x), ~min(vec4<u32>(var_1.c.x, _wgslsmith_sub_u32(118730u, 9800u), 1u, ~18818u), firstTrailingBit(vec4<u32>(4294967295u, 24483u, 9093u, 9370u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c, var_1.a);
}

