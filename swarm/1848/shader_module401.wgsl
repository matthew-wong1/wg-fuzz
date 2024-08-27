struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
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

var<private> global0: array<Struct_3, 32>;

var<private> global1: Struct_1 = Struct_1(48546i, vec2<i32>(27508i, -1i), -403f);

var<private> global2: array<Struct_5, 23> = array<Struct_5, 23>(Struct_5(vec4<bool>(true, true, false, false), Struct_3(0i, Struct_1(-1i, vec2<i32>(0i, -40856i), 1497f), -147f, Struct_2(Struct_1(-57370i, vec2<i32>(17251i, 9267i), 1643f), Struct_1(1i, vec2<i32>(4579i, i32(-2147483648)), -987f), Struct_1(-1i, vec2<i32>(i32(-2147483648), 46050i), -742f), vec4<i32>(0i, -1i, 2147483647i, 2147483647i), -387f), vec2<i32>(i32(-2147483648), -73333i))), Struct_5(vec4<bool>(true, true, false, true), Struct_3(64104i, Struct_1(-522i, vec2<i32>(-574i, -11393i), -247f), -1000f, Struct_2(Struct_1(40800i, vec2<i32>(-12087i, 36555i), -1112f), Struct_1(-40728i, vec2<i32>(10559i, 0i), 461f), Struct_1(26139i, vec2<i32>(i32(-2147483648), -39478i), 1000f), vec4<i32>(18234i, -27090i, 0i, 2147483647i), 155f), vec2<i32>(-8917i, 16097i))), Struct_5(vec4<bool>(false, true, false, true), Struct_3(i32(-2147483648), Struct_1(14286i, vec2<i32>(0i, -412i), -2303f), -554f, Struct_2(Struct_1(5089i, vec2<i32>(2147483647i, 38554i), 162f), Struct_1(1i, vec2<i32>(2147483647i, 6724i), 2191f), Struct_1(1i, vec2<i32>(-33822i, 29056i), -536f), vec4<i32>(-1i, 25380i, 1i, -12069i), 224f), vec2<i32>(i32(-2147483648), -25419i))), Struct_5(vec4<bool>(false, true, true, true), Struct_3(2147483647i, Struct_1(4486i, vec2<i32>(-43605i, 5729i), 1712f), 409f, Struct_2(Struct_1(-10210i, vec2<i32>(27755i, -21638i), 129f), Struct_1(-1i, vec2<i32>(-23189i, 16976i), 1367f), Struct_1(53517i, vec2<i32>(-1i, i32(-2147483648)), -146f), vec4<i32>(19226i, -1i, -1i, 30642i), 457f), vec2<i32>(-1i, -27477i))), Struct_5(vec4<bool>(true, true, false, false), Struct_3(0i, Struct_1(-6661i, vec2<i32>(i32(-2147483648), 0i), 1393f), -1211f, Struct_2(Struct_1(6504i, vec2<i32>(i32(-2147483648), i32(-2147483648)), 181f), Struct_1(2147483647i, vec2<i32>(2147483647i, -21924i), 1196f), Struct_1(2147483647i, vec2<i32>(43839i, 8354i), -426f), vec4<i32>(43438i, 0i, 17928i, -17344i), -1287f), vec2<i32>(2147483647i, -305i))), Struct_5(vec4<bool>(false, false, true, true), Struct_3(2147483647i, Struct_1(10092i, vec2<i32>(47893i, 1i), -1742f), 1502f, Struct_2(Struct_1(37198i, vec2<i32>(0i, -4034i), 503f), Struct_1(97689i, vec2<i32>(-11642i, 2147483647i), -1016f), Struct_1(2147483647i, vec2<i32>(41458i, 1i), 764f), vec4<i32>(315i, -1i, 1i, 25469i), -1000f), vec2<i32>(-13626i, 0i))), Struct_5(vec4<bool>(false, true, true, false), Struct_3(-28270i, Struct_1(-35708i, vec2<i32>(-1i, -4323i), 918f), -1372f, Struct_2(Struct_1(-42633i, vec2<i32>(25942i, -90957i), -1000f), Struct_1(-29815i, vec2<i32>(-1i, 32858i), 614f), Struct_1(-26441i, vec2<i32>(0i, -51689i), 779f), vec4<i32>(-51983i, 0i, i32(-2147483648), 0i), 983f), vec2<i32>(0i, i32(-2147483648)))), Struct_5(vec4<bool>(true, true, false, false), Struct_3(1i, Struct_1(2824i, vec2<i32>(-1i, 0i), 962f), -1281f, Struct_2(Struct_1(-1i, vec2<i32>(-4346i, 0i), 1029f), Struct_1(8854i, vec2<i32>(-1i, -1i), -484f), Struct_1(-11558i, vec2<i32>(i32(-2147483648), 32534i), 776f), vec4<i32>(-108307i, 0i, 55667i, i32(-2147483648)), -817f), vec2<i32>(0i, 0i))), Struct_5(vec4<bool>(false, false, false, true), Struct_3(i32(-2147483648), Struct_1(i32(-2147483648), vec2<i32>(i32(-2147483648), -1i), -1418f), -871f, Struct_2(Struct_1(-60374i, vec2<i32>(1i, 64537i), 215f), Struct_1(24370i, vec2<i32>(63818i, -1i), 1170f), Struct_1(12867i, vec2<i32>(-4777i, -24070i), -1029f), vec4<i32>(i32(-2147483648), 2147483647i, -11069i, 0i), 1343f), vec2<i32>(1i, 0i))), Struct_5(vec4<bool>(false, false, true, false), Struct_3(-22060i, Struct_1(33520i, vec2<i32>(1i, 1i), -394f), 540f, Struct_2(Struct_1(2147483647i, vec2<i32>(-1i, -23915i), -1361f), Struct_1(27910i, vec2<i32>(-14153i, 1i), 1726f), Struct_1(0i, vec2<i32>(-1i, -78302i), -1210f), vec4<i32>(22062i, 60250i, -1i, 20960i), -1206f), vec2<i32>(7511i, 1i))), Struct_5(vec4<bool>(false, true, false, false), Struct_3(i32(-2147483648), Struct_1(0i, vec2<i32>(-33232i, 31824i), 1594f), 1220f, Struct_2(Struct_1(-1i, vec2<i32>(-1i, 2147483647i), -688f), Struct_1(1i, vec2<i32>(2147483647i, -1i), -218f), Struct_1(-1i, vec2<i32>(-33078i, -26375i), 326f), vec4<i32>(0i, 0i, 1i, 1i), -447f), vec2<i32>(15563i, -9165i))), Struct_5(vec4<bool>(false, false, false, true), Struct_3(-1i, Struct_1(2147483647i, vec2<i32>(i32(-2147483648), 0i), -1203f), 125f, Struct_2(Struct_1(20143i, vec2<i32>(i32(-2147483648), -15265i), 1451f), Struct_1(1i, vec2<i32>(2147483647i, i32(-2147483648)), -2198f), Struct_1(-26619i, vec2<i32>(3806i, i32(-2147483648)), 726f), vec4<i32>(-1i, 0i, 10458i, -67418i), 1000f), vec2<i32>(2147483647i, 21001i))), Struct_5(vec4<bool>(true, true, true, false), Struct_3(0i, Struct_1(-7761i, vec2<i32>(1i, -1i), 808f), 281f, Struct_2(Struct_1(44217i, vec2<i32>(i32(-2147483648), -38207i), 313f), Struct_1(2147483647i, vec2<i32>(2147483647i, 0i), -1000f), Struct_1(-21969i, vec2<i32>(2147483647i, 2147483647i), 1746f), vec4<i32>(0i, -6995i, 47374i, 48944i), 1158f), vec2<i32>(29097i, -1i))), Struct_5(vec4<bool>(false, false, false, true), Struct_3(1i, Struct_1(0i, vec2<i32>(0i, -3150i), -1185f), 274f, Struct_2(Struct_1(-9447i, vec2<i32>(-1i, 0i), 198f), Struct_1(-70499i, vec2<i32>(2147483647i, -1i), -1110f), Struct_1(i32(-2147483648), vec2<i32>(2147483647i, 1i), 885f), vec4<i32>(-1i, i32(-2147483648), 1i, 11544i), 186f), vec2<i32>(-1i, -59211i))), Struct_5(vec4<bool>(true, false, false, true), Struct_3(-33755i, Struct_1(-28430i, vec2<i32>(0i, 19097i), 637f), -1522f, Struct_2(Struct_1(0i, vec2<i32>(2147483647i, 21333i), 959f), Struct_1(2147483647i, vec2<i32>(1i, 26343i), -1499f), Struct_1(40896i, vec2<i32>(-55114i, -20637i), 208f), vec4<i32>(-20577i, -1i, -1i, 4543i), 720f), vec2<i32>(0i, 25642i))), Struct_5(vec4<bool>(true, true, true, true), Struct_3(i32(-2147483648), Struct_1(-34848i, vec2<i32>(0i, -5965i), 835f), 160f, Struct_2(Struct_1(18334i, vec2<i32>(-1i, -55621i), -1524f), Struct_1(-31624i, vec2<i32>(2147483647i, 1i), -539f), Struct_1(-82024i, vec2<i32>(2147483647i, 2147483647i), 286f), vec4<i32>(12712i, -29740i, i32(-2147483648), -2024i), 696f), vec2<i32>(11035i, -1233i))), Struct_5(vec4<bool>(false, false, false, false), Struct_3(2147483647i, Struct_1(2147483647i, vec2<i32>(-5206i, 1i), 134f), -2234f, Struct_2(Struct_1(1i, vec2<i32>(1i, 9295i), 737f), Struct_1(-1i, vec2<i32>(-19300i, 2147483647i), 517f), Struct_1(i32(-2147483648), vec2<i32>(-7241i, 1825i), -2009f), vec4<i32>(-10175i, -1i, -35844i, 0i), -536f), vec2<i32>(1i, -1i))), Struct_5(vec4<bool>(false, false, false, false), Struct_3(i32(-2147483648), Struct_1(24239i, vec2<i32>(2147483647i, 1i), 926f), 784f, Struct_2(Struct_1(0i, vec2<i32>(1i, 12903i), 258f), Struct_1(40829i, vec2<i32>(i32(-2147483648), 2147483647i), -1000f), Struct_1(-12373i, vec2<i32>(0i, -1i), -154f), vec4<i32>(-30315i, -5246i, 1i, 0i), -2108f), vec2<i32>(-26351i, -12413i))), Struct_5(vec4<bool>(false, false, true, true), Struct_3(-90381i, Struct_1(-2967i, vec2<i32>(8992i, 1i), 652f), 1494f, Struct_2(Struct_1(0i, vec2<i32>(0i, 2147483647i), -187f), Struct_1(2147483647i, vec2<i32>(2147483647i, -26543i), 312f), Struct_1(-18579i, vec2<i32>(-12575i, 1i), -2292f), vec4<i32>(13595i, -40233i, 16711i, 10445i), -1000f), vec2<i32>(-4901i, -5111i))), Struct_5(vec4<bool>(false, false, true, false), Struct_3(1i, Struct_1(2147483647i, vec2<i32>(-40145i, -43594i), 1181f), 170f, Struct_2(Struct_1(32924i, vec2<i32>(i32(-2147483648), 31248i), -261f), Struct_1(1i, vec2<i32>(-55801i, 46857i), -759f), Struct_1(10350i, vec2<i32>(49515i, -10624i), 1291f), vec4<i32>(2147483647i, -21618i, -23928i, 9061i), -1940f), vec2<i32>(2147483647i, 1473i))), Struct_5(vec4<bool>(false, false, false, true), Struct_3(0i, Struct_1(-28215i, vec2<i32>(0i, 35520i), -221f), -744f, Struct_2(Struct_1(-25292i, vec2<i32>(-48537i, -50128i), -198f), Struct_1(1i, vec2<i32>(759i, -14296i), 322f), Struct_1(1i, vec2<i32>(i32(-2147483648), -2842i), 242f), vec4<i32>(610i, 0i, -16423i, -8308i), 1615f), vec2<i32>(14847i, 0i))), Struct_5(vec4<bool>(false, true, false, true), Struct_3(2147483647i, Struct_1(21707i, vec2<i32>(-31522i, 2147483647i), 234f), 1146f, Struct_2(Struct_1(-32898i, vec2<i32>(-31239i, 32480i), -510f), Struct_1(1i, vec2<i32>(-12224i, 10088i), -1161f), Struct_1(i32(-2147483648), vec2<i32>(0i, -93375i), -1000f), vec4<i32>(18407i, 54154i, -32402i, -4689i), 772f), vec2<i32>(-1i, -1i))), Struct_5(vec4<bool>(true, false, false, true), Struct_3(-1i, Struct_1(63687i, vec2<i32>(-62250i, 0i), -829f), 1310f, Struct_2(Struct_1(0i, vec2<i32>(i32(-2147483648), 0i), -184f), Struct_1(-12062i, vec2<i32>(2147483647i, i32(-2147483648)), -1263f), Struct_1(-4797i, vec2<i32>(2147483647i, 2147483647i), 3697f), vec4<i32>(i32(-2147483648), 70221i, 37136i, i32(-2147483648)), -370f), vec2<i32>(45600i, -40441i))));

var<private> global3: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = Struct_1(u_input.b, select(_wgslsmith_mod_vec2_i32(-max(global1.b, global1.b), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(arg_0, arg_0) ^ vec2<i32>(global1.b.x, 0i))), vec2<i32>(arg_0, 2147483647i) | global1.b, !(any(vec4<bool>(true, false, false, true)) | any(vec4<bool>(true, false, false, false)))), _wgslsmith_f_op_f32(sign(168f)));
    let var_1 = Struct_5(!vec4<bool>(all(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 4294967295u)), 23u)]), any(!global3[_wgslsmith_index_u32(51705u, 23u)]), true, all(vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(u_input.a, 32u)]);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.c)) + -1000f);
    let var_3 = false;
    var var_4 = vec2<f32>(-1743f, _wgslsmith_f_op_f32(-global1.c));
    return false;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(488f, global1.c)), _wgslsmith_f_op_f32(-global1.c)), 476f, _wgslsmith_f_op_f32(f32(-1f) * -659f), _wgslsmith_f_op_f32(trunc(-955f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(558f, -125f, -294f, -128f), vec4<f32>(-430f, global1.c, 222f, 753f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.c, global1.c, global1.c, global1.c))))), any(vec4<bool>(all(vec4<bool>(false, false, true, arg_1.x)), arg_1.x, any(arg_1.yyz), !arg_1.x))))));
    let var_1 = Struct_2(Struct_1(-_wgslsmith_add_i32(u_input.b, global1.a) & _wgslsmith_clamp_i32(-global1.a, _wgslsmith_sub_i32(12479i, -1i), -6268i), -global1.b >> (~vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_f_op_f32(floor(-1134f))), Struct_1(~(1i & _wgslsmith_mod_i32(arg_0, 2147483647i)), global1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(1475f + 996f))))), Struct_1(-arg_0 ^ (-3675i << (u_input.a % 32u)), global1.b, 326f), firstLeadingBit(vec4<i32>(u_input.b, -_wgslsmith_div_i32(1i, u_input.b), -(8982i & global1.a), _wgslsmith_mult_i32(0i, u_input.b) ^ ~(-1i))), _wgslsmith_f_op_f32(-var_0.x));
    global3 = array<vec2<bool>, 23>();
    let var_2 = firstTrailingBit(var_1.a.b.x);
    let var_3 = var_1.d.x;
    return ~_wgslsmith_sub_vec2_i32(-(~vec2<i32>(25172i, -17296i)), global1.b << (vec2<u32>(~0u, ~0u) % vec2<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> vec3<bool> {
    global0 = array<Struct_3, 32>();
    let var_0 = _wgslsmith_clamp_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(~u_input.a, 5608u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, 0u), vec2<u32>(u_input.a, 0u))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(39260u, 12237u, u_input.a), vec3<u32>(arg_3, u_input.a, arg_3)), ~vec3<u32>(u_input.a, 20192u, arg_3)))), ~(~select(vec3<u32>(u_input.a, 1u, u_input.a) ^ vec3<u32>(arg_3, 1u, 4294967295u), vec3<u32>(u_input.a, 0u, arg_3), true)), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, arg_3, u_input.a))), 52653u), ~(~vec3<u32>(arg_3, u_input.a, arg_3))));
    global1 = Struct_1(-2147483647i, func_4(global1.a, vec4<bool>(arg_0, (true != arg_0) && func_3(2147483647i), arg_0, !any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + arg_1.d.e)))));
    let var_1 = Struct_1(min(u_input.b, -arg_1.b.a), vec2<i32>(reverseBits(u_input.b), -abs(global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.c - 620f) * _wgslsmith_f_op_f32(global1.c * global1.c)) - global1.c) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -751f)))));
    let var_2 = 184f;
    return select(vec3<bool>(func_3(0i), arg_0, var_1.c != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) * -679f)), select(select(vec3<bool>(arg_0, false, any(vec4<bool>(arg_0, true, true, arg_0))), !vec3<bool>(true, arg_0, arg_0), select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, arg_0)), vec3<bool>(false, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, arg_0))), vec3<bool>(arg_1.b.c != _wgslsmith_f_op_f32(f32(-1f) * -1461f), !all(vec3<bool>(false, arg_0, true)), (var_1.c > var_2) | all(vec4<bool>(true, true, arg_0, true))), false | func_3(var_1.a)), select(!vec3<bool>(func_3(u_input.b), var_2 <= -1130f, false), !select(select(vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, false, arg_0)), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, true)), all(vec2<bool>(false, arg_0))), !vec3<bool>(any(vec4<bool>(true, false, true, arg_0)), false, !arg_0)));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec3<i32>) -> vec2<bool> {
    var var_0 = Struct_2(Struct_1(select(u_input.b, -2147483647i, any(arg_1.zy) | false), global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + global1.c)))), Struct_1(-1i, vec2<i32>(u_input.b ^ global1.a, countOneBits(arg_2.x)) | global1.b, _wgslsmith_f_op_f32(-1557f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - global1.c)))), Struct_1(i32(-1i) * -28654i, vec2<i32>(global1.a, ~abs(-1i)), _wgslsmith_f_op_f32(f32(-1f) * -731f)), vec4<i32>(-10633i, ~(~0i), ~(1i ^ _wgslsmith_sub_i32(u_input.b, u_input.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(min(global1.b.x, arg_2.x), _wgslsmith_add_i32(u_input.b, 708i)), vec2<i32>(global1.b.x, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.c)))))));
    var var_1 = select(!select(select(select(vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(true, false, true, true), arg_1.x), !vec4<bool>(false, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, true, true, true)), select(!vec4<bool>(true, arg_1.x, arg_1.x, false), !vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), arg_1.x | false), select(select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(true, arg_1.x, false, true)), !vec4<bool>(true, arg_1.x, false, arg_1.x), -2147483647i <= global1.a)), !(!(!select(vec4<bool>(false, true, true, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, false), arg_1.x))), arg_1.x);
    var_0 = Struct_2(var_0.a, var_0.c, var_0.b, vec4<i32>(global1.a, ~(-1i), _wgslsmith_mult_i32(1i, var_0.c.a & u_input.b) | reverseBits(~u_input.b), -global1.a), -290f);
    let var_2 = Struct_4(u_input.b, -1i, Struct_2(var_0.a, Struct_1(_wgslsmith_mult_i32(-arg_2.x, arg_2.x), reverseBits(_wgslsmith_div_vec2_i32(arg_2.xy, global1.b)), -1000f), var_0.b, ~(_wgslsmith_mod_vec4_i32(var_0.d, var_0.d) << (abs(vec4<u32>(1u, 1u, arg_0.x, 1u)) % vec4<u32>(32u))), var_0.b.c), Struct_3(~(-1i), Struct_1(abs(var_0.c.b.x), -select(vec2<i32>(global1.b.x, u_input.b), arg_2.xy, vec2<bool>(true, true)), _wgslsmith_f_op_f32(trunc(-226f))), _wgslsmith_f_op_f32(var_0.e + var_0.b.c), Struct_2(var_0.c, var_0.a, var_0.c, vec4<i32>(var_0.a.b.x, abs(33029i), firstLeadingBit(global1.b.x), firstLeadingBit(var_0.a.a)), -835f), global1.b));
    var var_3 = Struct_5(!(!(!select(vec4<bool>(false, arg_1.x, var_1.x, arg_1.x), vec4<bool>(var_1.x, false, false, false), false))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 57898u), _wgslsmith_add_vec2_u32(arg_0.zz, vec2<u32>(0u, 2929u))), vec2<u32>(_wgslsmith_mod_u32(arg_0.x, ~0u), 19452u >> (u_input.a % 32u))), 32u)]);
    return select(var_3.a.wz, func_2(!func_2(var_1.x, var_2.d, _wgslsmith_sub_i32(41889i, -15041i), ~arg_0.x).x, Struct_3(_wgslsmith_add_i32(~1i, _wgslsmith_sub_i32(2147483647i, 2147483647i)), Struct_1(49817i, func_4(var_3.b.a, vec4<bool>(var_1.x, var_3.a.x, true, var_1.x)), var_0.c.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d.c)), Struct_2(Struct_1(1i, vec2<i32>(-1i, 1i), var_2.d.b.c), var_3.b.d.b, Struct_1(-5801i, vec2<i32>(var_0.a.b.x, -2147483647i), -527f), vec4<i32>(-32304i, global1.a, 61127i, var_0.a.a), _wgslsmith_f_op_f32(global1.c - var_3.b.b.c)), ~vec2<i32>(14804i, -1568i)), 2647i, u_input.a).xz, true || any(select(var_3.a, vec4<bool>(var_3.a.x, arg_1.x, var_1.x, var_1.x), any(var_3.a.yyz))));
}

fn func_6(arg_0: vec2<bool>) -> vec3<i32> {
    global1 = Struct_1(-2147483647i, vec2<i32>(_wgslsmith_div_i32(-10782i, global1.b.x) << (u_input.a % 32u), -_wgslsmith_sub_i32(global1.a, global1.a) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(0i, -33843i, -31579i), vec3<i32>(2147483647i, 1i, 3598i)), vec3<i32>(-26067i, 0i, u_input.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -251f) * _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(771f + 1915f))))));
    global3 = array<vec2<bool>, 23>();
    var var_0 = arg_0.x;
    var var_1 = global1.c;
    let var_2 = ~vec3<u32>(u_input.a, firstTrailingBit(select(4294967295u, 0u << (u_input.a % 32u), arg_0.x || arg_0.x)), u_input.a);
    return ~(-(firstTrailingBit(-vec3<i32>(u_input.b, u_input.b, 1i)) ^ _wgslsmith_add_vec3_i32(-vec3<i32>(global1.b.x, -11271i, u_input.b), max(vec3<i32>(u_input.b, global1.b.x, 1i), vec3<i32>(2147483647i, global1.b.x, -2147483647i)))));
}

fn func_1() -> i32 {
    let var_0 = -_wgslsmith_mod_vec3_i32(func_6(func_5(countOneBits(vec3<u32>(0u, u_input.a, 61340u)), func_2(true, global0[_wgslsmith_index_u32(0u, 32u)], 1i, 4294967295u), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, global1.a, u_input.b), vec3<i32>(2147483647i, u_input.b, -3204i)))), func_6(vec2<bool>(true, false)));
    let var_1 = _wgslsmith_sub_u32(u_input.a, ~(~u_input.a));
    let var_2 = global0[_wgslsmith_index_u32(u_input.a, 32u)];
    global2 = array<Struct_5, 23>();
    var var_3 = Struct_5(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1, var_1 ^ 0u) >> (~countOneBits(select(4294967295u, u_input.a, true)) % 32u), 32u)]);
    return var_2.d.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_5, 23>();
    var var_0 = global0[_wgslsmith_index_u32(1u, 32u)];
    var var_1 = _wgslsmith_div_vec3_u32(select(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(37201u, u_input.a, 25772u) ^ vec3<u32>(76234u, 1u, u_input.a)) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 21665u), ~vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), vec3<u32>(~u_input.a, 32450u, u_input.a >> (abs(u_input.a) % 32u)), false), vec3<u32>(4294967295u, _wgslsmith_clamp_u32(u_input.a, ~_wgslsmith_dot_vec4_u32(vec4<u32>(22590u, u_input.a, 1u, u_input.a), vec4<u32>(4294967295u, u_input.a, 4294967295u, 0u)), 6741u), abs(u_input.a) & _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(26772u, 49182u, u_input.a), vec3<u32>(66880u, 4294967295u, u_input.a)), 0u)));
    global1 = Struct_1(-(~1i), vec2<i32>(func_1(), -52707i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(global1.c))))))));
    let var_2 = -2147483647i;
    let var_3 = vec2<u32>(22671u, 6064u);
    let x = u_input.a;
    s_output = StorageBuffer(45154u);
}

