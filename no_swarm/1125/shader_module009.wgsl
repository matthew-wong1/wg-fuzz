struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 83308u, 68806u, 65785u);

var<private> global1: array<Struct_5, 28> = array<Struct_5, 28>(Struct_5(Struct_2(Struct_1(vec3<bool>(false, false, false), 866f, vec3<i32>(-1i, 21208i, i32(-2147483648))), Struct_1(vec3<bool>(true, false, true), 536f, vec3<i32>(1i, -1i, 2262i)), vec3<u32>(705u, 4294967295u, 42684u), Struct_1(vec3<bool>(true, false, false), 561f, vec3<i32>(-1i, -43821i, -18081i)), 17463u), 4884i, 14572u, true, i32(-2147483648)), Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, true), -607f, vec3<i32>(-1830i, 0i, -1i)), Struct_1(vec3<bool>(false, false, true), 130f, vec3<i32>(-37209i, -30604i, i32(-2147483648))), vec3<u32>(58720u, 4294967295u, 3676u), Struct_1(vec3<bool>(false, false, false), -1727f, vec3<i32>(4610i, i32(-2147483648), -3635i)), 1u), 13755i, 35260u, false, -69693i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, false, true), -232f, vec3<i32>(i32(-2147483648), 0i, -37909i)), Struct_1(vec3<bool>(true, false, true), -440f, vec3<i32>(1i, 36518i, -29801i)), vec3<u32>(4294967295u, 4294967295u, 1u), Struct_1(vec3<bool>(true, false, true), 255f, vec3<i32>(-18142i, -26697i, i32(-2147483648))), 4777u), 0i, 1u, true, 0i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, false), -688f, vec3<i32>(-56739i, -8358i, 2147483647i)), Struct_1(vec3<bool>(true, false, true), -155f, vec3<i32>(1697i, -66394i, -18662i)), vec3<u32>(1u, 87832u, 31299u), Struct_1(vec3<bool>(true, false, false), -703f, vec3<i32>(-27486i, 6025i, 3980i)), 4294967295u), 2147483647i, 24698u, true, -1i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, false, false), -856f, vec3<i32>(2147483647i, 39879i, -10124i)), Struct_1(vec3<bool>(false, false, false), 1146f, vec3<i32>(1i, i32(-2147483648), -1i)), vec3<u32>(0u, 4294967295u, 48255u), Struct_1(vec3<bool>(true, false, true), 1276f, vec3<i32>(-4487i, 1i, 5911i)), 0u), i32(-2147483648), 8971u, true, -45267i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, true, true), -670f, vec3<i32>(0i, -19294i, 2147483647i)), Struct_1(vec3<bool>(false, true, false), 1499f, vec3<i32>(19469i, -28845i, 30461i)), vec3<u32>(1u, 1u, 3417u), Struct_1(vec3<bool>(true, true, true), -358f, vec3<i32>(2258i, -16498i, 13592i)), 4294967295u), 16830i, 11983u, true, -36465i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, false, false), -1988f, vec3<i32>(0i, 7332i, 2147483647i)), Struct_1(vec3<bool>(true, false, true), -1145f, vec3<i32>(0i, -32249i, -36817i)), vec3<u32>(32767u, 4294967295u, 0u), Struct_1(vec3<bool>(true, true, false), 316f, vec3<i32>(i32(-2147483648), -1i, -31174i)), 0u), -10741i, 1u, false, -1i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, false, false), -443f, vec3<i32>(-1i, -2715i, 5068i)), Struct_1(vec3<bool>(false, true, false), -308f, vec3<i32>(-1i, 1i, i32(-2147483648))), vec3<u32>(1u, 0u, 60859u), Struct_1(vec3<bool>(false, true, false), 1000f, vec3<i32>(2147483647i, -1i, 1i)), 0u), 2147483647i, 57658u, true, 0i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, true, true), 271f, vec3<i32>(2147483647i, 17088i, -31071i)), Struct_1(vec3<bool>(false, false, true), 1835f, vec3<i32>(26072i, 1i, 2147483647i)), vec3<u32>(0u, 6253u, 4294967295u), Struct_1(vec3<bool>(true, false, true), -376f, vec3<i32>(1i, i32(-2147483648), 22463i)), 4294967295u), 2147483647i, 0u, false, -1i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, false), 1246f, vec3<i32>(2147483647i, 20448i, 14108i)), Struct_1(vec3<bool>(false, true, false), -156f, vec3<i32>(-49246i, 1i, 996i)), vec3<u32>(0u, 1u, 1u), Struct_1(vec3<bool>(false, false, false), 1599f, vec3<i32>(-40084i, -1i, -27934i)), 69584u), 0i, 4294967295u, false, 0i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, true, false), -231f, vec3<i32>(1i, 21640i, -19013i)), Struct_1(vec3<bool>(true, false, true), 1450f, vec3<i32>(1995i, -3160i, -15778i)), vec3<u32>(5733u, 7108u, 0u), Struct_1(vec3<bool>(false, false, false), 1000f, vec3<i32>(23083i, 0i, i32(-2147483648))), 1u), -1i, 28295u, false, -10029i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, false, true), -978f, vec3<i32>(19574i, 0i, 25798i)), Struct_1(vec3<bool>(true, true, false), -449f, vec3<i32>(8666i, 2147483647i, -9382i)), vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec3<bool>(false, false, true), -1000f, vec3<i32>(-57359i, -1i, 65558i)), 40322u), 0i, 68174u, true, -20512i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, true), -668f, vec3<i32>(-6197i, i32(-2147483648), -89804i)), Struct_1(vec3<bool>(true, true, true), 361f, vec3<i32>(9268i, -1i, -17798i)), vec3<u32>(112164u, 1979u, 22089u), Struct_1(vec3<bool>(true, false, true), -733f, vec3<i32>(2147483647i, -49137i, 2147483647i)), 0u), i32(-2147483648), 0u, false, 2147483647i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, false, true), 789f, vec3<i32>(-41935i, 41147i, -1i)), Struct_1(vec3<bool>(false, false, true), -324f, vec3<i32>(29884i, 19278i, -10025i)), vec3<u32>(1u, 1u, 35232u), Struct_1(vec3<bool>(false, true, true), 1107f, vec3<i32>(1i, 16662i, 1456i)), 4294967295u), 24641i, 23739u, true, 0i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, false), -1000f, vec3<i32>(2147483647i, -37400i, -16050i)), Struct_1(vec3<bool>(false, false, false), 1217f, vec3<i32>(-31427i, i32(-2147483648), -67588i)), vec3<u32>(1u, 1u, 4294967295u), Struct_1(vec3<bool>(false, false, true), 520f, vec3<i32>(1i, 0i, 0i)), 51210u), i32(-2147483648), 40263u, false, 34591i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, true, true), 750f, vec3<i32>(30040i, -1078i, 14647i)), Struct_1(vec3<bool>(true, true, true), -654f, vec3<i32>(0i, 2147483647i, 79641i)), vec3<u32>(0u, 0u, 4294967295u), Struct_1(vec3<bool>(true, true, false), 1000f, vec3<i32>(1i, -24102i, -51444i)), 23679u), 53558i, 6723u, false, -1i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, false, false), -968f, vec3<i32>(i32(-2147483648), -10079i, 582i)), Struct_1(vec3<bool>(true, true, true), 1068f, vec3<i32>(-2828i, 9206i, 49117i)), vec3<u32>(4294967295u, 1u, 1u), Struct_1(vec3<bool>(false, false, true), 1495f, vec3<i32>(-1i, 2147483647i, -18705i)), 4294967295u), -49680i, 1u, false, -6837i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, false, false), 1236f, vec3<i32>(1i, i32(-2147483648), 3322i)), Struct_1(vec3<bool>(false, false, false), 1303f, vec3<i32>(-42578i, i32(-2147483648), 0i)), vec3<u32>(36490u, 4294967295u, 0u), Struct_1(vec3<bool>(false, true, false), -468f, vec3<i32>(32357i, i32(-2147483648), 76173i)), 4294967295u), 10910i, 14382u, false, 2147483647i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, false), -784f, vec3<i32>(2147483647i, 19342i, -1i)), Struct_1(vec3<bool>(true, true, true), 1728f, vec3<i32>(1i, i32(-2147483648), 8911i)), vec3<u32>(1u, 77852u, 0u), Struct_1(vec3<bool>(false, false, true), -1328f, vec3<i32>(0i, 41794i, 43380i)), 0u), 2147483647i, 1u, true, -20784i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, false, true), -726f, vec3<i32>(-1i, -36925i, 8578i)), Struct_1(vec3<bool>(false, false, true), -1492f, vec3<i32>(i32(-2147483648), 13074i, -2180i)), vec3<u32>(4294967295u, 4294967295u, 35874u), Struct_1(vec3<bool>(false, false, false), -1283f, vec3<i32>(i32(-2147483648), 0i, i32(-2147483648))), 0u), 2147483647i, 4294967295u, false, -20512i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, false, true), -1673f, vec3<i32>(2147483647i, 0i, 37546i)), Struct_1(vec3<bool>(false, false, true), -916f, vec3<i32>(i32(-2147483648), -4237i, i32(-2147483648))), vec3<u32>(24038u, 1u, 26937u), Struct_1(vec3<bool>(false, true, false), 415f, vec3<i32>(-4171i, -11221i, 24470i)), 25766u), 0i, 71458u, true, 12875i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, true, false), -892f, vec3<i32>(-1i, 3167i, 14746i)), Struct_1(vec3<bool>(true, true, false), -229f, vec3<i32>(2147483647i, 1i, -3769i)), vec3<u32>(14323u, 104751u, 4294967295u), Struct_1(vec3<bool>(true, false, true), 126f, vec3<i32>(-1i, -13887i, 1i)), 1u), -966i, 52954u, true, 51031i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, false), -198f, vec3<i32>(2147483647i, 0i, 1i)), Struct_1(vec3<bool>(false, false, true), 1000f, vec3<i32>(41632i, 2147483647i, 2147483647i)), vec3<u32>(0u, 0u, 30696u), Struct_1(vec3<bool>(false, true, false), -831f, vec3<i32>(0i, 2147483647i, 0i)), 22033u), i32(-2147483648), 1u, true, 0i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, false, false), -1544f, vec3<i32>(2147483647i, 18428i, i32(-2147483648))), Struct_1(vec3<bool>(true, true, true), 402f, vec3<i32>(1i, i32(-2147483648), i32(-2147483648))), vec3<u32>(0u, 0u, 6522u), Struct_1(vec3<bool>(false, false, false), -2396f, vec3<i32>(-6211i, -16974i, 16662i)), 1u), -1i, 1u, false, 1i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, false), -959f, vec3<i32>(2147483647i, -1i, 1i)), Struct_1(vec3<bool>(false, false, false), -149f, vec3<i32>(1i, i32(-2147483648), 18331i)), vec3<u32>(97929u, 109877u, 2824u), Struct_1(vec3<bool>(true, false, true), -861f, vec3<i32>(0i, -45497i, i32(-2147483648))), 0u), -17524i, 39161u, true, -61752i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, true, false), -988f, vec3<i32>(36171i, -49981i, 32575i)), Struct_1(vec3<bool>(true, true, true), -669f, vec3<i32>(60504i, 25103i, i32(-2147483648))), vec3<u32>(1u, 28171u, 25254u), Struct_1(vec3<bool>(false, true, true), 228f, vec3<i32>(-33827i, i32(-2147483648), -14794i)), 36409u), i32(-2147483648), 1550u, false, 10387i), Struct_5(Struct_2(Struct_1(vec3<bool>(true, false, false), 386f, vec3<i32>(2147483647i, 55843i, -1i)), Struct_1(vec3<bool>(false, false, true), -296f, vec3<i32>(0i, -1i, -1i)), vec3<u32>(0u, 12549u, 34833u), Struct_1(vec3<bool>(false, true, true), -1538f, vec3<i32>(-4855i, 41898i, -4417i)), 0u), 4937i, 13425u, true, 1i), Struct_5(Struct_2(Struct_1(vec3<bool>(false, false, false), 297f, vec3<i32>(2147483647i, i32(-2147483648), 10953i)), Struct_1(vec3<bool>(true, true, true), 956f, vec3<i32>(-2585i, -6145i, 23972i)), vec3<u32>(46657u, 52443u, 4294967295u), Struct_1(vec3<bool>(false, true, true), 883f, vec3<i32>(i32(-2147483648), 10768i, i32(-2147483648))), 43060u), -78i, 1u, false, 2147483647i));

var<private> global2: bool = true;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec3<u32>) -> u32 {
    global0 = ~min((abs(vec4<u32>(1u, 0u, 4294967295u, 1u)) & vec4<u32>(65932u, u_input.c.x, 22779u, arg_2.x)) << (select(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 0u, u_input.c.x, global0.x), vec4<u32>(u_input.c.x, arg_2.x, global0.x, arg_1.a)), ~vec4<u32>(arg_2.x, u_input.c.x, 29402u, global0.x), vec4<bool>(true, true, true, true)) % vec4<u32>(32u)), (min(vec4<u32>(1u, 32796u, 51951u, 1u), vec4<u32>(4294967295u, global0.x, 66550u, u_input.c.x)) & abs(vec4<u32>(arg_2.x, u_input.c.x, arg_1.a, 17081u))) ^ ~firstTrailingBit(vec4<u32>(0u, 32635u, arg_1.a, arg_2.x)));
    global1 = array<Struct_5, 28>();
    let var_0 = arg_1.a;
    var var_1 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(~u_input.b.x >> (5282u % 32u), 907i), ~(~(-29046i)));
    let var_2 = Struct_2(Struct_1(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))), arg_0.x, abs(u_input.a.xwx)), Struct_1(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(359f)), _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), true))), vec3<i32>(_wgslsmith_mod_i32(u_input.a.x, 0i), u_input.a.x, -1987i) | ((vec3<i32>(-31765i, u_input.b.x, u_input.b.x) << (arg_2 % vec3<u32>(32u))) << (global0.zwx % vec3<u32>(32u)))), global0.xwy, Struct_1(vec3<bool>(any(vec2<bool>(true, false)) == (-47086i >= u_input.b.x), any(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(step(arg_0.x, 456f)) == arg_0.x), arg_0.x, u_input.a.yzy), 4294967295u);
    return var_2.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_5, arg_2: Struct_2, arg_3: u32) -> vec3<i32> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(423f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b)), arg_2.d.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.a.b)))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.b), _wgslsmith_f_op_f32(floor(-1537f)), _wgslsmith_f_op_f32(arg_1.a.b.b + arg_0.b), _wgslsmith_f_op_f32(max(-1540f, -463f)))))), Struct_2(arg_0, Struct_1(vec3<bool>(arg_1.d, all(vec2<bool>(arg_0.a.x, false)), arg_0.a.x), _wgslsmith_f_op_f32(sign(arg_2.a.b)), arg_2.d.c), global0.xwz, arg_2.a, _wgslsmith_dot_vec3_u32(arg_2.c, vec3<u32>(reverseBits(45881u), global0.x, ~arg_3))), !(!vec4<bool>(all(vec4<bool>(arg_0.a.x, arg_2.a.a.x, arg_2.b.a.x, arg_0.a.x)), arg_1.a.b.a.x, false, any(arg_2.d.a.zx))), select(u_input.c, u_input.c, true != (func_3(vec4<f32>(-304f, arg_2.a.b, 154f, arg_2.d.b), Struct_4(4294967295u), vec3<u32>(arg_2.c.x, u_input.c.x, arg_1.c)) >= arg_3)));
    global0 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.c.x), arg_2.e ^ global0.x, _wgslsmith_sub_u32(arg_3, 1u), var_0.b.e ^ 0u), min(countOneBits(vec4<u32>(var_0.d.x, 64805u, global0.x, 4294967295u) ^ vec4<u32>(4294967295u, var_0.d.x, 1u, 0u)), ~vec4<u32>(1u, u_input.c.x, 56701u, 42247u)), vec4<u32>(arg_3, global0.x, u_input.c.x, ~40096u)), _wgslsmith_mod_vec4_u32(select(firstLeadingBit(select(vec4<u32>(1u, arg_3, arg_3, arg_2.e), vec4<u32>(global0.x, 64528u, u_input.c.x, 65430u), var_0.c)), abs(abs(vec4<u32>(16505u, u_input.c.x, u_input.c.x, 1u))), arg_2.a.a.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_3, 4294967295u, var_0.d.x, arg_1.c), max(vec4<u32>(arg_2.c.x, 77308u, 86706u, arg_1.a.e), vec4<u32>(arg_1.c, arg_3, 4294967295u, 34662u))) ^ countOneBits(~vec4<u32>(0u, 2603u, 4294967295u, u_input.c.x))));
    var var_1 = Struct_2(Struct_1(vec3<bool>(-arg_2.d.c.x <= -13001i, !all(var_0.c), arg_1.a.a.a.x), _wgslsmith_f_op_f32(-arg_0.b), arg_1.a.d.c), var_0.b.b, vec3<u32>(124618u, min(~4294967295u, _wgslsmith_add_u32(global0.x, 50488u)) | arg_2.c.x, abs(u_input.c.x)), Struct_1(vec3<bool>(arg_0.a.x, all(vec4<bool>(false, arg_2.a.a.x, false, arg_0.a.x)), (arg_1.d & false) == (94413u >= global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(-886f - arg_1.a.d.b)))), vec3<i32>(abs(-u_input.a.x), 1i, max(arg_1.b, _wgslsmith_sub_i32(u_input.a.x, arg_2.b.c.x)))), 17137u);
    global2 = !all(vec4<bool>(false & arg_1.d, all(var_1.b.a.xx), any(vec2<bool>(false, arg_2.d.a.x)), all(vec4<bool>(arg_1.d, arg_0.a.x, false, false)))) | arg_0.a.x;
    global0 = min(vec4<u32>(1u, _wgslsmith_div_u32(countOneBits(arg_1.c), _wgslsmith_mult_u32(~29893u, _wgslsmith_dot_vec2_u32(global0.xx, global0.ww))), arg_2.e, 24507u), ~firstLeadingBit(vec4<u32>(_wgslsmith_clamp_u32(42242u, global0.x, arg_1.c), var_0.b.c.x >> (arg_1.c % 32u), select(var_1.c.x, arg_1.a.c.x, arg_2.b.a.x), ~0u)));
    return vec3<i32>(arg_1.e, -9711i, 84091i);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 894f)), _wgslsmith_f_op_f32(abs(1f))), func_4(Struct_1(vec3<bool>(false, false, false), _wgslsmith_f_op_f32(abs(1862f)), u_input.a.xyy), global1[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(982f, 352f, -155f, 462f), vec4<f32>(1000f, -1915f, -872f, -321f), vec4<bool>(true, false, true, true))), Struct_4(global0.x), vec3<u32>(794u, 4294967295u, 1u)), 28u)], Struct_2(Struct_1(vec3<bool>(true, true, true), 191f, u_input.a.yyy), Struct_1(vec3<bool>(true, true, false), -1104f, u_input.a.zyz), global0.xzw << (global0.yyz % vec3<u32>(32u)), Struct_1(vec3<bool>(false, false, true), -1000f, vec3<i32>(-9384i, u_input.a.x, u_input.a.x)), 40049u >> (u_input.c.x % 32u)), _wgslsmith_div_u32(12192u, 63791u))), Struct_1(!vec3<bool>(true, any(vec4<bool>(true, true, false, true)), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1369f + _wgslsmith_f_op_f32(1000f * -913f))), vec3<i32>(u_input.b.x, abs(-6564i), u_input.b.x | ~u_input.a.x)), _wgslsmith_sub_vec3_u32(~(~global0.xyw) | ~abs(vec3<u32>(u_input.c.x, u_input.c.x, 1u)), reverseBits(firstLeadingBit(abs(global0.yxy)))), Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), true), 848f, u_input.a.xwz), _wgslsmith_clamp_u32(u_input.c.x, 4294967295u, u_input.c.x) & _wgslsmith_dot_vec2_u32(~min(vec2<u32>(34500u, global0.x), vec2<u32>(4294967295u, u_input.c.x)), (vec2<u32>(u_input.c.x, 9329u) | vec2<u32>(u_input.c.x, u_input.c.x)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(71005u, u_input.c.x), u_input.c, vec2<u32>(u_input.c.x, 45901u)) % vec2<u32>(32u))));
    global2 = all(!vec4<bool>(var_0.d.a.x, (2147483647i | var_0.d.c.x) <= -2147483647i, var_0.a.a.x, true));
    global2 = all(select(!(!select(var_0.b.a, vec3<bool>(true, var_0.d.a.x, false), var_0.b.a.x)), vec3<bool>(false || var_0.d.a.x, select(any(vec2<bool>(false, false)), false, false), var_0.d.a.x), !(!var_0.d.a.x)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b.b), _wgslsmith_f_op_f32(1977f - -448f)) - var_0.d.b);
    var var_2 = Struct_4(min(var_0.c.x, _wgslsmith_add_u32(countOneBits(~0u), ~global0.x)));
    return var_0.b;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: u32) -> vec3<u32> {
    var var_0 = func_2();
    global1 = array<Struct_5, 28>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-422f, var_0.b, var_0.b, -310f), vec4<f32>(var_0.b, var_0.b, var_0.b, -1000f)) - vec4<f32>(1008f, -1804f, var_0.b, 203f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(564f, 364f, -471f, var_0.b) * vec4<f32>(-1000f, var_0.b, -149f, 1359f)))))), Struct_2(Struct_1(select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(true, var_0.a.x, var_0.a.x), !vec3<bool>(var_0.a.x, var_0.a.x, true)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(677f)))), vec3<i32>(-61232i, ~var_0.c.x, 1i)), Struct_1(select(func_2().a, var_0.a, vec3<bool>(false, var_0.a.x, var_0.a.x)), -1045f, select(vec3<i32>(-2128i, 0i, 2147483647i), select(u_input.a.zyy, u_input.a.wzy, var_0.a), -32316i >= var_0.c.x)), vec3<u32>(arg_2, _wgslsmith_div_u32(arg_1.x, u_input.c.x), u_input.c.x), Struct_1(func_2().a, 1f, vec3<i32>(~2147483647i, _wgslsmith_mod_i32(u_input.b.x, 0i), func_2().c.x)), arg_2), select(vec4<bool>(any(func_2().a), !(!var_0.a.x), false, all(vec3<bool>(var_0.a.x, false, false))), vec4<bool>(var_0.a.x, var_0.a.x, countOneBits(43368u) != ~arg_2, !any(vec3<bool>(false, false, var_0.a.x))), false), _wgslsmith_mod_vec2_u32(arg_1, ~firstLeadingBit(~vec2<u32>(arg_2, 49674u))));
    var var_2 = Struct_5(Struct_2(func_2(), Struct_1(var_1.b.a.a, var_0.b, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -2147483647i, -2147483647i), countOneBits(var_0.c))), firstTrailingBit(vec3<u32>(global0.x, ~0u, var_1.d.x)), var_1.b.d, ~arg_2), min(-(~func_4(var_1.b.b, Struct_5(Struct_2(Struct_1(var_0.a, -582f, var_0.c), Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, true), var_1.b.d.b, var_1.b.b.c), global0.www, Struct_1(var_1.c.zxy, var_0.b, vec3<i32>(var_0.c.x, 15042i, 2147483647i)), 1u), 0i, 1u, true, -53074i), var_1.b, arg_1.x).x), var_1.b.b.c.x), 1u, true, arg_0);
    var_0 = var_2.a.d;
    return vec3<u32>(4294967295u, 0u, ~_wgslsmith_add_u32(firstTrailingBit(global0.x), ~arg_2)) ^ ~(~var_2.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<u32>(1u, 0u), ~(~global0.yw), true);
    global0 = vec4<u32>(43773u, countOneBits(1u), _wgslsmith_div_u32(firstLeadingBit(~var_0.x), 24120u), _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(global0.zxy & vec3<u32>(15907u, 1u, var_0.x), vec3<u32>(0u, 77807u, 0u)), select(_wgslsmith_mod_vec3_u32(~vec3<u32>(global0.x, global0.x, 22655u), global0.yxz), func_1(u_input.a.x, abs(u_input.c), _wgslsmith_sub_u32(69033u, var_0.x)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(abs(min(vec4<u32>(global0.x, 53201u, global0.x, global0.x), vec4<u32>(global0.x, 7505u, 1u, global0.x))))), u_input.a.x, ~vec2<u32>(func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, 713f, -407f, -441f))), Struct_4(global0.x), firstTrailingBit(vec3<u32>(global0.x, 71501u, var_0.x))), min(0u, ~global0.x)), -(~1i));
}

