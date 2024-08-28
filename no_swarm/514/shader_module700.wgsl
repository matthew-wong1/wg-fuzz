struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(Struct_4(vec3<u32>(1u, 4294967295u, 51619u), vec4<bool>(true, true, true, true), Struct_2(vec2<u32>(0u, 59564u), 0u, vec3<i32>(1i, -4634i, 3908i), vec4<f32>(631f, 859f, 1074f, 1290f), Struct_1(vec4<u32>(116721u, 21417u, 1u, 0u), vec4<u32>(77274u, 26945u, 0u, 4294967295u), 10178i, vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 1u))), vec3<f32>(851f, -508f, -108f)), false, 32311u, vec4<i32>(45382i, 0i, -10135i, i32(-2147483648))), Struct_5(Struct_4(vec3<u32>(4294967295u, 1u, 0u), vec4<bool>(false, true, true, false), Struct_2(vec2<u32>(0u, 30546u), 10550u, vec3<i32>(-48113i, 1i, 0i), vec4<f32>(615f, 1300f, -1092f, 682f), Struct_1(vec4<u32>(132190u, 0u, 15941u, 1u), vec4<u32>(2706u, 1u, 1u, 4294967295u), -1i, vec4<bool>(true, false, false, false), vec2<u32>(4294967295u, 1u))), vec3<f32>(1000f, 652f, -1739f)), false, 10371u, vec4<i32>(-1i, 1i, 1i, -1i)), Struct_5(Struct_4(vec3<u32>(0u, 31589u, 42940u), vec4<bool>(false, false, true, false), Struct_2(vec2<u32>(27381u, 18083u), 0u, vec3<i32>(-1i, -6039i, 1i), vec4<f32>(693f, 2695f, -1000f, 1000f), Struct_1(vec4<u32>(3388u, 1u, 1u, 49436u), vec4<u32>(5335u, 4294967295u, 1u, 1u), i32(-2147483648), vec4<bool>(false, false, true, true), vec2<u32>(45683u, 63176u))), vec3<f32>(-1000f, -352f, 1299f)), true, 1u, vec4<i32>(-1905i, 52422i, 0i, -13574i)), Struct_5(Struct_4(vec3<u32>(44283u, 20600u, 0u), vec4<bool>(true, true, true, false), Struct_2(vec2<u32>(17772u, 4294967295u), 4294967295u, vec3<i32>(-16700i, -3147i, 1i), vec4<f32>(709f, 820f, -481f, -345f), Struct_1(vec4<u32>(33534u, 0u, 0u, 4294967295u), vec4<u32>(0u, 77452u, 4294967295u, 4294967295u), -1i, vec4<bool>(true, false, false, false), vec2<u32>(20948u, 4294967295u))), vec3<f32>(1296f, 437f, -884f)), false, 42752u, vec4<i32>(-1i, 1i, -55066i, 2147483647i)), Struct_5(Struct_4(vec3<u32>(1u, 41491u, 4294967295u), vec4<bool>(false, false, true, false), Struct_2(vec2<u32>(0u, 87876u), 4294967295u, vec3<i32>(-1i, 0i, 11631i), vec4<f32>(369f, 1171f, 1000f, 1069f), Struct_1(vec4<u32>(0u, 87955u, 0u, 7927u), vec4<u32>(10680u, 85338u, 1u, 0u), 4160i, vec4<bool>(false, false, true, true), vec2<u32>(35156u, 4294967295u))), vec3<f32>(-650f, -1788f, 569f)), false, 1u, vec4<i32>(-18498i, 16792i, -7188i, 6371i)), Struct_5(Struct_4(vec3<u32>(22010u, 4294967295u, 1u), vec4<bool>(false, false, true, false), Struct_2(vec2<u32>(4294967295u, 1u), 52183u, vec3<i32>(-42768i, -32424i, i32(-2147483648)), vec4<f32>(1313f, 368f, -387f, 1849f), Struct_1(vec4<u32>(31426u, 0u, 0u, 4294967295u), vec4<u32>(40042u, 4294967295u, 12912u, 39468u), -20890i, vec4<bool>(false, true, true, true), vec2<u32>(41844u, 0u))), vec3<f32>(2123f, 224f, -761f)), false, 1u, vec4<i32>(18740i, 0i, -44063i, 2147483647i)));

var<private> global1: Struct_4;

var<private> global2: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec3<u32>(0u, 1855u, 53462u), vec4<bool>(true, false, true, true), Struct_2(vec2<u32>(0u, 21640u), 17449u, vec3<i32>(-18541i, -1i, i32(-2147483648)), vec4<f32>(1557f, 564f, -648f, 925f), Struct_1(vec4<u32>(3121u, 51891u, 6872u, 0u), vec4<u32>(52237u, 1u, 4294967295u, 83381u), 1i, vec4<bool>(false, false, false, true), vec2<u32>(0u, 0u))), vec3<f32>(1269f, -682f, 1246f)), Struct_4(vec3<u32>(0u, 4294967295u, 52577u), vec4<bool>(false, true, false, false), Struct_2(vec2<u32>(0u, 1u), 32390u, vec3<i32>(-15517i, -16573i, 1i), vec4<f32>(372f, -807f, 304f, -961f), Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 75537u), vec4<u32>(1u, 0u, 0u, 53493u), 3808i, vec4<bool>(true, true, false, false), vec2<u32>(77898u, 1u))), vec3<f32>(-741f, -630f, 515f)), Struct_4(vec3<u32>(0u, 33710u, 1u), vec4<bool>(true, true, false, true), Struct_2(vec2<u32>(2555u, 1u), 1u, vec3<i32>(2147483647i, 44627i, -10889i), vec4<f32>(-1000f, -169f, -460f, -944f), Struct_1(vec4<u32>(7192u, 0u, 1u, 58046u), vec4<u32>(23475u, 4294967295u, 58902u, 0u), 1555i, vec4<bool>(false, false, true, true), vec2<u32>(1u, 12075u))), vec3<f32>(486f, 1180f, 620f)), Struct_4(vec3<u32>(0u, 23785u, 4294967295u), vec4<bool>(false, false, false, true), Struct_2(vec2<u32>(23626u, 37448u), 1u, vec3<i32>(i32(-2147483648), 2147483647i, -30486i), vec4<f32>(-1617f, -180f, 1602f, -1598f), Struct_1(vec4<u32>(70038u, 60958u, 0u, 9314u), vec4<u32>(25099u, 0u, 57820u, 38701u), -11436i, vec4<bool>(false, true, false, false), vec2<u32>(85087u, 37513u))), vec3<f32>(1176f, 578f, -977f)), Struct_4(vec3<u32>(0u, 0u, 4294967295u), vec4<bool>(false, true, false, true), Struct_2(vec2<u32>(0u, 10025u), 0u, vec3<i32>(-27559i, 0i, -12636i), vec4<f32>(249f, 796f, -431f, 234f), Struct_1(vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(1u, 5962u, 90340u, 19833u), 654i, vec4<bool>(true, true, true, false), vec2<u32>(24192u, 26568u))), vec3<f32>(-1173f, 623f, -1509f)), Struct_4(vec3<u32>(16531u, 39335u, 60347u), vec4<bool>(false, false, false, false), Struct_2(vec2<u32>(49658u, 4294967295u), 35001u, vec3<i32>(2147483647i, 2147483647i, -39984i), vec4<f32>(2278f, 1475f, 1301f, 1000f), Struct_1(vec4<u32>(0u, 4294967295u, 15364u, 37009u), vec4<u32>(24260u, 72725u, 167u, 0u), i32(-2147483648), vec4<bool>(true, true, false, true), vec2<u32>(69005u, 4294967295u))), vec3<f32>(-1000f, 995f, 624f)), Struct_4(vec3<u32>(50989u, 1u, 1u), vec4<bool>(false, false, true, true), Struct_2(vec2<u32>(1u, 4294967295u), 16371u, vec3<i32>(43504i, i32(-2147483648), 2147483647i), vec4<f32>(645f, -105f, -321f, 1000f), Struct_1(vec4<u32>(0u, 0u, 7857u, 50177u), vec4<u32>(37654u, 1u, 11434u, 0u), 1i, vec4<bool>(true, false, true, true), vec2<u32>(48795u, 4294967295u))), vec3<f32>(902f, -213f, 1162f)), Struct_4(vec3<u32>(4069u, 0u, 4294967295u), vec4<bool>(false, false, false, true), Struct_2(vec2<u32>(18160u, 15018u), 0u, vec3<i32>(1i, 8564i, 0i), vec4<f32>(964f, 166f, 570f, 110f), Struct_1(vec4<u32>(0u, 1u, 29513u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 72887u), 23024i, vec4<bool>(false, true, false, false), vec2<u32>(37879u, 60512u))), vec3<f32>(491f, 1442f, -787f)), Struct_4(vec3<u32>(0u, 1u, 1u), vec4<bool>(false, true, false, true), Struct_2(vec2<u32>(45320u, 3326u), 4294967295u, vec3<i32>(1i, -28686i, -19494i), vec4<f32>(-1444f, 150f, 2003f, 316f), Struct_1(vec4<u32>(1u, 1u, 8198u, 139483u), vec4<u32>(4294967295u, 4294967295u, 74951u, 6017u), 2147483647i, vec4<bool>(false, true, true, false), vec2<u32>(0u, 0u))), vec3<f32>(-748f, 520f, 824f)), Struct_4(vec3<u32>(20474u, 4294967295u, 89560u), vec4<bool>(false, true, true, false), Struct_2(vec2<u32>(12085u, 32616u), 5977u, vec3<i32>(25958i, i32(-2147483648), -63195i), vec4<f32>(591f, 490f, 1927f, -1000f), Struct_1(vec4<u32>(60555u, 17774u, 0u, 79745u), vec4<u32>(17402u, 1u, 0u, 4294967295u), 20068i, vec4<bool>(false, false, false, false), vec2<u32>(1u, 63233u))), vec3<f32>(612f, -2117f, 1558f)), Struct_4(vec3<u32>(1u, 0u, 0u), vec4<bool>(false, true, false, false), Struct_2(vec2<u32>(36765u, 4294967295u), 790u, vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec4<f32>(-287f, -2032f, 533f, -1776f), Struct_1(vec4<u32>(35859u, 55883u, 26490u, 43612u), vec4<u32>(0u, 4294967295u, 39188u, 0u), -8591i, vec4<bool>(true, false, true, false), vec2<u32>(2805u, 8358u))), vec3<f32>(-821f, -789f, 716f)), Struct_4(vec3<u32>(49873u, 0u, 4294967295u), vec4<bool>(true, true, true, true), Struct_2(vec2<u32>(30650u, 21921u), 11436u, vec3<i32>(-41495i, i32(-2147483648), -9218i), vec4<f32>(-202f, -1000f, -1190f, 880f), Struct_1(vec4<u32>(2289u, 50088u, 4294967295u, 4294967295u), vec4<u32>(6753u, 31180u, 1u, 0u), 0i, vec4<bool>(false, true, false, true), vec2<u32>(5428u, 62814u))), vec3<f32>(1000f, 989f, 783f)), Struct_4(vec3<u32>(0u, 4294967295u, 44930u), vec4<bool>(false, false, true, true), Struct_2(vec2<u32>(1u, 0u), 0u, vec3<i32>(2147483647i, -16712i, -5298i), vec4<f32>(1271f, -593f, 149f, -153f), Struct_1(vec4<u32>(1u, 4294967295u, 13682u, 69200u), vec4<u32>(21758u, 0u, 38047u, 4294967295u), 1i, vec4<bool>(true, false, true, true), vec2<u32>(23144u, 4294967295u))), vec3<f32>(-765f, 972f, -335f)), Struct_4(vec3<u32>(1u, 33305u, 4294967295u), vec4<bool>(false, true, false, false), Struct_2(vec2<u32>(4294967295u, 2216u), 15370u, vec3<i32>(-1i, 30894i, 1i), vec4<f32>(909f, 1554f, 640f, 1361f), Struct_1(vec4<u32>(16373u, 4294967295u, 43104u, 60294u), vec4<u32>(4294967295u, 294u, 0u, 0u), 2147483647i, vec4<bool>(false, false, true, true), vec2<u32>(4294967295u, 0u))), vec3<f32>(-813f, 700f, -1000f)), Struct_4(vec3<u32>(18962u, 16198u, 54081u), vec4<bool>(false, false, true, false), Struct_2(vec2<u32>(0u, 1u), 4002u, vec3<i32>(14482i, 2147483647i, -1i), vec4<f32>(-418f, 2148f, 774f, -709f), Struct_1(vec4<u32>(34508u, 54582u, 35339u, 25467u), vec4<u32>(0u, 0u, 128653u, 0u), 26707i, vec4<bool>(false, false, false, false), vec2<u32>(4294967295u, 1u))), vec3<f32>(1000f, 645f, -254f)), Struct_4(vec3<u32>(7208u, 4294967295u, 4294967295u), vec4<bool>(false, true, true, true), Struct_2(vec2<u32>(25176u, 83127u), 1u, vec3<i32>(39212i, i32(-2147483648), 51736i), vec4<f32>(-745f, 1026f, -1344f, 1384f), Struct_1(vec4<u32>(1920u, 1u, 1u, 38328u), vec4<u32>(16289u, 4294967295u, 47456u, 4294967295u), 3850i, vec4<bool>(false, true, false, true), vec2<u32>(0u, 4294967295u))), vec3<f32>(1428f, -910f, 458f)), Struct_4(vec3<u32>(0u, 10452u, 0u), vec4<bool>(false, true, true, true), Struct_2(vec2<u32>(0u, 5537u), 4294967295u, vec3<i32>(-1i, -1i, 0i), vec4<f32>(443f, -518f, 526f, 1285f), Struct_1(vec4<u32>(55035u, 4294967295u, 0u, 37080u), vec4<u32>(22632u, 30304u, 41464u, 1u), 19536i, vec4<bool>(true, false, true, false), vec2<u32>(4294967295u, 0u))), vec3<f32>(-1000f, 446f, -413f)), Struct_4(vec3<u32>(16728u, 0u, 0u), vec4<bool>(false, true, true, false), Struct_2(vec2<u32>(52770u, 0u), 25825u, vec3<i32>(2147483647i, -18834i, 0i), vec4<f32>(1052f, 743f, 645f, -2389f), Struct_1(vec4<u32>(4294967295u, 4121u, 1u, 1u), vec4<u32>(0u, 4294967295u, 1254u, 0u), 0i, vec4<bool>(true, false, true, true), vec2<u32>(4294967295u, 0u))), vec3<f32>(214f, -383f, 2143f)), Struct_4(vec3<u32>(1u, 24377u, 4294967295u), vec4<bool>(false, true, true, true), Struct_2(vec2<u32>(5825u, 0u), 4294967295u, vec3<i32>(2147483647i, -8875i, 0i), vec4<f32>(678f, 154f, -125f, 1969f), Struct_1(vec4<u32>(75220u, 19509u, 5810u, 26577u), vec4<u32>(40329u, 41873u, 4294967295u, 35731u), -6094i, vec4<bool>(true, false, false, false), vec2<u32>(15747u, 1u))), vec3<f32>(-455f, -1168f, 170f)), Struct_4(vec3<u32>(4294967295u, 31322u, 5896u), vec4<bool>(true, false, false, true), Struct_2(vec2<u32>(1u, 4294967295u), 8753u, vec3<i32>(47683i, 1i, -1i), vec4<f32>(-1432f, 1279f, -1663f, 640f), Struct_1(vec4<u32>(54673u, 108341u, 0u, 4294967295u), vec4<u32>(0u, 16875u, 0u, 0u), 0i, vec4<bool>(false, false, false, true), vec2<u32>(80315u, 2767u))), vec3<f32>(718f, 217f, -1250f)), Struct_4(vec3<u32>(0u, 4294967295u, 1u), vec4<bool>(true, false, false, true), Struct_2(vec2<u32>(1u, 0u), 4294967295u, vec3<i32>(10394i, 36096i, i32(-2147483648)), vec4<f32>(507f, 1134f, -1205f, 680f), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 52662u), vec4<u32>(13857u, 1u, 26447u, 1u), 0i, vec4<bool>(false, true, false, true), vec2<u32>(4294967295u, 62207u))), vec3<f32>(442f, -1000f, -1388f)), Struct_4(vec3<u32>(1u, 0u, 4294967295u), vec4<bool>(false, false, false, true), Struct_2(vec2<u32>(1u, 0u), 35290u, vec3<i32>(-36343i, -37197i, 0i), vec4<f32>(-590f, -830f, 1215f, 1000f), Struct_1(vec4<u32>(102787u, 4294967295u, 1u, 4294967295u), vec4<u32>(79329u, 21596u, 0u, 20518u), 7100i, vec4<bool>(false, true, false, false), vec2<u32>(0u, 101301u))), vec3<f32>(1000f, -123f, -864f)), Struct_4(vec3<u32>(9992u, 4294967295u, 4294967295u), vec4<bool>(false, false, true, false), Struct_2(vec2<u32>(13358u, 1u), 1u, vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<f32>(-256f, 1022f, 1823f, -1234f), Struct_1(vec4<u32>(69908u, 1u, 1u, 7304u), vec4<u32>(61685u, 1u, 49869u, 1u), 2147483647i, vec4<bool>(false, false, true, true), vec2<u32>(1u, 94891u))), vec3<f32>(-1000f, 1072f, 553f)), Struct_4(vec3<u32>(0u, 2196u, 4294967295u), vec4<bool>(false, true, false, false), Struct_2(vec2<u32>(52250u, 18309u), 1u, vec3<i32>(-7035i, 1i, 43120i), vec4<f32>(1303f, -637f, -1000f, 478f), Struct_1(vec4<u32>(0u, 55205u, 2913u, 13571u), vec4<u32>(1u, 0u, 1u, 1u), i32(-2147483648), vec4<bool>(true, true, true, true), vec2<u32>(23527u, 27550u))), vec3<f32>(-1448f, 1312f, -1040f)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_sub_i32(~(-20139i), -29936i);
    return vec4<u32>(_wgslsmith_div_u32(1u, 104513u), 35743u, firstTrailingBit(u_input.b), global1.c.e.a.x) >> (~(_wgslsmith_clamp_vec4_u32(global1.c.e.b, global1.c.e.b, abs(arg_1.c.e.b)) ^ global1.c.e.b) % vec4<u32>(32u));
}

fn func_2() -> vec3<i32> {
    var var_0 = u_input.b == (36224u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, global1.c.b, global1.c.b), abs(vec3<u32>(0u, 67418u, global1.a.x)) & select(vec3<u32>(global1.a.x, 26996u, 0u), global1.a, global1.c.e.d.x)) % 32u));
    let var_1 = ~func_3(abs(global1.c.e.c), Struct_4(global1.a << (global1.a % vec3<u32>(32u)), !(!global1.b), Struct_2(~global1.c.e.a.wx, ~global1.a.x, u_input.a.xzz ^ u_input.a.yyz, _wgslsmith_div_vec4_f32(global1.c.d, vec4<f32>(global1.d.x, 364f, -866f, -975f)), Struct_1(global1.c.e.b, global1.c.e.a, u_input.a.x, vec4<bool>(global1.b.x, global1.c.e.d.x, global1.c.e.d.x, global1.b.x), vec2<u32>(u_input.b, u_input.b))), global1.d), -1144f);
    var var_2 = -12811i;
    global1 = global2[_wgslsmith_index_u32(0u, 24u)];
    var var_3 = global1.b;
    return u_input.a.wzy;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_4 {
    global0 = array<Struct_5, 6>();
    var var_0 = 1i >= ~abs((-1i | global1.c.e.c) | arg_1.e.c);
    var var_1 = global1.c.e;
    global2 = array<Struct_4, 24>();
    var_1 = global1.c.e;
    return Struct_4(var_1.b.yzy, select(vec4<bool>(any(vec4<bool>(arg_1.e.d.x, true, var_1.d.x, false)), u_input.e < 50081i, true, all(!vec4<bool>(arg_1.e.d.x, global1.c.e.d.x, true, false))), select(var_1.d, var_1.d, any(!global1.b.xx)), !vec4<bool>(true, true, arg_1.e.d.x, any(var_1.d.xx))), arg_1, vec3<f32>(_wgslsmith_f_op_f32(max(arg_1.d.x, arg_1.d.x)), _wgslsmith_f_op_f32(arg_1.d.x * global1.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-116f, 594f, global1.b.x)), _wgslsmith_f_op_f32(-143f + 957f), all(var_1.d.xwy))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.d.x, arg_1.d.x)), !arg_1.e.d.x && true))));
}

fn func_1() -> u32 {
    let var_0 = func_4(~(1u | ~select(43968u, u_input.b, global1.b.x)), Struct_2(_wgslsmith_add_vec2_u32(global1.c.a, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 1u), global1.c.a)) >> (global1.c.e.a.zw % vec2<u32>(32u)), u_input.b, _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(func_2(), select(vec3<i32>(-2147483647i, 17901i, 10819i), global1.c.c, false)), ~max(vec3<i32>(-11120i, global1.c.c.x, -23733i), u_input.a.yxw)), _wgslsmith_f_op_vec4_f32(global1.c.d - global1.c.d), Struct_1(select(~vec4<u32>(u_input.b, u_input.b, global1.c.e.a.x, global1.c.a.x), _wgslsmith_clamp_vec4_u32(global1.c.e.b, global1.c.e.b, vec4<u32>(u_input.b, 67039u, 8653u, u_input.b)), !global1.b.x), vec4<u32>(u_input.b, global1.c.b, u_input.b, u_input.b) >> (~vec4<u32>(48005u, 4294967295u, global1.a.x, u_input.b) % vec4<u32>(32u)), _wgslsmith_div_i32(~u_input.e, u_input.e & -68070i), select(!global1.c.e.d, global1.b, global1.c.e.d), ~(~global1.a.zz))));
    var var_1 = var_0;
    var var_2 = func_4(19605u, func_4(_wgslsmith_mult_u32(~abs(var_1.a.x), ~_wgslsmith_add_u32(var_1.a.x, global1.a.x)), var_0.c).c);
    var var_3 = vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.d.x - var_2.d.x))) >= _wgslsmith_f_op_f32(global1.c.d.x + var_0.c.d.x), false, false, var_1.d.x >= _wgslsmith_f_op_f32(max(-322f, _wgslsmith_f_op_f32(-global1.d.x))));
    global1 = Struct_4(abs(abs(~var_0.c.e.a.yyx)) | ~vec3<u32>(var_1.a.x, max(u_input.b, var_1.c.a.x), global1.c.b), vec4<bool>(select(false, global1.c.e.d.x, var_2.b.x) & true, var_0.c.e.d.x, false, true), global1.c, global1.d);
    return var_2.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (vec4<i32>(-1i) * -vec4<i32>(_wgslsmith_div_i32(global1.c.e.c, -331i), -11754i, 35821i << (0u % 32u), abs(u_input.c))) >> (((vec4<u32>(4294967295u, ~1u, 4294967295u, func_1()) | func_3(_wgslsmith_div_i32(-2147483647i, global1.c.e.c), Struct_4(vec3<u32>(u_input.b, 10220u, 10325u), global1.b, global1.c, vec3<f32>(978f, -604f, -117f)), _wgslsmith_f_op_f32(floor(1430f)))) & ~firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.a.x, 24015u, 1u, 4294967295u), vec4<u32>(0u, 20263u, global1.c.a.x, 56567u)))) % vec4<u32>(32u));
    global0 = array<Struct_5, 6>();
    global1 = global2[_wgslsmith_index_u32(u_input.b, 24u)];
    var var_1 = vec4<i32>(-1i, abs(func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 0u, global1.c.e.b.x) << (vec3<u32>(4294967295u, 0u, 1u) % vec3<u32>(32u)), ~vec3<u32>(1u, 0u, global1.c.a.x)), Struct_2(global1.c.a, reverseBits(7137u), var_0.xxx, _wgslsmith_f_op_vec4_f32(trunc(global1.c.d)), Struct_1(vec4<u32>(7488u, 1u, 21816u, u_input.b), vec4<u32>(u_input.b, 7886u, 7097u, 30929u), -31835i, vec4<bool>(false, true, global1.b.x, global1.b.x), vec2<u32>(u_input.b, 70996u)))).c.e.c), u_input.d, global1.c.c.x);
    global0 = array<Struct_5, 6>();
    global0 = array<Struct_5, 6>();
    let var_2 = reverseBits(-firstLeadingBit(vec3<i32>(1i, u_input.c, u_input.e) ^ var_1.zyw));
    global1 = func_4(_wgslsmith_div_u32(_wgslsmith_mult_u32(1u >> (~global1.c.b % 32u), global1.c.a.x), abs(~u_input.b)), global1.c);
    var var_3 = select(!global1.c.e.d, select(global1.c.e.d, global1.c.e.d, true), global1.c.e.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(min(773f, global1.d.x)), _wgslsmith_f_op_f32(floor(global1.d.x)), 1717f, 1573f));
}

