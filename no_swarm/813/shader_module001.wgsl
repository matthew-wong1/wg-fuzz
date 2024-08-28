struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: u32 = 4294967295u;

var<private> global2: array<f32, 8>;

var<private> global3: vec4<i32> = vec4<i32>(-14192i, -12255i, -8804i, 2147483647i);

var<private> global4: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_2(Struct_1(39757i, vec2<f32>(-161f, 269f), 43649u, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u), -288i), 1000f), Struct_1(-13766i, vec2<f32>(174f, -1138f), 19297u, vec4<u32>(1u, 47314u, 50538u, 16617u), -12405i), Struct_1(0i, vec2<f32>(-383f, -2004f), 0u, vec4<u32>(1545u, 1u, 0u, 4294967295u), -1i), 4294967295u), Struct_4(Struct_2(Struct_1(0i, vec2<f32>(473f, -436f), 1u, vec4<u32>(4680u, 51415u, 0u, 68164u), 1i), -1835f), Struct_1(-1i, vec2<f32>(-1000f, -676f), 2137u, vec4<u32>(0u, 1u, 0u, 21229u), -11598i), Struct_1(0i, vec2<f32>(-698f, -856f), 1u, vec4<u32>(0u, 14653u, 1u, 44102u), 1i), 1u), Struct_4(Struct_2(Struct_1(0i, vec2<f32>(-2596f, 487f), 55166u, vec4<u32>(0u, 0u, 37740u, 80768u), -1i), -118f), Struct_1(2147483647i, vec2<f32>(-451f, 214f), 86903u, vec4<u32>(0u, 4294967295u, 23350u, 0u), -17138i), Struct_1(i32(-2147483648), vec2<f32>(-788f, 1903f), 21425u, vec4<u32>(61591u, 0u, 74480u, 46901u), 1i), 40645u), Struct_4(Struct_2(Struct_1(-12793i, vec2<f32>(1000f, -1829f), 4294967295u, vec4<u32>(4294967295u, 10820u, 4294967295u, 0u), -41596i), -1000f), Struct_1(-5760i, vec2<f32>(-111f, -252f), 35183u, vec4<u32>(17876u, 47u, 0u, 48856u), 1i), Struct_1(i32(-2147483648), vec2<f32>(1000f, -709f), 37165u, vec4<u32>(4294967295u, 26254u, 4294967295u, 4299u), 0i), 0u), Struct_4(Struct_2(Struct_1(2147483647i, vec2<f32>(1519f, 905f), 10031u, vec4<u32>(84403u, 4294967295u, 21373u, 1u), i32(-2147483648)), 476f), Struct_1(-1i, vec2<f32>(714f, -1178f), 20402u, vec4<u32>(4294967295u, 1u, 9142u, 53840u), 0i), Struct_1(41528i, vec2<f32>(992f, -521f), 48463u, vec4<u32>(45815u, 0u, 0u, 0u), -44017i), 4294967295u), Struct_4(Struct_2(Struct_1(-24110i, vec2<f32>(-213f, 160f), 114388u, vec4<u32>(1u, 0u, 0u, 77001u), 2750i), -279f), Struct_1(39802i, vec2<f32>(-780f, -814f), 41578u, vec4<u32>(23869u, 2412u, 4294967295u, 1u), i32(-2147483648)), Struct_1(0i, vec2<f32>(2272f, -1219f), 4294967295u, vec4<u32>(2503u, 0u, 101833u, 12345u), 2147483647i), 39936u), Struct_4(Struct_2(Struct_1(i32(-2147483648), vec2<f32>(1000f, -2229f), 36524u, vec4<u32>(42273u, 1u, 0u, 19272u), 1i), -1954f), Struct_1(21754i, vec2<f32>(472f, 449f), 0u, vec4<u32>(16209u, 4294967295u, 1u, 4520u), -7557i), Struct_1(2147483647i, vec2<f32>(1017f, 113f), 25342u, vec4<u32>(146416u, 4294967295u, 78302u, 48714u), i32(-2147483648)), 116475u), Struct_4(Struct_2(Struct_1(i32(-2147483648), vec2<f32>(1643f, 774f), 80850u, vec4<u32>(35257u, 4294967295u, 32584u, 0u), 19978i), -1892f), Struct_1(2147483647i, vec2<f32>(1018f, -405f), 0u, vec4<u32>(28903u, 4294967295u, 1u, 4294967295u), 1i), Struct_1(2147483647i, vec2<f32>(1122f, -668f), 4294967295u, vec4<u32>(9105u, 1u, 82798u, 0u), -7081i), 48396u), Struct_4(Struct_2(Struct_1(2147483647i, vec2<f32>(1818f, -754f), 0u, vec4<u32>(89345u, 59915u, 1u, 0u), 2147483647i), -313f), Struct_1(-5630i, vec2<f32>(183f, -329f), 63950u, vec4<u32>(0u, 43299u, 49067u, 1u), 2156i), Struct_1(-22419i, vec2<f32>(552f, -1000f), 4294967295u, vec4<u32>(0u, 19006u, 86152u, 23979u), 2147483647i), 19644u), Struct_4(Struct_2(Struct_1(-1i, vec2<f32>(-2509f, 1094f), 0u, vec4<u32>(45584u, 1u, 22318u, 75336u), -56466i), -222f), Struct_1(i32(-2147483648), vec2<f32>(903f, -687f), 1u, vec4<u32>(1u, 28242u, 32218u, 1u), -1i), Struct_1(2147483647i, vec2<f32>(1000f, 235f), 7308u, vec4<u32>(16870u, 17036u, 14769u, 92042u), 1i), 0u), Struct_4(Struct_2(Struct_1(i32(-2147483648), vec2<f32>(1544f, -881f), 4294967295u, vec4<u32>(0u, 0u, 11003u, 1u), -1i), 1000f), Struct_1(i32(-2147483648), vec2<f32>(148f, -330f), 55741u, vec4<u32>(1u, 13698u, 4294967295u, 15716u), 44840i), Struct_1(1i, vec2<f32>(1134f, 222f), 118047u, vec4<u32>(1u, 48770u, 0u, 4294967295u), -16637i), 17471u), Struct_4(Struct_2(Struct_1(14020i, vec2<f32>(-1037f, -1000f), 15310u, vec4<u32>(27728u, 27264u, 25360u, 52284u), 22041i), -865f), Struct_1(1i, vec2<f32>(1000f, 1723f), 4294967295u, vec4<u32>(4294967295u, 0u, 4652u, 4294967295u), -8993i), Struct_1(1302i, vec2<f32>(-758f, 106f), 41491u, vec4<u32>(0u, 4294967295u, 1u, 48349u), -1i), 1u), Struct_4(Struct_2(Struct_1(i32(-2147483648), vec2<f32>(777f, -964f), 4294967295u, vec4<u32>(1u, 35347u, 0u, 4294967295u), -4641i), 635f), Struct_1(1i, vec2<f32>(911f, -129f), 1u, vec4<u32>(4294967295u, 1u, 1u, 31964u), i32(-2147483648)), Struct_1(i32(-2147483648), vec2<f32>(-560f, 1013f), 5911u, vec4<u32>(1u, 68783u, 40433u, 55099u), 44693i), 33321u), Struct_4(Struct_2(Struct_1(0i, vec2<f32>(253f, 1567f), 0u, vec4<u32>(0u, 19054u, 1u, 1u), 2147483647i), -470f), Struct_1(-27994i, vec2<f32>(472f, -1000f), 1u, vec4<u32>(4294967295u, 0u, 174u, 0u), -1i), Struct_1(-29005i, vec2<f32>(-337f, -205f), 4294967295u, vec4<u32>(6757u, 1u, 0u, 23906u), 2147483647i), 29221u), Struct_4(Struct_2(Struct_1(1i, vec2<f32>(-916f, 402f), 4294967295u, vec4<u32>(47184u, 17527u, 1u, 27534u), -1i), 245f), Struct_1(-1i, vec2<f32>(-1829f, -167f), 4294967295u, vec4<u32>(1u, 67098u, 90565u, 0u), -16200i), Struct_1(0i, vec2<f32>(604f, 1913f), 4294967295u, vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), -1i), 4294967295u), Struct_4(Struct_2(Struct_1(-1i, vec2<f32>(1871f, 1000f), 90107u, vec4<u32>(47204u, 4294967295u, 2399u, 4294967295u), 2147483647i), 170f), Struct_1(13420i, vec2<f32>(-1249f, -664f), 39056u, vec4<u32>(39492u, 1u, 20981u, 17146u), 1i), Struct_1(9540i, vec2<f32>(-576f, -640f), 4294967295u, vec4<u32>(1u, 1u, 19973u, 12058u), -25916i), 4294967295u), Struct_4(Struct_2(Struct_1(1i, vec2<f32>(-1139f, -1094f), 66831u, vec4<u32>(84633u, 1u, 0u, 16669u), 1i), -759f), Struct_1(1i, vec2<f32>(154f, -123f), 0u, vec4<u32>(56879u, 1u, 50067u, 1u), -25599i), Struct_1(24691i, vec2<f32>(737f, 1345f), 1u, vec4<u32>(0u, 50516u, 4294967295u, 1u), i32(-2147483648)), 1u), Struct_4(Struct_2(Struct_1(0i, vec2<f32>(849f, -1412f), 8332u, vec4<u32>(34943u, 0u, 10237u, 1u), i32(-2147483648)), 1523f), Struct_1(-1i, vec2<f32>(635f, -540f), 1u, vec4<u32>(4294967295u, 45276u, 1373u, 4294967295u), -1i), Struct_1(2147483647i, vec2<f32>(-404f, 205f), 1u, vec4<u32>(4294967295u, 19560u, 29861u, 64683u), 0i), 1u), Struct_4(Struct_2(Struct_1(0i, vec2<f32>(334f, -610f), 0u, vec4<u32>(0u, 4294967295u, 31984u, 0u), -35602i), -246f), Struct_1(-1i, vec2<f32>(230f, -147f), 0u, vec4<u32>(76827u, 104081u, 1u, 25477u), -5884i), Struct_1(2147483647i, vec2<f32>(-1629f, -408f), 14185u, vec4<u32>(7048u, 0u, 71087u, 40897u), -1i), 48251u), Struct_4(Struct_2(Struct_1(2147483647i, vec2<f32>(521f, -730f), 0u, vec4<u32>(4294967295u, 1u, 0u, 0u), 1i), -1000f), Struct_1(-52086i, vec2<f32>(1363f, 296f), 66050u, vec4<u32>(46496u, 12660u, 0u, 13199u), 1i), Struct_1(12184i, vec2<f32>(1063f, -511f), 4294967295u, vec4<u32>(4294967295u, 91056u, 4294967295u, 18737u), 22222i), 26424u), Struct_4(Struct_2(Struct_1(33715i, vec2<f32>(218f, 251f), 93091u, vec4<u32>(0u, 2841u, 0u, 4294967295u), -70673i), -344f), Struct_1(-4214i, vec2<f32>(940f, 1028f), 0u, vec4<u32>(1u, 1u, 0u, 4294967295u), 9752i), Struct_1(-15817i, vec2<f32>(-1344f, -634f), 1u, vec4<u32>(20548u, 4294967295u, 4294967295u, 4294967295u), 2147483647i), 36007u), Struct_4(Struct_2(Struct_1(24262i, vec2<f32>(-1000f, -211f), 53867u, vec4<u32>(4294967295u, 1u, 0u, 4294967295u), 65020i), 191f), Struct_1(-1i, vec2<f32>(-2196f, 411f), 4294967295u, vec4<u32>(15231u, 4294967295u, 1u, 1u), -5083i), Struct_1(1i, vec2<f32>(-746f, -918f), 4294967295u, vec4<u32>(19299u, 65701u, 0u, 52742u), i32(-2147483648)), 25539u), Struct_4(Struct_2(Struct_1(-30865i, vec2<f32>(421f, 1359f), 0u, vec4<u32>(44341u, 4294967295u, 40802u, 70049u), -63782i), -710f), Struct_1(i32(-2147483648), vec2<f32>(187f, -604f), 33306u, vec4<u32>(25860u, 86853u, 4294967295u, 0u), 1i), Struct_1(2975i, vec2<f32>(519f, 1565f), 0u, vec4<u32>(1u, 29639u, 4294967295u, 0u), 1226i), 1u), Struct_4(Struct_2(Struct_1(-1i, vec2<f32>(-214f, -1200f), 32414u, vec4<u32>(0u, 78922u, 45284u, 0u), -25253i), -512f), Struct_1(0i, vec2<f32>(1218f, 1284f), 0u, vec4<u32>(4801u, 0u, 9628u, 4294967295u), -1i), Struct_1(-46897i, vec2<f32>(1605f, -1039f), 69692u, vec4<u32>(0u, 26496u, 0u, 0u), 1i), 72127u), Struct_4(Struct_2(Struct_1(0i, vec2<f32>(132f, 2070f), 39812u, vec4<u32>(41653u, 44157u, 1u, 1u), 2147483647i), 2396f), Struct_1(-22894i, vec2<f32>(-106f, -1532f), 4294967295u, vec4<u32>(1283u, 0u, 35945u, 49636u), -24616i), Struct_1(i32(-2147483648), vec2<f32>(-148f, -1603f), 0u, vec4<u32>(3807u, 0u, 17185u, 48163u), -82929i), 4294967295u), Struct_4(Struct_2(Struct_1(-14712i, vec2<f32>(839f, -184f), 27633u, vec4<u32>(4294967295u, 4294967295u, 5224u, 1u), -15925i), -1650f), Struct_1(2147483647i, vec2<f32>(2554f, -1000f), 36485u, vec4<u32>(0u, 1616u, 0u, 4294967295u), -1i), Struct_1(-1i, vec2<f32>(1237f, 204f), 13065u, vec4<u32>(34577u, 1u, 8922u, 4827u), -1i), 18617u), Struct_4(Struct_2(Struct_1(0i, vec2<f32>(1000f, -628f), 1u, vec4<u32>(4294967295u, 4123u, 998u, 42902u), 19449i), -972f), Struct_1(0i, vec2<f32>(-1243f, -662f), 79412u, vec4<u32>(23378u, 47562u, 0u, 1u), 1i), Struct_1(2147483647i, vec2<f32>(-547f, -989f), 0u, vec4<u32>(4294967295u, 0u, 0u, 31400u), -1i), 1u), Struct_4(Struct_2(Struct_1(1i, vec2<f32>(-286f, 487f), 55840u, vec4<u32>(23753u, 36509u, 63137u, 4294967295u), 14272i), 1356f), Struct_1(1550i, vec2<f32>(-875f, 883f), 43508u, vec4<u32>(15184u, 62490u, 56265u, 43992u), -61768i), Struct_1(47398i, vec2<f32>(424f, 113f), 0u, vec4<u32>(8700u, 35534u, 17673u, 44100u), -493i), 4294967295u), Struct_4(Struct_2(Struct_1(2147483647i, vec2<f32>(-1694f, -1102f), 7532u, vec4<u32>(4294967295u, 1u, 0u, 1u), -1i), 929f), Struct_1(-1i, vec2<f32>(1000f, -162f), 4294967295u, vec4<u32>(4294967295u, 7877u, 46677u, 63705u), 1i), Struct_1(-1i, vec2<f32>(-153f, -103f), 71396u, vec4<u32>(5006u, 136410u, 1u, 1u), 2147483647i), 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(560f, -1288f));
    global2 = array<f32, 8>();
    global4 = array<Struct_4, 29>();
    let var_1 = _wgslsmith_mult_u32(~(_wgslsmith_clamp_u32(12554u, ~40143u, firstLeadingBit(u_input.c)) ^ u_input.d), _wgslsmith_div_u32(~abs(arg_1.a.d.x), firstLeadingBit(4294967295u)));
    let var_2 = Struct_1(arg_2.e.a.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(arg_2.e.a.b, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(arg_1.a.b, vec2<f32>(-862f, 502f)), vec2<f32>(arg_1.b, arg_2.b.x), true)))), var_0, select(select(arg_2.a, vec2<bool>(false, arg_2.a.x), true), arg_2.a, !select(arg_2.a, vec2<bool>(arg_2.a.x, false), vec2<bool>(arg_0, arg_0))))), ~_wgslsmith_clamp_u32(var_1 & 4294967295u, 23908u, var_1 >> (0u % 32u)) | arg_2.e.a.d.x, ~_wgslsmith_sub_vec4_u32(vec4<u32>(~45655u, _wgslsmith_div_u32(12943u, var_1), 4294967295u, u_input.c), ~arg_1.a.d), min(7393i, ~arg_1.a.a));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> f32 {
    let var_0 = !select(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), true)), vec2<bool>(func_3(false, Struct_2(Struct_1(u_input.a.x, vec2<f32>(-344f, -1000f), arg_0.d.x, arg_0.d, -2190i), arg_0.b.x), Struct_3(vec2<bool>(false, true), vec3<f32>(arg_0.b.x, 311f, 902f), arg_0.d.yww, u_input.b, Struct_2(Struct_1(u_input.b, vec2<f32>(-1000f, -682f), 63162u, vec4<u32>(u_input.d, 4294967295u, 16237u, arg_0.c), arg_1), arg_0.b.x))), true), false);
    let var_1 = arg_0.d.xw;
    global2 = array<f32, 8>();
    let var_2 = vec4<i32>(-39638i, countOneBits(-arg_0.e << (~_wgslsmith_sub_u32(u_input.c, 44715u) % 32u)), arg_0.a, arg_0.e & ~arg_0.e);
    var var_3 = Struct_2(Struct_1(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(var_2 << (arg_0.d % vec4<u32>(32u)), abs(vec4<i32>(u_input.a.x, var_2.x, -27447i, -44258i))), firstTrailingBit(-arg_1)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2[_wgslsmith_index_u32(0u, 8u)], arg_0.b.x))))), u_input.c, _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(14634u, var_1.x, 11777u, arg_0.c), vec4<u32>(u_input.d, u_input.d, var_1.x, var_1.x)), ~vec4<u32>(arg_0.c, 43385u, u_input.d, 0u)), -arg_1), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 8u)]));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.b.x)))))))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    global2 = array<f32, 8>();
    var var_0 = vec4<f32>(-992f, _wgslsmith_f_op_f32(func_2(Struct_1(arg_0.x, arg_2.a.b, ~arg_2.a.d.x, vec4<u32>(75567u & arg_1.x, firstTrailingBit(arg_1.x), ~1u, countOneBits(u_input.c)), u_input.b), ~2147483647i)), global2[_wgslsmith_index_u32(59250u, 8u)], _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(281f * _wgslsmith_f_op_f32(func_2(arg_2.a, u_input.a.x))))));
    let var_1 = Struct_3(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, arg_1.x != 0u)), vec2<bool>(true, true), select(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true), true), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, global2[_wgslsmith_index_u32(4294967295u, 8u)], -1256f)))) - _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.b.x, -751f, global2[_wgslsmith_index_u32(arg_2.a.d.x, 8u)]))))), select(_wgslsmith_clamp_vec3_u32(arg_1.wyw, arg_1.xwx, _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 55623u, arg_2.a.c), arg_2.a.d.xzx)), vec3<u32>(4294967295u, 1u, _wgslsmith_div_u32(_wgslsmith_div_u32(35182u, 1u), arg_2.a.d.x << (4294967295u % 32u))), true), global3.x, Struct_2(Struct_1(-47677i ^ u_input.b, arg_2.a.b, 1u, max(max(vec4<u32>(4294967295u, 0u, arg_1.x, u_input.c), arg_1), ~vec4<u32>(1u, arg_2.a.c, 21950u, 71864u)), -u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.a.b.x - var_0.x))))));
    let var_2 = Struct_4(var_1.e, Struct_1(arg_0.x, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1040f)), -848f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, -979f))))), 55611u, arg_1, _wgslsmith_sub_i32(-1i, -2147483647i)), Struct_1(-(~11582i), arg_2.a.b, ~countOneBits(0u), vec4<u32>(min(firstLeadingBit(25501u), ~3777u), ~u_input.c | ~4294967295u, _wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, arg_1.x), 0u), u_input.d), u_input.b), _wgslsmith_sub_u32(~(~u_input.c), _wgslsmith_add_u32(var_1.e.a.c, var_1.c.x) << (58492u % 32u)) | reverseBits(~1u));
    global3 = min(vec4<i32>(_wgslsmith_sub_i32(arg_2.a.e, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_2.a.a, 0i), arg_0 ^ arg_0)), -4044i, ~firstTrailingBit(_wgslsmith_sub_i32(global3.x, global3.x)), -firstLeadingBit(arg_2.a.e) << (var_2.d % 32u)), firstLeadingBit(vec4<i32>(-var_2.c.e, 8304i, abs(arg_0.x), firstLeadingBit(_wgslsmith_mod_i32(arg_0.x, var_1.d)))));
    return arg_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = !((select(select(false, false, false), false, false) & true) || (_wgslsmith_div_f32(1619f, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d, 51151u), 8u)]) > 2311f));
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_1(countOneBits(_wgslsmith_mult_vec3_i32(global3.wwz, global3.zyw)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, u_input.c, 0u, u_input.c), abs(vec4<u32>(u_input.c, 25368u, u_input.d, 33080u))), Struct_2(Struct_1(u_input.a.x, vec2<f32>(global2[_wgslsmith_index_u32(u_input.c, 8u)], global2[_wgslsmith_index_u32(31038u, 8u)]), 43255u, vec4<u32>(4294967295u, 4294967295u, u_input.d, u_input.d), u_input.b), 420f)))))));
    global0 = select(all(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), true, any(vec4<bool>(false, true, all(vec3<bool>(false, true, false)), all(vec3<bool>(true, false, false))))) & func_3(!(func_3(false, Struct_2(Struct_1(u_input.a.x, vec2<f32>(-119f, global2[_wgslsmith_index_u32(10731u, 8u)]), u_input.d, vec4<u32>(u_input.c, u_input.d, u_input.c, 115839u), 2147483647i), global2[_wgslsmith_index_u32(4294967295u, 8u)]), Struct_3(vec2<bool>(true, false), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], 1381f, -832f), vec3<u32>(u_input.d, u_input.c, 14267u), 1i, Struct_2(Struct_1(-1486i, vec2<f32>(global2[_wgslsmith_index_u32(22145u, 8u)], 805f), 28727u, vec4<u32>(u_input.d, 11303u, 39937u, u_input.d), 1i), global2[_wgslsmith_index_u32(4294967295u, 8u)]))) | true), Struct_2(Struct_1(~(-1i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global2[_wgslsmith_index_u32(u_input.d, 8u)], -105f), vec2<f32>(257f, global2[_wgslsmith_index_u32(u_input.d, 8u)]))), ~u_input.c, vec4<u32>(u_input.d, 104353u, 8910u, u_input.d), ~0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.d, 8u)]) - _wgslsmith_div_f32(-629f, -1203f))), Struct_3(vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2[_wgslsmith_index_u32(u_input.c, 8u)], 246f, global2[_wgslsmith_index_u32(34211u, 8u)]))))), ~(~vec3<u32>(4294967295u, 1u, u_input.d)), -14230i, Struct_2(Struct_1(u_input.b, vec2<f32>(-363f, global2[_wgslsmith_index_u32(37274u, 8u)]), 92004u, vec4<u32>(4294967295u, 17061u, u_input.d, u_input.c), u_input.b), 2253f)));
    global1 = 1u;
    var var_2 = Struct_1(_wgslsmith_clamp_i32(min(u_input.a.x ^ -1i, abs(-7600i)), _wgslsmith_sub_i32(global3.x, -1i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-1i, -59979i, global3.x, -36847i)), firstLeadingBit(vec4<i32>(u_input.b, -1i, global3.x, -2147483647i)))) & 1i, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-107f, 492f))))))), ~reverseBits(~u_input.c), _wgslsmith_sub_vec4_u32(~select(vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.d), firstLeadingBit(vec4<u32>(u_input.d, 4294967295u, 26895u, 0u)), vec4<bool>(false, true, true, false)), firstLeadingBit(reverseBits(vec4<u32>(83174u, 4294967295u, u_input.c, 38540u)))), ~global3.x);
    var var_3 = Struct_3(select(select(vec2<bool>(true, all(vec4<bool>(true, false, false, false))), select(select(vec2<bool>(false, true), vec2<bool>(true, false), true), vec2<bool>(true, true), select(false, false, false)), vec2<bool>(true, true)), vec2<bool>(true, all(vec4<bool>(true, true, true, true))), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), true))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2[_wgslsmith_index_u32(26772u, 8u)], _wgslsmith_f_op_f32(-859f * global2[_wgslsmith_index_u32(4294967295u, 8u)]), -351f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, global2[_wgslsmith_index_u32(22782u, 8u)], 1000f) - vec3<f32>(var_2.b.x, -1000f, var_2.b.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(1u, 8u)], 1000f, -1277f))))), select(vec3<u32>(var_2.d.x, reverseBits(var_2.d.x), countOneBits(max(93994u, 42134u))), ~(~var_2.d.wxz), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false))), _wgslsmith_div_i32(abs(_wgslsmith_add_i32(var_2.a, 1i)) & -(var_2.e & 21056i), var_2.e), Struct_2(Struct_1(global3.x, _wgslsmith_f_op_vec2_f32(ceil(var_2.b)), var_2.d.x, vec4<u32>(~u_input.c, countOneBits(77285u), 57667u | var_2.d.x, u_input.c), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a.x, 583i, var_2.e), _wgslsmith_div_i32(-12665i, 2147483647i))), -633f));
    global1 = abs((~var_3.e.a.d.x ^ firstTrailingBit(_wgslsmith_clamp_u32(1u, var_2.c, 0u))) ^ ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.d.x, var_3.b, _wgslsmith_add_i32(var_3.d, -_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.yx, u_input.a.zz), global3.zz)));
}

