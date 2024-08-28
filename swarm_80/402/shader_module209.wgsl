struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec4<i32>(-28714i, 39589i, 20993i, -1i), 8819i, vec4<u32>(69051u, 0u, 0u, 27358u), Struct_1(89215u, true), Struct_3(vec3<i32>(-51704i, -29316i, 22525i), Struct_1(4294967295u, false), -1i, vec3<f32>(-388f, -216f, -1049f))), Struct_4(vec4<i32>(-13311i, 1i, -20884i, 0i), 0i, vec4<u32>(2620u, 39666u, 4294967295u, 46250u), Struct_1(58918u, true), Struct_3(vec3<i32>(-12895i, i32(-2147483648), -20147i), Struct_1(30912u, true), 24840i, vec3<f32>(522f, -170f, 1000f))), Struct_4(vec4<i32>(-14715i, 1i, 2147483647i, 10031i), 12381i, vec4<u32>(27187u, 0u, 1u, 1u), Struct_1(25000u, true), Struct_3(vec3<i32>(0i, -11437i, 0i), Struct_1(0u, true), 0i, vec3<f32>(-1309f, -1197f, 857f))), Struct_4(vec4<i32>(5756i, -1i, -42130i, 1i), 25703i, vec4<u32>(84475u, 4294967295u, 4294967295u, 0u), Struct_1(0u, false), Struct_3(vec3<i32>(20668i, -5098i, 5734i), Struct_1(82869u, false), i32(-2147483648), vec3<f32>(-276f, 1000f, 140f))), Struct_4(vec4<i32>(-14636i, -24492i, 200i, -11330i), 1i, vec4<u32>(7049u, 98102u, 31665u, 22959u), Struct_1(1u, false), Struct_3(vec3<i32>(2147483647i, -19955i, 1i), Struct_1(41058u, true), -10074i, vec3<f32>(202f, -1223f, -883f))), Struct_4(vec4<i32>(-20458i, -7331i, 18516i, i32(-2147483648)), 2147483647i, vec4<u32>(6415u, 0u, 10811u, 90388u), Struct_1(32085u, false), Struct_3(vec3<i32>(15180i, 1i, 1i), Struct_1(71912u, true), -1035i, vec3<f32>(569f, -1426f, -1577f))), Struct_4(vec4<i32>(0i, -7253i, 10305i, 0i), 0i, vec4<u32>(1u, 4294967295u, 1u, 8978u), Struct_1(4294967295u, false), Struct_3(vec3<i32>(34962i, -16939i, i32(-2147483648)), Struct_1(0u, false), -13961i, vec3<f32>(-114f, -2072f, 371f))), Struct_4(vec4<i32>(-10246i, 2147483647i, 1i, 21221i), 1i, vec4<u32>(1u, 4294967295u, 1u, 14362u), Struct_1(1u, true), Struct_3(vec3<i32>(-20304i, 2766i, -582i), Struct_1(46617u, true), 16049i, vec3<f32>(-744f, 906f, 404f))), Struct_4(vec4<i32>(17110i, 27200i, -1i, 2147483647i), i32(-2147483648), vec4<u32>(4294967295u, 1u, 546u, 4294967295u), Struct_1(10794u, false), Struct_3(vec3<i32>(-3320i, 32755i, i32(-2147483648)), Struct_1(27723u, true), -6966i, vec3<f32>(1000f, -1000f, -329f))), Struct_4(vec4<i32>(2147483647i, 33670i, 1i, 1i), -1i, vec4<u32>(35217u, 1u, 34616u, 4294967295u), Struct_1(1u, false), Struct_3(vec3<i32>(0i, -3844i, -25880i), Struct_1(8293u, true), -1i, vec3<f32>(865f, 651f, 1276f))), Struct_4(vec4<i32>(12917i, 11407i, 1i, 1i), -32481i, vec4<u32>(0u, 35966u, 81673u, 0u), Struct_1(33426u, false), Struct_3(vec3<i32>(i32(-2147483648), 0i, 2147483647i), Struct_1(0u, true), 0i, vec3<f32>(-1899f, -157f, -867f))), Struct_4(vec4<i32>(2784i, 14084i, -26977i, 2147483647i), -1851i, vec4<u32>(0u, 1u, 44997u, 51713u), Struct_1(4294967295u, true), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), Struct_1(1u, true), 28350i, vec3<f32>(-560f, -615f, -1479f))), Struct_4(vec4<i32>(-21222i, -414i, 2147483647i, -13825i), 22709i, vec4<u32>(4294967295u, 1u, 25891u, 0u), Struct_1(1u, true), Struct_3(vec3<i32>(1i, 43681i, -916i), Struct_1(44922u, false), -12564i, vec3<f32>(-249f, -872f, 1000f))), Struct_4(vec4<i32>(71978i, 9827i, i32(-2147483648), 1i), 2507i, vec4<u32>(1u, 68757u, 1u, 12068u), Struct_1(4839u, true), Struct_3(vec3<i32>(2147483647i, -9946i, 46438i), Struct_1(7976u, true), 209i, vec3<f32>(1013f, -429f, 2207f))), Struct_4(vec4<i32>(-1i, -35029i, 1937i, 0i), -64120i, vec4<u32>(40209u, 10893u, 0u, 4294967295u), Struct_1(21953u, true), Struct_3(vec3<i32>(2147483647i, 33225i, 2814i), Struct_1(4626u, false), 2147483647i, vec3<f32>(398f, 2093f, 2695f))), Struct_4(vec4<i32>(i32(-2147483648), i32(-2147483648), 13047i, 0i), -29182i, vec4<u32>(4294967295u, 71864u, 0u, 32043u), Struct_1(0u, true), Struct_3(vec3<i32>(-34802i, -16179i, -40129i), Struct_1(0u, true), -58216i, vec3<f32>(-585f, -1155f, 191f))), Struct_4(vec4<i32>(i32(-2147483648), 0i, -4484i, -2055i), 0i, vec4<u32>(21156u, 59533u, 4294967295u, 2925u), Struct_1(1u, false), Struct_3(vec3<i32>(i32(-2147483648), -31305i, i32(-2147483648)), Struct_1(4977u, true), -13680i, vec3<f32>(654f, 351f, 1000f))), Struct_4(vec4<i32>(19461i, -14828i, 0i, 40917i), 2147483647i, vec4<u32>(0u, 0u, 4294967295u, 37995u), Struct_1(23548u, true), Struct_3(vec3<i32>(1i, i32(-2147483648), -1i), Struct_1(1u, false), -30086i, vec3<f32>(-558f, -1724f, -800f))), Struct_4(vec4<i32>(53989i, 2147483647i, 23549i, -27954i), -23045i, vec4<u32>(57164u, 4294967295u, 21726u, 4294967295u), Struct_1(19111u, true), Struct_3(vec3<i32>(28963i, 30666i, i32(-2147483648)), Struct_1(4294967295u, false), -1i, vec3<f32>(-397f, 1209f, 218f))), Struct_4(vec4<i32>(0i, -6607i, -32708i, 10756i), 45794i, vec4<u32>(0u, 38873u, 5882u, 103121u), Struct_1(0u, true), Struct_3(vec3<i32>(-1i, -2443i, -1i), Struct_1(4294967295u, false), 0i, vec3<f32>(-1000f, 133f, 729f))), Struct_4(vec4<i32>(-3341i, i32(-2147483648), -29103i, 77100i), 1i, vec4<u32>(4294967295u, 34224u, 14162u, 4294967295u), Struct_1(0u, true), Struct_3(vec3<i32>(-75118i, -15693i, 0i), Struct_1(4294967295u, false), 1i, vec3<f32>(1259f, 1000f, 597f))), Struct_4(vec4<i32>(2147483647i, -1i, -3572i, 25476i), -11774i, vec4<u32>(1u, 52019u, 9426u, 24839u), Struct_1(4294967295u, false), Struct_3(vec3<i32>(2147483647i, i32(-2147483648), -1i), Struct_1(1u, true), 1i, vec3<f32>(-1000f, 1088f, 1000f))), Struct_4(vec4<i32>(14982i, 18828i, -39633i, 108625i), 1i, vec4<u32>(27692u, 0u, 54783u, 34634u), Struct_1(0u, false), Struct_3(vec3<i32>(33837i, i32(-2147483648), 0i), Struct_1(0u, true), 11680i, vec3<f32>(312f, -858f, -576f))), Struct_4(vec4<i32>(-2794i, -1i, 17208i, 6416i), -1i, vec4<u32>(1u, 1u, 15581u, 8707u), Struct_1(0u, false), Struct_3(vec3<i32>(-38889i, 1i, -1i), Struct_1(4294967295u, false), i32(-2147483648), vec3<f32>(1084f, 1674f, 1319f))), Struct_4(vec4<i32>(12489i, 1979i, 18600i, -74170i), 219i, vec4<u32>(65089u, 44005u, 4294967295u, 4294967295u), Struct_1(9116u, false), Struct_3(vec3<i32>(1i, 2147483647i, 28719i), Struct_1(0u, true), 0i, vec3<f32>(-166f, 378f, 113f))), Struct_4(vec4<i32>(2043i, -1i, 2147483647i, 2147483647i), 7781i, vec4<u32>(39409u, 40765u, 4294967295u, 0u), Struct_1(23554u, false), Struct_3(vec3<i32>(0i, -1i, 2147483647i), Struct_1(0u, true), -1i, vec3<f32>(438f, 749f, -574f))), Struct_4(vec4<i32>(-13861i, -1i, 2147483647i, 15885i), -18652i, vec4<u32>(27187u, 4294967295u, 24727u, 0u), Struct_1(0u, false), Struct_3(vec3<i32>(i32(-2147483648), 5355i, 40550i), Struct_1(29985u, true), 682i, vec3<f32>(-794f, -1000f, -1294f))), Struct_4(vec4<i32>(1i, i32(-2147483648), 1i, -26748i), -34211i, vec4<u32>(83670u, 28220u, 74765u, 19828u), Struct_1(4294967295u, false), Struct_3(vec3<i32>(-1i, 0i, -30381i), Struct_1(29864u, true), 2147483647i, vec3<f32>(-2863f, -363f, 1353f))), Struct_4(vec4<i32>(0i, 1i, 0i, -41398i), 2147483647i, vec4<u32>(1u, 74611u, 0u, 0u), Struct_1(35077u, false), Struct_3(vec3<i32>(2147483647i, 11597i, -29251i), Struct_1(1122u, true), 41082i, vec3<f32>(-1540f, -1629f, -1006f))), Struct_4(vec4<i32>(2147483647i, 23673i, 0i, 2147483647i), 0i, vec4<u32>(4294967295u, 19558u, 20770u, 48072u), Struct_1(23015u, true), Struct_3(vec3<i32>(0i, 2147483647i, 1i), Struct_1(39185u, false), -1i, vec3<f32>(901f, 1778f, -1116f))), Struct_4(vec4<i32>(58337i, -14692i, -1i, 0i), -10815i, vec4<u32>(12476u, 40171u, 0u, 4294967295u), Struct_1(0u, true), Struct_3(vec3<i32>(-33196i, -1i, -26201i), Struct_1(1u, false), 551i, vec3<f32>(353f, -2129f, -233f))), Struct_4(vec4<i32>(i32(-2147483648), -1i, -1382i, 0i), -1i, vec4<u32>(25393u, 4294967295u, 4294967295u, 52415u), Struct_1(0u, true), Struct_3(vec3<i32>(0i, i32(-2147483648), -71675i), Struct_1(49975u, false), 0i, vec3<f32>(-762f, -2624f, -2168f))));

var<private> global1: vec4<f32> = vec4<f32>(-146f, -251f, -963f, -1462f);

var<private> global2: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(8716i, 1i), vec2<i32>(14566i, 0i), vec2<i32>(-49895i, 2147483647i), vec2<i32>(40242i, 2147483647i), vec2<i32>(16437i, -48304i), vec2<i32>(1i, 15267i));

var<private> global3: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<i32>(0i, -48813i), Struct_1(22793u, false), 83568u, Struct_1(17329u, false)), Struct_2(vec2<i32>(-16455i, -16666i), Struct_1(39719u, true), 679u, Struct_1(0u, true)), Struct_2(vec2<i32>(1i, 28615i), Struct_1(0u, true), 4919u, Struct_1(1u, true)), Struct_2(vec2<i32>(-21627i, -27507i), Struct_1(13235u, false), 0u, Struct_1(0u, false)), Struct_2(vec2<i32>(-37697i, 1i), Struct_1(0u, true), 4294967295u, Struct_1(4294967295u, true)), Struct_2(vec2<i32>(i32(-2147483648), 21799i), Struct_1(49004u, false), 1u, Struct_1(4294967295u, true)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> vec3<bool> {
    var var_0 = ~_wgslsmith_div_u32(arg_0.x, ~1u | ~(~arg_0.x));
    var_0 = 36328u;
    var var_1 = vec4<bool>(true, true && !((arg_0.x == arg_0.x) | all(vec4<bool>(true, true, false, true))), _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a, abs(u_input.a)), u_input.a) >= _wgslsmith_mod_i32(arg_1, abs(~(-2147483647i))), all(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), false)));
    global3 = array<Struct_2, 6>();
    let var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(arg_1, -1i), u_input.a, u_input.a, abs(-35254i)), abs((vec4<i32>(-11337i, -332i, -32325i, arg_1) >> (vec4<u32>(30525u, arg_0.x, arg_0.x, 74094u) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 37297u, arg_0.x, arg_0.x), vec4<u32>(7790u, 4294967295u, 4294967295u, 1u)) % vec4<u32>(32u)))), abs(~(-(~vec4<i32>(1i, u_input.a, u_input.a, 0i)))));
    return select(select(vec3<bool>(!var_1.x, any(vec2<bool>(var_1.x, true)), var_1.x), !var_1.wyz, !any(var_1.zww) | (!var_1.x || var_1.x)), !var_1.yxz, vec3<bool>(any(var_1.xy), all(!vec3<bool>(var_1.x, false, true)) & !any(var_1.xz), var_1.x));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_4) -> Struct_1 {
    let var_0 = firstTrailingBit(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 0u, arg_2, arg_3.e.b.a)), ~vec4<u32>(arg_3.d.a, 1u, 1u, 4294967295u))) | arg_3.e.b.a;
    var var_1 = !select(select(!func_3(arg_3.c.xx, 1i), !select(vec3<bool>(arg_3.e.b.b, false, arg_3.e.b.b), vec3<bool>(false, arg_3.e.b.b, arg_3.e.b.b), true), !select(vec3<bool>(arg_3.e.b.b, arg_3.e.b.b, true), vec3<bool>(arg_3.d.b, arg_3.e.b.b, arg_3.d.b), vec3<bool>(arg_3.d.b, false, false))), vec3<bool>(arg_3.e.b.b, arg_3.d.b, arg_3.e.b.b), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a.x, arg_1.x, u_input.a, -3250i), ~vec4<i32>(-38332i, -22737i, u_input.a, arg_1.x)) >= 2147483647i);
    var var_2 = firstTrailingBit(_wgslsmith_div_vec4_i32(arg_1, select(arg_3.a >> (_wgslsmith_mod_vec4_u32(vec4<u32>(var_0, 0u, 0u, 0u), arg_3.c) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(42677i, arg_3.e.c, arg_3.b, -13849i)), ~vec4<i32>(23314i, u_input.a, -1i, 2844i)), arg_3.e.b.b)));
    var_1 = !func_3(abs(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, arg_3.e.b.a), vec2<u32>(arg_3.c.x, 0u)) >> (vec2<u32>(arg_3.e.b.a, 27260u) % vec2<u32>(32u))), ~var_2.x);
    var var_3 = _wgslsmith_mod_u32(select(70585u, var_0, false), arg_3.e.b.a);
    return Struct_1(4294967295u, true);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(~global2[_wgslsmith_index_u32(4294967295u, 6u)], func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global1.wy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-499f, -364f) - global1.yy))), vec4<i32>(_wgslsmith_div_i32(~(-2147483647i), -u_input.a), u_input.a, u_input.a, 67654i), 0u, global0[_wgslsmith_index_u32(15075u, 32u)]), ~1u, Struct_1(0u, all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), false))));
    global2 = array<vec2<i32>, 6>();
    global0 = array<Struct_4, 32>();
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, -1000f, 1501f, global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1625f, -142f, global1.x, global1.x)))))));
    let var_1 = select(vec2<bool>(var_0.d.b, _wgslsmith_clamp_u32(var_0.c, _wgslsmith_mult_u32(var_0.c, 78540u), min(var_0.b.a, 1u)) >= var_0.d.a), !select(!select(vec2<bool>(true, var_0.d.b), vec2<bool>(var_0.d.b, true), var_0.d.b), func_3(vec2<u32>(var_0.c, 56759u) << (vec2<u32>(var_0.b.a, var_0.c) % vec2<u32>(32u)), min(-15095i, var_0.a.x)).xy, vec2<bool>(any(vec2<bool>(true, var_0.b.b)), var_0.b.b && var_0.b.b)), all(func_3(vec2<u32>(~var_0.c, ~var_0.b.a), firstLeadingBit(44874i)).yy));
    return func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1028f)))), global1.x)), firstTrailingBit(select(vec4<i32>(33504i, 0i, u_input.a, 1i) ^ vec4<i32>(u_input.a, 31196i, u_input.a, u_input.a), vec4<i32>(var_0.a.x, u_input.a, 1i, 24651i), vec4<bool>(true, var_1.x, var_0.b.b, false)) | vec4<i32>(-1i, var_0.a.x, abs(var_0.a.x), ~u_input.a)), ~4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c, func_2(global1.zw, -min(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, 0i), vec4<i32>(u_input.a, 2147483647i, -25127i, 0i)), var_0.d.a, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.c, min(var_0.b.a, var_0.d.a)), 32u)]).a), 32u)]);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global1.wz))))))), vec4<i32>(u_input.a | countOneBits(_wgslsmith_clamp_i32(0i, u_input.a, u_input.a)), u_input.a ^ ((-2147483647i >> (arg_0.a % 32u)) << (arg_0.a % 32u)), firstLeadingBit(abs(-2147483647i)), 0i), arg_0.a, global0[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, arg_0.a), vec2<u32>(arg_0.a, arg_0.a), vec2<u32>(arg_0.a, arg_0.a)), abs(vec2<u32>(0u, arg_0.a)))), 32u)]);
    global3 = array<Struct_2, 6>();
    global3 = array<Struct_2, 6>();
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 560f, global1.x, -547f), vec4<f32>(global1.x, -382f, 768f, 1385f))))))));
    return arg_0;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = arg_1.a.x & (arg_3.c | ~_wgslsmith_mult_i32(arg_2.a.x, u_input.a));
    global1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2002f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -191f) - 670f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, 373f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -582f) * -2776f)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(544f, arg_0.e.d.x, 619f, arg_3.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(475f, global1.x, arg_2.e.d.x, arg_3.d.x))))))));
    global2 = array<vec2<i32>, 6>();
    global2 = array<vec2<i32>, 6>();
    let var_1 = (_wgslsmith_div_i32(_wgslsmith_mod_i32(~arg_2.e.c, arg_2.b), -15563i) >> (abs(41300u) % 32u)) | max(var_0 ^ _wgslsmith_dot_vec3_i32(~arg_1.a, select(vec3<i32>(arg_2.e.c, 2440i, arg_3.c), arg_1.a, vec3<bool>(false, true, arg_3.b.b))), arg_3.c);
    return arg_3.a.xy;
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec3<u32> {
    global0 = array<Struct_4, 32>();
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_4(arg_1.b).a, ~func_1().a, _wgslsmith_mult_u32(74001u, arg_2.x)), 6u)];
    var var_1 = 1061f;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(select(-396f, _wgslsmith_f_op_f32(-arg_1.d.x), global1.x <= 777f))), _wgslsmith_f_op_f32(min(-608f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1299f, global1.x), _wgslsmith_f_op_f32(255f - 495f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) * 398f));
    let var_2 = ~vec4<u32>(func_1().a, countOneBits(~(~20568u)), func_4(func_4(arg_1.b)).a ^ (var_0.c & 7007u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.x, 41334u, arg_2.x), vec3<u32>(4342u, arg_1.b.a, arg_2.x)), vec3<u32>(4811u, arg_1.b.a, arg_1.b.a)));
    return abs(~vec3<u32>(~1u >> (arg_1.b.a % 32u), ~(~arg_2.x), _wgslsmith_div_u32(_wgslsmith_div_u32(var_2.x, 38955u), 4122u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<i32>, 6>();
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(2066f, _wgslsmith_f_op_f32(global1.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-198f)) + 1f))), _wgslsmith_f_op_f32(f32(-1f) * -1653f)), vec4<f32>(-387f, -882f, _wgslsmith_f_op_f32(global1.x - global1.x), global1.x)));
    global3 = array<Struct_2, 6>();
    let var_1 = func_6(func_5(global0[_wgslsmith_index_u32(countOneBits(reverseBits(~30509u)), 32u)], Struct_3(-(vec3<i32>(u_input.a, u_input.a, u_input.a) >> (vec3<u32>(46795u, 28681u, 59199u) % vec3<u32>(32u))), func_4(func_1()), ~select(u_input.a, 0i, true), global1.zyz), global0[_wgslsmith_index_u32(1u, 32u)], Struct_3(-vec3<i32>(-2147483647i, u_input.a, 2147483647i) ^ min(vec3<i32>(u_input.a, 35784i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a)), func_1(), 0i, vec3<f32>(-584f, -1520f, _wgslsmith_f_op_f32(-global1.x)))), Struct_3(-abs(_wgslsmith_mult_vec3_i32(vec3<i32>(3208i, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, 2147483647i))), Struct_1(abs(_wgslsmith_mult_u32(1u, 1u)), true), _wgslsmith_dot_vec2_i32(~global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 6u)], global2[_wgslsmith_index_u32(~reverseBits(1u), 6u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1517f + 1425f), _wgslsmith_div_f32(global1.x, 1063f), _wgslsmith_f_op_f32(var_0.x - -749f)))), vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(41779u, 51715u, 4294967295u), vec3<u32>(50397u, 41664u, 1u)), min(vec3<u32>(0u, 38660u, 1u), vec3<u32>(1u, 0u, 4294967295u))), vec3<u32>(54522u, select(45400u, 1u, false), 66412u))), vec3<bool>(all(vec2<bool>(false, true)), false, true));
    let var_2 = global0[_wgslsmith_index_u32(abs(0u), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, reverseBits(var_2.c), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, ~1u), vec2<u32>(func_1().a, var_1.x) & abs(vec2<u32>(var_1.x, 11545u) ^ vec2<u32>(4294967295u, 1u))));
}

