struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<i32> = vec3<i32>(0i, 1i, 0i);

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global3: array<Struct_4, 20> = array<Struct_4, 20>(Struct_4(Struct_3(Struct_2(Struct_1(11305i, vec3<f32>(771f, -401f, -1000f), vec3<u32>(1u, 100745u, 1u)), true, Struct_1(-1227i, vec3<f32>(-344f, 215f, 1237f), vec3<u32>(4294967295u, 41320u, 1u)), false), i32(-2147483648)), Struct_2(Struct_1(-23853i, vec3<f32>(234f, -266f, -241f), vec3<u32>(1u, 0u, 4374u)), true, Struct_1(0i, vec3<f32>(-1462f, 869f, 955f), vec3<u32>(0u, 4294967295u, 49606u)), false), vec2<i32>(54691i, -1507i)), Struct_4(Struct_3(Struct_2(Struct_1(698i, vec3<f32>(-452f, -519f, 260f), vec3<u32>(4294967295u, 26715u, 16309u)), true, Struct_1(-1i, vec3<f32>(-1436f, -466f, 371f), vec3<u32>(1u, 4294967295u, 72813u)), true), -65194i), Struct_2(Struct_1(1i, vec3<f32>(1870f, 496f, -691f), vec3<u32>(898u, 1u, 20419u)), false, Struct_1(-33289i, vec3<f32>(902f, 1195f, 1320f), vec3<u32>(0u, 33361u, 81698u)), true), vec2<i32>(13515i, i32(-2147483648))), Struct_4(Struct_3(Struct_2(Struct_1(13748i, vec3<f32>(1000f, -1965f, 514f), vec3<u32>(4294967295u, 4294967295u, 41875u)), false, Struct_1(29050i, vec3<f32>(-1000f, -111f, -856f), vec3<u32>(0u, 126519u, 1u)), true), -56842i), Struct_2(Struct_1(-13114i, vec3<f32>(-829f, 147f, -271f), vec3<u32>(29070u, 0u, 4294967295u)), false, Struct_1(1i, vec3<f32>(-672f, 212f, 1311f), vec3<u32>(4294967295u, 77156u, 20444u)), true), vec2<i32>(4224i, -18237i)), Struct_4(Struct_3(Struct_2(Struct_1(-1i, vec3<f32>(102f, -362f, -392f), vec3<u32>(1u, 1u, 63094u)), false, Struct_1(i32(-2147483648), vec3<f32>(1099f, -705f, 1459f), vec3<u32>(23696u, 20022u, 24114u)), false), -1i), Struct_2(Struct_1(-1i, vec3<f32>(-304f, 1852f, 260f), vec3<u32>(21591u, 72011u, 22610u)), true, Struct_1(0i, vec3<f32>(1777f, -871f, 185f), vec3<u32>(27522u, 4294967295u, 0u)), true), vec2<i32>(-1615i, 0i)), Struct_4(Struct_3(Struct_2(Struct_1(2147483647i, vec3<f32>(-690f, -1171f, -516f), vec3<u32>(53538u, 23979u, 1u)), false, Struct_1(0i, vec3<f32>(571f, 1443f, -343f), vec3<u32>(45611u, 59047u, 19554u)), true), 37495i), Struct_2(Struct_1(9996i, vec3<f32>(-118f, -567f, 113f), vec3<u32>(4294967295u, 0u, 41637u)), true, Struct_1(-15374i, vec3<f32>(904f, 1566f, 1000f), vec3<u32>(4294967295u, 45908u, 1u)), true), vec2<i32>(i32(-2147483648), 1i)), Struct_4(Struct_3(Struct_2(Struct_1(i32(-2147483648), vec3<f32>(469f, -1193f, 707f), vec3<u32>(1u, 4294967295u, 4294967295u)), true, Struct_1(2610i, vec3<f32>(-1505f, -449f, -920f), vec3<u32>(18983u, 0u, 17285u)), false), 0i), Struct_2(Struct_1(1i, vec3<f32>(560f, 2138f, -1223f), vec3<u32>(4294967295u, 21488u, 59842u)), true, Struct_1(-32672i, vec3<f32>(159f, 180f, 247f), vec3<u32>(42403u, 1u, 0u)), false), vec2<i32>(1i, 52204i)), Struct_4(Struct_3(Struct_2(Struct_1(-1i, vec3<f32>(1000f, -750f, 1943f), vec3<u32>(87789u, 3782u, 82884u)), true, Struct_1(i32(-2147483648), vec3<f32>(-1124f, 1973f, -532f), vec3<u32>(1u, 1u, 10714u)), true), 2147483647i), Struct_2(Struct_1(i32(-2147483648), vec3<f32>(-293f, -627f, 369f), vec3<u32>(76907u, 7221u, 86299u)), true, Struct_1(20751i, vec3<f32>(-1000f, -310f, -1126f), vec3<u32>(1u, 4294967295u, 1u)), true), vec2<i32>(2147483647i, 13756i)), Struct_4(Struct_3(Struct_2(Struct_1(4138i, vec3<f32>(-725f, 434f, -1000f), vec3<u32>(0u, 0u, 4007u)), false, Struct_1(1i, vec3<f32>(-191f, -1082f, 1000f), vec3<u32>(1u, 4294967295u, 29912u)), true), 0i), Struct_2(Struct_1(0i, vec3<f32>(-559f, -1030f, -1799f), vec3<u32>(51393u, 4294967295u, 11491u)), false, Struct_1(1i, vec3<f32>(852f, 857f, 1311f), vec3<u32>(11919u, 4294967295u, 76217u)), false), vec2<i32>(-2655i, 935i)), Struct_4(Struct_3(Struct_2(Struct_1(-10917i, vec3<f32>(187f, 1621f, -230f), vec3<u32>(0u, 0u, 0u)), true, Struct_1(-6990i, vec3<f32>(-1606f, -494f, 1001f), vec3<u32>(4520u, 4294967295u, 0u)), false), -1i), Struct_2(Struct_1(67468i, vec3<f32>(-285f, 712f, 1478f), vec3<u32>(24347u, 0u, 70970u)), true, Struct_1(8373i, vec3<f32>(-1387f, 157f, -299f), vec3<u32>(1u, 18585u, 38879u)), true), vec2<i32>(-14616i, 44284i)), Struct_4(Struct_3(Struct_2(Struct_1(-56183i, vec3<f32>(-690f, -815f, 1139f), vec3<u32>(0u, 4294967295u, 29690u)), true, Struct_1(-39926i, vec3<f32>(-274f, -2534f, 1196f), vec3<u32>(0u, 4294967295u, 16887u)), true), 9041i), Struct_2(Struct_1(-10553i, vec3<f32>(-1038f, 610f, -1000f), vec3<u32>(0u, 4294967295u, 0u)), true, Struct_1(25226i, vec3<f32>(-1000f, 824f, 535f), vec3<u32>(1u, 1262u, 1986u)), false), vec2<i32>(64356i, 1i)), Struct_4(Struct_3(Struct_2(Struct_1(-75176i, vec3<f32>(-785f, 716f, 134f), vec3<u32>(1u, 19617u, 19886u)), false, Struct_1(34406i, vec3<f32>(-835f, -1261f, 464f), vec3<u32>(532u, 4294967295u, 4294967295u)), true), -32332i), Struct_2(Struct_1(-21222i, vec3<f32>(-645f, 812f, 1459f), vec3<u32>(4294967295u, 62777u, 0u)), false, Struct_1(31514i, vec3<f32>(-1883f, 299f, 1067f), vec3<u32>(123046u, 1u, 3927u)), true), vec2<i32>(1399i, 1237i)), Struct_4(Struct_3(Struct_2(Struct_1(-1i, vec3<f32>(682f, -1681f, 797f), vec3<u32>(38260u, 86357u, 16620u)), true, Struct_1(1i, vec3<f32>(-1318f, 162f, -1362f), vec3<u32>(0u, 1u, 33881u)), false), 9586i), Struct_2(Struct_1(2147483647i, vec3<f32>(-2341f, 658f, -1508f), vec3<u32>(0u, 25145u, 4294967295u)), false, Struct_1(25631i, vec3<f32>(782f, -1354f, -1073f), vec3<u32>(4294967295u, 42289u, 34172u)), false), vec2<i32>(41252i, 16570i)), Struct_4(Struct_3(Struct_2(Struct_1(-19889i, vec3<f32>(1163f, -1521f, 187f), vec3<u32>(44884u, 1u, 1u)), true, Struct_1(1i, vec3<f32>(-1000f, -2284f, 1733f), vec3<u32>(33553u, 65153u, 4294967295u)), false), i32(-2147483648)), Struct_2(Struct_1(-1i, vec3<f32>(-488f, 201f, -557f), vec3<u32>(1u, 127307u, 0u)), true, Struct_1(-14207i, vec3<f32>(1006f, -189f, 1926f), vec3<u32>(1u, 62746u, 4294967295u)), false), vec2<i32>(34923i, 5152i)), Struct_4(Struct_3(Struct_2(Struct_1(-20191i, vec3<f32>(-1000f, 1014f, 218f), vec3<u32>(17452u, 0u, 4294967295u)), false, Struct_1(41760i, vec3<f32>(1769f, -774f, -108f), vec3<u32>(1u, 1u, 0u)), false), 1i), Struct_2(Struct_1(5902i, vec3<f32>(-1935f, 388f, -1460f), vec3<u32>(4294967295u, 4294967295u, 0u)), false, Struct_1(0i, vec3<f32>(569f, 357f, 1580f), vec3<u32>(18060u, 1u, 4294967295u)), false), vec2<i32>(-26720i, -34835i)), Struct_4(Struct_3(Struct_2(Struct_1(-29586i, vec3<f32>(1216f, -1278f, 1000f), vec3<u32>(4294967295u, 1u, 37768u)), true, Struct_1(1i, vec3<f32>(-126f, -1000f, -1000f), vec3<u32>(4294967295u, 60604u, 103128u)), true), 26896i), Struct_2(Struct_1(-28107i, vec3<f32>(414f, 946f, -450f), vec3<u32>(3105u, 1u, 4294967295u)), true, Struct_1(-20664i, vec3<f32>(735f, 1000f, 516f), vec3<u32>(0u, 0u, 4294967295u)), true), vec2<i32>(i32(-2147483648), 0i)), Struct_4(Struct_3(Struct_2(Struct_1(2147483647i, vec3<f32>(-112f, 1829f, 1200f), vec3<u32>(43852u, 32646u, 4829u)), true, Struct_1(2147483647i, vec3<f32>(1080f, 108f, 783f), vec3<u32>(77660u, 4294967295u, 10084u)), true), 5661i), Struct_2(Struct_1(8609i, vec3<f32>(342f, -698f, -796f), vec3<u32>(48914u, 4294967295u, 4294967295u)), false, Struct_1(2147483647i, vec3<f32>(109f, -411f, -361f), vec3<u32>(1u, 4362u, 1u)), true), vec2<i32>(43595i, -28388i)), Struct_4(Struct_3(Struct_2(Struct_1(-21354i, vec3<f32>(1000f, -1009f, -1008f), vec3<u32>(4294967295u, 47843u, 93937u)), true, Struct_1(1i, vec3<f32>(873f, -106f, -951f), vec3<u32>(14177u, 8300u, 931u)), false), -15648i), Struct_2(Struct_1(-1i, vec3<f32>(445f, 602f, 1266f), vec3<u32>(4294967295u, 1u, 45532u)), false, Struct_1(2147483647i, vec3<f32>(-554f, -340f, -102f), vec3<u32>(95864u, 9922u, 4294967295u)), true), vec2<i32>(0i, 2147483647i)), Struct_4(Struct_3(Struct_2(Struct_1(7852i, vec3<f32>(1351f, -473f, -1149f), vec3<u32>(4294967295u, 41477u, 98113u)), false, Struct_1(37259i, vec3<f32>(-425f, -133f, -1211f), vec3<u32>(1u, 0u, 1u)), false), i32(-2147483648)), Struct_2(Struct_1(-21444i, vec3<f32>(-1000f, -445f, -1000f), vec3<u32>(4294967295u, 1u, 42324u)), false, Struct_1(1i, vec3<f32>(282f, 274f, 571f), vec3<u32>(46509u, 0u, 1u)), false), vec2<i32>(-44397i, -1i)), Struct_4(Struct_3(Struct_2(Struct_1(0i, vec3<f32>(172f, -164f, -1000f), vec3<u32>(4294967295u, 0u, 21229u)), false, Struct_1(-21526i, vec3<f32>(1426f, 803f, -367f), vec3<u32>(4294967295u, 1u, 1u)), false), -1i), Struct_2(Struct_1(1i, vec3<f32>(229f, 532f, -1000f), vec3<u32>(0u, 18171u, 73149u)), true, Struct_1(-23060i, vec3<f32>(-214f, 134f, -2044f), vec3<u32>(49132u, 1u, 10007u)), false), vec2<i32>(3003i, 0i)), Struct_4(Struct_3(Struct_2(Struct_1(-1i, vec3<f32>(1483f, -1000f, -807f), vec3<u32>(7998u, 20402u, 13402u)), false, Struct_1(-38084i, vec3<f32>(-680f, 1554f, -541f), vec3<u32>(4294967295u, 0u, 1u)), false), 2147483647i), Struct_2(Struct_1(1i, vec3<f32>(-1000f, -1215f, -1170f), vec3<u32>(58279u, 1u, 0u)), false, Struct_1(2147483647i, vec3<f32>(-248f, -650f, 731f), vec3<u32>(4294967295u, 0u, 19266u)), false), vec2<i32>(1i, -58722i)));

var<private> global4: vec3<f32> = vec3<f32>(-355f, 597f, -452f);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: Struct_5, arg_2: vec2<bool>, arg_3: u32) -> vec3<f32> {
    let var_0 = select(-56305i, _wgslsmith_div_i32(1i, _wgslsmith_div_i32(37666i, 1i)), false);
    var var_1 = arg_1.a;
    var_1 = vec4<bool>(true, !var_1.x, arg_0 < ~1u, !(!arg_1.d.b));
    var var_2 = ~vec3<u32>(31864u, _wgslsmith_mod_u32(61246u, ~_wgslsmith_mult_u32(arg_1.d.c.c.x, 4294967295u)), ~arg_1.c);
    let var_3 = _wgslsmith_add_u32(arg_0, arg_1.d.c.c.x);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(1091f * 1440f))) * _wgslsmith_f_op_f32(exp2(global4.x))), 429f, -1923f);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_1(-1i, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_sub_u32(~1u, abs(116651u)), Struct_5(vec4<bool>(true, !global2.x, false, true), !select(vec3<bool>(false, true, false), global2.zyy, arg_1), ~(65695u << (1u % 32u)), Struct_2(Struct_1(global1.x, vec3<f32>(global4.x, global4.x, arg_0.x), vec3<u32>(12494u, 74168u, 2918u)), all(vec2<bool>(arg_1, false)), Struct_1(3645i, vec3<f32>(-903f, -1053f, global4.x), vec3<u32>(4294967295u, 1u, 54682u)), false), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1444f, global4.x, 1059f) + vec3<f32>(arg_2, 211f, arg_0.x)) + vec3<f32>(1783f, -1332f, global4.x))), global2.zy, ~max(~20279u, 1u))), ~vec3<u32>(max(_wgslsmith_clamp_u32(81130u, 0u, 64091u), _wgslsmith_clamp_u32(4294967295u, 19262u, 4858u)), ~29195u, 1u));
    let var_1 = arg_1;
    var var_2 = select(!select(vec3<bool>(true, any(vec4<bool>(true, var_1, true, arg_1)), true), select(global2.wzz, !vec3<bool>(false, arg_1, var_1), select(global2.xzw, vec3<bool>(global2.x, arg_1, false), global2.yyz)), all(vec3<bool>(true, true, true))), global2.xwx, global2.xyw);
    global2 = select(select(vec4<bool>(!(var_2.x || false), var_2.x, true, !(!arg_1)), vec4<bool>(var_2.x, any(!vec4<bool>(false, true, arg_1, true)), true, !(!var_2.x)), true), !(!vec4<bool>(288f > global4.x, !arg_1, !global2.x, true)), !vec4<bool>(false, select(1i, -76076i, var_1) != -1i, var_1, !var_2.x));
    let var_3 = 0u;
    return Struct_1(0i, vec3<f32>(433f, -1004f, _wgslsmith_f_op_vec3_f32(func_3(~(~var_0.c.x), Struct_5(select(vec4<bool>(arg_1, arg_1, var_1, global2.x), vec4<bool>(var_2.x, true, true, arg_1), vec4<bool>(false, global2.x, true, true)), select(vec3<bool>(var_2.x, true, var_1), global2.xzx, true), _wgslsmith_div_u32(var_3, 11126u), Struct_2(Struct_1(var_0.a, arg_0.zxy, var_0.c), true, Struct_1(-2147483647i, arg_0.zyw, var_0.c), true), vec3<f32>(var_0.b.x, -1000f, -1340f)), select(vec2<bool>(false, true), vec2<bool>(false, true), all(vec3<bool>(global2.x, false, arg_1))), 38128u)).x), vec3<u32>(var_0.c.x, 7588u, _wgslsmith_dot_vec4_u32(vec4<u32>(~var_3, abs(0u), var_3, 1u), countOneBits(~vec4<u32>(var_0.c.x, 0u, var_0.c.x, 4294967295u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> vec3<i32> {
    var var_0 = i32(-1i) * -37298i;
    global3 = array<Struct_4, 20>();
    let var_1 = -1i;
    global3 = array<Struct_4, 20>();
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.b.a.b + vec3<f32>(592f, arg_1.b.a.b.x, global4.x)) * arg_1.a.a.c.b);
    return -min(~(~vec3<i32>(-6738i, -1i, -1i)) | vec3<i32>(firstTrailingBit(u_input.c), 2147483647i ^ arg_1.c.x, arg_0.a), vec3<i32>(-(~u_input.c), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, u_input.c, arg_1.c.x), vec3<i32>(0i, arg_0.a, 20050i)) >> (4294967295u % 32u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> Struct_2 {
    global1 = _wgslsmith_mod_vec3_i32(-(~(-reverseBits(vec3<i32>(2147483647i, 1i, 5629i)))), func_4(func_2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global4.x, -228f, global4.x, 611f), vec4<f32>(-264f, 1926f, global4.x, -879f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 638f, global4.x, -1489f)), arg_2)), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1106f * 627f) - _wgslsmith_f_op_f32(-global4.x))), Struct_4(Struct_3(Struct_2(Struct_1(u_input.a, vec3<f32>(-419f, 1631f, global4.x), vec3<u32>(9085u, 77609u, arg_1)), false, Struct_1(u_input.a, vec3<f32>(-1243f, 1357f, global4.x), vec3<u32>(4294967295u, 5455u, 27878u)), arg_0.x), _wgslsmith_mod_i32(0i, global1.x)), Struct_2(Struct_1(global1.x, vec3<f32>(-1419f, -167f, 256f), vec3<u32>(arg_1, arg_1, 34676u)), !arg_0.x, Struct_1(2147483647i, vec3<f32>(1563f, global4.x, -267f), vec3<u32>(arg_1, 8487u, 22325u)), all(global2.wyy)), vec2<i32>(u_input.a, u_input.b.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, global1.x), vec2<i32>(global1.x, -1i)), _wgslsmith_add_vec2_i32(global1.xy, vec2<i32>(u_input.b.x, -11579i))) > ~global1.x));
    let var_0 = -vec3<i32>(28915i, u_input.a, ~23051i);
    let var_1 = u_input.b.x ^ var_0.x;
    let var_2 = Struct_5(vec4<bool>(false, global2.x, all(!(!vec3<bool>(false, arg_0.x, true))), true), global2.yxw, 17265u >> (abs(_wgslsmith_div_u32(arg_1, 14260u) ^ arg_1) % 32u), Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(736f, global4.x, global4.x, global4.x)), any(vec2<bool>(false, global2.x)), -643f), all(select(global2.zw, !global2.wz, !vec2<bool>(arg_0.x, arg_0.x))), func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-115f, -230f, -1314f, -151f) - vec4<f32>(global4.x, 1037f, 283f, -1656f))), true, _wgslsmith_f_op_f32(trunc(global4.x))), arg_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-977f + global4.x), func_2(vec4<f32>(global4.x, 431f, -1148f, -472f), true, global4.x).b.x, _wgslsmith_f_op_f32(-449f - global4.x)))));
    global3 = array<Struct_4, 20>();
    return Struct_2(var_2.d.c, all(vec3<bool>(arg_0.x, !arg_2, var_0.x == 2147483647i)) && false, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-34811i), firstTrailingBit(global1.x), select(2147483647i, 7468i, arg_2), u_input.c), vec4<i32>(var_0.x, 1i, var_0.x, var_0.x) & vec4<i32>(global1.x, var_1, 13599i, 2147483647i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -671f, global4.x)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, global4.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(390f, -547f, -465f))), !global2.x))), vec3<u32>(31507u, firstLeadingBit(~4294967295u), arg_1 ^ var_2.c)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(vec4<i32>(global1.x, ~_wgslsmith_mod_i32(19097i, -5684i), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(4742i, 20421i, 2770i), vec3<i32>(14520i, u_input.c, -32009i))), 10960i)) | vec4<i32>(2147483647i, ~(select(global1.x, u_input.a, true) ^ global1.x), u_input.c, -2147483647i);
    let var_1 = vec4<bool>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -689f) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(690f)) - _wgslsmith_f_op_f32(global4.x + global4.x)))), true, global2.x);
    let var_2 = func_1(select(var_1, vec4<bool>(all(!var_1), any(!vec3<bool>(false, true, var_1.x)), select(global4.x <= 113f, global2.x, global2.x), global4.x >= _wgslsmith_f_op_f32(floor(global4.x))), all(!vec3<bool>(global2.x, false, global2.x))), 0u, false);
    let var_3 = var_0.wxx ^ vec3<i32>(-50053i, -36957i, ~(var_2.c.a | select(-2147483647i, var_2.c.a, true)));
    var var_4 = vec3<i32>(global1.x & -1i, func_4(Struct_1(abs(-1i), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1353f, 2436f, global4.x), vec3<f32>(var_2.a.b.x, 1159f, var_2.c.b.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a.b.x, var_2.c.b.x, global4.x)))), _wgslsmith_sub_vec3_u32(func_2(vec4<f32>(-258f, 1193f, global4.x, -1274f), true, var_2.a.b.x).c, vec3<u32>(var_2.a.c.x, var_2.a.c.x, 4294967295u))), Struct_4(Struct_3(Struct_2(var_2.c, false, var_2.c, var_2.b), -16769i), func_1(!var_1, ~var_2.c.c.x, all(vec2<bool>(global2.x, true))), ~global1.zz), !(!select(false, var_2.d, true))).x, -(~global1.x));
    var_4 = (var_3 & ~abs(vec3<i32>(-18476i, global1.x, 2147483647i))) | var_3;
    var var_5 = func_1(!vec4<bool>(true, var_1.x & var_2.b, !(global4.x == global4.x), !(!global2.x)), ~_wgslsmith_add_u32(var_2.c.c.x, countOneBits(1u)), !all(var_1.wy));
    let var_6 = abs(func_1(select(var_1, select(var_1, vec4<bool>(true, var_2.b, var_5.d, false), false), select(vec4<bool>(true, var_1.x, false, true), var_1, vec4<bool>(false, var_1.x, true, true))), var_5.c.c.x, var_5.b).c.c.x >> (_wgslsmith_mult_u32(~var_2.c.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.c.c.x, 46780u, var_5.a.c.x, 1u), firstLeadingBit(vec4<u32>(71478u, 12761u, 1u, 4294967295u)))) % 32u));
    let var_7 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c.c.x, vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_mult_i32(-858i, var_5.a.a), var_5.a.a), 0i), -2147483647i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-696f, var_2.c.b.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(251f * -384f), 1300f)), var_2.a.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_5.c.b.x, 1580f))))), _wgslsmith_mod_vec2_u32(abs(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_5.a.c.x, var_7.c.x), abs(var_2.c.c.zz))), vec2<u32>(~var_6 << (var_5.c.c.x % 32u), var_7.c.x)));
}

