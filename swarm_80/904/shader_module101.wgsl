struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_4, 24> = array<Struct_4, 24>(Struct_4(vec3<i32>(0i, 1873i, -12047i), -50216i, Struct_3(Struct_2(Struct_1(vec3<i32>(-1i, 35246i, -32028i), vec3<u32>(4294967295u, 64207u, 54611u), 2147483647i, vec2<bool>(false, true), vec3<u32>(0u, 4294967295u, 0u)), 17767i, Struct_1(vec3<i32>(44068i, 16371i, 2147483647i), vec3<u32>(33888u, 0u, 48911u), 0i, vec2<bool>(true, false), vec3<u32>(8477u, 4294967295u, 22235u)), vec3<f32>(-1034f, -1939f, 676f)), 4154i), i32(-2147483648)), Struct_4(vec3<i32>(-30750i, 1i, 0i), 0i, Struct_3(Struct_2(Struct_1(vec3<i32>(1i, 8980i, 1i), vec3<u32>(0u, 48573u, 12665u), 2147483647i, vec2<bool>(true, false), vec3<u32>(4294967295u, 22007u, 4294967295u)), -3112i, Struct_1(vec3<i32>(-38753i, 0i, 18338i), vec3<u32>(0u, 21123u, 4294967295u), i32(-2147483648), vec2<bool>(true, false), vec3<u32>(93649u, 0u, 4294967295u)), vec3<f32>(498f, 1437f, -408f)), -30290i), 2147483647i), Struct_4(vec3<i32>(45063i, 1i, -1i), 0i, Struct_3(Struct_2(Struct_1(vec3<i32>(38984i, -24082i, 0i), vec3<u32>(61176u, 0u, 3535u), 15704i, vec2<bool>(true, true), vec3<u32>(0u, 4294967295u, 3057u)), 22170i, Struct_1(vec3<i32>(-3449i, 39665i, -28914i), vec3<u32>(0u, 10045u, 1u), i32(-2147483648), vec2<bool>(true, false), vec3<u32>(80495u, 53976u, 4294967295u)), vec3<f32>(-673f, 471f, 1000f)), i32(-2147483648)), 76400i), Struct_4(vec3<i32>(-30904i, 26708i, 24355i), 736i, Struct_3(Struct_2(Struct_1(vec3<i32>(55817i, 1i, -44740i), vec3<u32>(30151u, 55753u, 0u), 1i, vec2<bool>(false, true), vec3<u32>(4294967295u, 0u, 106370u)), -15788i, Struct_1(vec3<i32>(0i, 1i, -55026i), vec3<u32>(41898u, 26083u, 1u), 0i, vec2<bool>(false, true), vec3<u32>(4294967295u, 6539u, 4696u)), vec3<f32>(1255f, -1080f, -835f)), -15329i), -42146i), Struct_4(vec3<i32>(43354i, -6938i, -2528i), 1i, Struct_3(Struct_2(Struct_1(vec3<i32>(49820i, 2147483647i, 1i), vec3<u32>(12070u, 4294967295u, 4294967295u), i32(-2147483648), vec2<bool>(false, true), vec3<u32>(49267u, 7225u, 0u)), 0i, Struct_1(vec3<i32>(-1i, 50291i, -33380i), vec3<u32>(0u, 1u, 43207u), -1i, vec2<bool>(true, true), vec3<u32>(66673u, 1u, 8396u)), vec3<f32>(-1445f, 1383f, -585f)), 2147483647i), -1i), Struct_4(vec3<i32>(2147483647i, 4780i, 1i), 44033i, Struct_3(Struct_2(Struct_1(vec3<i32>(7170i, -849i, 2147483647i), vec3<u32>(103342u, 4294967295u, 4294967295u), 15885i, vec2<bool>(true, true), vec3<u32>(13940u, 0u, 16979u)), 0i, Struct_1(vec3<i32>(-5904i, 1i, 1i), vec3<u32>(7055u, 0u, 0u), 56976i, vec2<bool>(true, true), vec3<u32>(1u, 18353u, 0u)), vec3<f32>(2052f, 231f, 1116f)), 36800i), -53255i), Struct_4(vec3<i32>(i32(-2147483648), i32(-2147483648), 0i), 2147483647i, Struct_3(Struct_2(Struct_1(vec3<i32>(-20900i, -1371i, i32(-2147483648)), vec3<u32>(6160u, 31586u, 15828u), 2147483647i, vec2<bool>(false, true), vec3<u32>(19425u, 4294967295u, 0u)), 1i, Struct_1(vec3<i32>(-1i, 1i, 6192i), vec3<u32>(26952u, 50295u, 0u), -9452i, vec2<bool>(true, false), vec3<u32>(0u, 65483u, 4294967295u)), vec3<f32>(1000f, -683f, 1255f)), 53131i), 2872i), Struct_4(vec3<i32>(20594i, 0i, i32(-2147483648)), i32(-2147483648), Struct_3(Struct_2(Struct_1(vec3<i32>(2147483647i, 1i, -5770i), vec3<u32>(92790u, 105867u, 0u), -1i, vec2<bool>(true, true), vec3<u32>(1u, 4158u, 73553u)), -32272i, Struct_1(vec3<i32>(20418i, i32(-2147483648), 5164i), vec3<u32>(8999u, 1u, 41165u), 1i, vec2<bool>(true, true), vec3<u32>(4294967295u, 8371u, 4294967295u)), vec3<f32>(-1138f, -180f, -1000f)), -1i), 12319i), Struct_4(vec3<i32>(6833i, -9494i, -1i), 10175i, Struct_3(Struct_2(Struct_1(vec3<i32>(-1i, -1i, 0i), vec3<u32>(1u, 1u, 4294967295u), -11601i, vec2<bool>(true, false), vec3<u32>(14876u, 1u, 11638u)), 51400i, Struct_1(vec3<i32>(-1i, -7100i, 1i), vec3<u32>(49669u, 3524u, 53564u), 2147483647i, vec2<bool>(false, true), vec3<u32>(1u, 0u, 0u)), vec3<f32>(-866f, 309f, -1658f)), 43626i), -33419i), Struct_4(vec3<i32>(12874i, 65513i, -6952i), 0i, Struct_3(Struct_2(Struct_1(vec3<i32>(-18911i, 2147483647i, -1i), vec3<u32>(0u, 4294967295u, 1u), -5507i, vec2<bool>(true, true), vec3<u32>(12134u, 4961u, 29895u)), 47743i, Struct_1(vec3<i32>(1i, -22028i, -18728i), vec3<u32>(4294967295u, 29155u, 4294967295u), 2147483647i, vec2<bool>(false, true), vec3<u32>(23760u, 1u, 1u)), vec3<f32>(-911f, 338f, -1823f)), 2147483647i), -1i), Struct_4(vec3<i32>(30221i, -55990i, i32(-2147483648)), 2147483647i, Struct_3(Struct_2(Struct_1(vec3<i32>(8981i, 2147483647i, -1i), vec3<u32>(22505u, 0u, 50870u), i32(-2147483648), vec2<bool>(false, false), vec3<u32>(1u, 49513u, 62032u)), -16943i, Struct_1(vec3<i32>(2147483647i, -2363i, -22535i), vec3<u32>(0u, 4294967295u, 4294967295u), 1i, vec2<bool>(true, true), vec3<u32>(6448u, 91886u, 4294967295u)), vec3<f32>(-2280f, 607f, 2027f)), 2837i), 0i), Struct_4(vec3<i32>(2147483647i, 1i, 1i), 26447i, Struct_3(Struct_2(Struct_1(vec3<i32>(1569i, 2147483647i, -13436i), vec3<u32>(18852u, 4294967295u, 6179u), 0i, vec2<bool>(false, false), vec3<u32>(85051u, 4294967295u, 1u)), 31276i, Struct_1(vec3<i32>(30756i, -30441i, 46092i), vec3<u32>(11449u, 4294967295u, 0u), -1i, vec2<bool>(false, true), vec3<u32>(6853u, 4294967295u, 4294967295u)), vec3<f32>(420f, 177f, 388f)), 2147483647i), 2147483647i), Struct_4(vec3<i32>(-11107i, i32(-2147483648), 0i), 55745i, Struct_3(Struct_2(Struct_1(vec3<i32>(-4244i, 2147483647i, -2908i), vec3<u32>(1u, 0u, 4294967295u), -1i, vec2<bool>(true, false), vec3<u32>(4480u, 0u, 25435u)), -51911i, Struct_1(vec3<i32>(-1i, -1i, 40205i), vec3<u32>(110709u, 0u, 4294967295u), 0i, vec2<bool>(true, false), vec3<u32>(40029u, 4294967295u, 0u)), vec3<f32>(-907f, -1549f, 558f)), 1i), 0i), Struct_4(vec3<i32>(-32205i, -39287i, -31141i), -1i, Struct_3(Struct_2(Struct_1(vec3<i32>(0i, 13895i, 2147483647i), vec3<u32>(13540u, 34438u, 1u), -43360i, vec2<bool>(false, false), vec3<u32>(37588u, 42382u, 75942u)), -4166i, Struct_1(vec3<i32>(1i, -64246i, -39601i), vec3<u32>(2633u, 1u, 45477u), 9191i, vec2<bool>(false, false), vec3<u32>(53761u, 0u, 29608u)), vec3<f32>(143f, -953f, 1274f)), -1i), 4784i), Struct_4(vec3<i32>(-41102i, i32(-2147483648), i32(-2147483648)), -10596i, Struct_3(Struct_2(Struct_1(vec3<i32>(0i, -51233i, -24523i), vec3<u32>(4294967295u, 724u, 1u), -1i, vec2<bool>(true, false), vec3<u32>(1u, 0u, 1u)), 1i, Struct_1(vec3<i32>(15622i, 25384i, -34500i), vec3<u32>(1u, 51677u, 0u), 1741i, vec2<bool>(false, false), vec3<u32>(4294967295u, 8955u, 4294967295u)), vec3<f32>(-1000f, -1196f, 1109f)), -30141i), -59019i), Struct_4(vec3<i32>(0i, -11534i, i32(-2147483648)), 7152i, Struct_3(Struct_2(Struct_1(vec3<i32>(11427i, 29862i, 1i), vec3<u32>(3294u, 0u, 4294967295u), 9670i, vec2<bool>(false, true), vec3<u32>(23409u, 4294967295u, 1u)), 68460i, Struct_1(vec3<i32>(-45380i, -4668i, -15510i), vec3<u32>(16634u, 11560u, 0u), -16724i, vec2<bool>(true, true), vec3<u32>(0u, 19838u, 64566u)), vec3<f32>(1000f, 353f, 620f)), 0i), -6874i), Struct_4(vec3<i32>(1i, 1i, i32(-2147483648)), -1i, Struct_3(Struct_2(Struct_1(vec3<i32>(19348i, 28098i, -25539i), vec3<u32>(9179u, 12119u, 1u), 10075i, vec2<bool>(false, true), vec3<u32>(1u, 4294967295u, 3530u)), -22149i, Struct_1(vec3<i32>(i32(-2147483648), -80284i, 2147483647i), vec3<u32>(0u, 1u, 72145u), 40077i, vec2<bool>(true, false), vec3<u32>(1u, 1u, 15890u)), vec3<f32>(-909f, 531f, -1000f)), -27599i), 996i), Struct_4(vec3<i32>(i32(-2147483648), 0i, -8478i), 0i, Struct_3(Struct_2(Struct_1(vec3<i32>(-1i, 25358i, i32(-2147483648)), vec3<u32>(57673u, 4294967295u, 1u), 2147483647i, vec2<bool>(true, true), vec3<u32>(99221u, 0u, 4294967295u)), -24242i, Struct_1(vec3<i32>(-6279i, 1i, 1i), vec3<u32>(77557u, 0u, 2626u), 504i, vec2<bool>(false, false), vec3<u32>(23547u, 18830u, 33055u)), vec3<f32>(-663f, -1000f, 1243f)), 0i), 1i), Struct_4(vec3<i32>(-21593i, -31359i, 2969i), 1i, Struct_3(Struct_2(Struct_1(vec3<i32>(-74312i, 1i, -56253i), vec3<u32>(45699u, 0u, 4294967295u), 1i, vec2<bool>(false, true), vec3<u32>(7408u, 4294967295u, 16215u)), 29518i, Struct_1(vec3<i32>(2147483647i, 0i, -1i), vec3<u32>(28503u, 4294967295u, 69965u), 46829i, vec2<bool>(true, false), vec3<u32>(90u, 11580u, 1u)), vec3<f32>(532f, 525f, 1255f)), i32(-2147483648)), 1i), Struct_4(vec3<i32>(14494i, 0i, i32(-2147483648)), i32(-2147483648), Struct_3(Struct_2(Struct_1(vec3<i32>(-46726i, i32(-2147483648), 0i), vec3<u32>(0u, 4294967295u, 1u), i32(-2147483648), vec2<bool>(false, false), vec3<u32>(1u, 96011u, 10989u)), -70992i, Struct_1(vec3<i32>(0i, -6358i, -36130i), vec3<u32>(17122u, 34226u, 46001u), 0i, vec2<bool>(true, false), vec3<u32>(0u, 1u, 0u)), vec3<f32>(-825f, 493f, -1994f)), -1i), -17759i), Struct_4(vec3<i32>(1i, 2147483647i, 47590i), -1i, Struct_3(Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), vec3<u32>(1u, 0u, 18226u), -1i, vec2<bool>(true, false), vec3<u32>(28831u, 4294967295u, 45827u)), i32(-2147483648), Struct_1(vec3<i32>(-34317i, -1i, -5673i), vec3<u32>(4294967295u, 1u, 7092u), -2914i, vec2<bool>(false, false), vec3<u32>(1u, 1u, 4294967295u)), vec3<f32>(1095f, -808f, 518f)), 1563i), 1i), Struct_4(vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), -5089i, Struct_3(Struct_2(Struct_1(vec3<i32>(1i, 0i, -44545i), vec3<u32>(1u, 0u, 4294967295u), i32(-2147483648), vec2<bool>(true, false), vec3<u32>(0u, 27242u, 40940u)), 1i, Struct_1(vec3<i32>(-1i, -18968i, i32(-2147483648)), vec3<u32>(28181u, 36498u, 43273u), 1i, vec2<bool>(false, false), vec3<u32>(0u, 1u, 4294967295u)), vec3<f32>(1000f, 807f, 316f)), 0i), 0i), Struct_4(vec3<i32>(2147483647i, -19218i, -14869i), 6163i, Struct_3(Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, i32(-2147483648)), vec3<u32>(1u, 46509u, 4294967295u), -1i, vec2<bool>(true, true), vec3<u32>(30250u, 19592u, 25145u)), i32(-2147483648), Struct_1(vec3<i32>(0i, -40328i, 0i), vec3<u32>(1u, 37686u, 5474u), i32(-2147483648), vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 38574u)), vec3<f32>(611f, 1905f, -1000f)), 6128i), 1i), Struct_4(vec3<i32>(-1i, -1i, -8315i), -16438i, Struct_3(Struct_2(Struct_1(vec3<i32>(-5760i, i32(-2147483648), 0i), vec3<u32>(66017u, 0u, 31966u), 19850i, vec2<bool>(false, true), vec3<u32>(1u, 4294967295u, 1u)), i32(-2147483648), Struct_1(vec3<i32>(-17530i, -1i, -20147i), vec3<u32>(0u, 4294967295u, 10780u), 8816i, vec2<bool>(true, true), vec3<u32>(33994u, 1u, 0u)), vec3<f32>(1050f, -1137f, -762f)), -53673i), -7493i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = global1.x;
    var var_1 = -_wgslsmith_sub_vec4_i32(vec4<i32>(-41294i, ~(i32(-1i) * -1i), _wgslsmith_div_i32(~2147483647i, 1i), ~(-30910i << (u_input.a.x % 32u))), ~(vec4<i32>(-1i) * -vec4<i32>(1i, 15804i, 5878i, -22111i)));
    var var_2 = Struct_5(Struct_3(Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(var_1.yyw, vec3<i32>(1i, var_1.x, var_1.x)), vec3<u32>(u_input.a.x, 1u, u_input.a.x), 49862i, select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~var_1.x, Struct_1(-vec3<i32>(var_1.x, -2147483647i, 0i), vec3<u32>(1u, u_input.a.x, 67910u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, 46366i, -1i, var_1.x), vec4<i32>(-2147483647i, var_1.x, -1i, var_1.x)), vec2<bool>(true, true), ~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_add_i32(5802i, var_1.x)), Struct_3(Struct_2(Struct_1(firstTrailingBit(var_1.zzx), vec3<u32>(1u, 1u, 1u), -var_1.x, select(vec2<bool>(false, true), vec2<bool>(false, false), false), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(u_input.a.x, 78853u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, u_input.a.x))), _wgslsmith_dot_vec3_i32(var_1.wxx, var_1.xyx) | (i32(-1i) * -40792i), Struct_1(countOneBits(vec3<i32>(-17001i, var_1.x, 0i)), ~vec3<u32>(0u, 59150u, 10728u), ~var_1.x, select(vec2<bool>(true, false), vec2<bool>(true, false), false), firstLeadingBit(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), global1.zww), -_wgslsmith_sub_i32(1i, -var_1.x)));
    var_1 = ~vec4<i32>(11433i, var_2.b.a.a.c, firstLeadingBit(-33201i), var_1.x);
    let var_3 = _wgslsmith_f_op_f32(-global1.x);
    return u_input.a.x;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(reverseBits(vec3<i32>(arg_3, _wgslsmith_div_i32(1i, arg_3), select(24031i, arg_3, true))), vec3<u32>(1u, 13813u, ~(~arg_0)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, _wgslsmith_add_i32(0i, -1i), ~1i, arg_3), select(vec4<i32>(arg_3, 0i, -1i, -10517i), vec4<i32>(1i, -1i, 41661i, arg_3), true) >> (vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))), select(vec2<bool>(all(arg_2.zx), !arg_1), !arg_2.xy, arg_2.xy), ~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(11867u, u_input.a.x, 1u)))), _wgslsmith_mult_i32(1i, 1i), Struct_1(vec3<i32>(~arg_3, ~(~(-2147483647i)), _wgslsmith_add_i32(6409i, arg_3)), ~vec3<u32>(u_input.a.x, func_3(), select(0u, 1u, arg_1)), ~max(arg_3, -24288i), arg_2.yz, vec3<u32>(arg_0, 1u, u_input.a.x ^ u_input.a.x) & ~(vec3<u32>(u_input.a.x, 39153u, u_input.a.x) | vec3<u32>(0u, 1u, arg_0))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1097f, 660f, 772f))))));
    var var_1 = !vec2<bool>(any(arg_2), any(vec2<bool>(!arg_2.x, true && arg_2.x)));
    let var_2 = Struct_1(var_0.c.a, vec3<u32>(53170u, arg_0, var_0.c.e.x), -26120i, !vec2<bool>(var_0.a.d.x, var_1.x), var_0.c.b);
    let var_3 = var_0.d;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(global1.x, var_3.x, var_1.x)), var_3.x, var_0.d.x, var_0.d.x), vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x - global1.x), _wgslsmith_f_op_f32(max(global1.x, var_0.d.x)), var_0.d.x, var_0.d.x), !(!vec4<bool>(true, arg_1, true, true))))));
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_3.x, 327f, var_0.d.x, var_3.x))) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(936f, -657f, 234f, -1050f)))))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2093f, _wgslsmith_f_op_f32(f32(-1f) * -632f), _wgslsmith_f_op_f32(trunc(419f)), _wgslsmith_div_f32(481f, 333f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1188f, var_3.x, global1.x, var_0.d.x), vec4<f32>(275f, var_3.x, 144f, 499f), arg_1)), vec4<f32>(-1644f, global1.x, -161f, var_0.d.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1091f, -1220f, var_0.d.x, var_0.d.x))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, 1856f, var_3.x, -201f))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_3.x)) + _wgslsmith_f_op_f32(global1.x - 211f)), 887f, var_3.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1460f)))))), vec4<bool>(var_1.x, !all(select(vec4<bool>(false, arg_2.x, true, var_2.d.x), vec4<bool>(arg_2.x, true, arg_2.x, arg_2.x), false)), true, true)));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec3<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(15802u, select(u_input.a.x > 8678u, !arg_0.d.x, global1.x != -261f) & (arg_0.d.x | any(vec3<bool>(false, false, arg_0.d.x))), vec3<bool>(true, true, true), -74420i)) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-400f, -1779f, 570f, global1.x)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-877f, global1.x, global1.x, global1.x)))) + vec4<f32>(-186f, global1.x, -650f, _wgslsmith_f_op_f32(floor(global1.x)))), vec4<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(-1984f * -931f), 713f))));
    global2 = array<Struct_4, 24>();
    var var_0 = arg_0.d.x;
    var var_1 = _wgslsmith_f_op_f32(max(-489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1295f)) + global1.x)));
    global2 = array<Struct_4, 24>();
    return vec3<u32>(_wgslsmith_clamp_u32(~(~1u), 4294967295u, arg_0.b.x), _wgslsmith_sub_u32(arg_0.e.x, reverseBits(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 62005u))), ~27086u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(min(vec3<i32>(-16905i, 2147483647i, -2147483647i), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-8866i, -27161i, -2147483647i), vec3<i32>(-2147483647i, -30235i, 1i)), countOneBits(vec3<i32>(1i, 2147483647i, 0i)))) >> (~_wgslsmith_add_vec3_u32(func_1(Struct_1(vec3<i32>(-2147483647i, 1i, 0i), vec3<u32>(u_input.a.x, 34028u, 4294967295u), 25671i, vec2<bool>(true, false), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), 0i, false), _wgslsmith_clamp_vec3_u32(vec3<u32>(40146u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 1u, u_input.a.x))) % vec3<u32>(32u)), select(vec3<u32>(7039u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 1u, 42313u), vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x)), abs(u_input.a.x)), ~func_1(Struct_1(vec3<i32>(1i, -1i, -2147483647i), vec3<u32>(u_input.a.x, 97371u, 15542u), -477i, vec2<bool>(false, true), vec3<u32>(u_input.a.x, 26973u, u_input.a.x)), -31881i, false).x), vec3<u32>(u_input.a.x, ~_wgslsmith_sub_u32(u_input.a.x, 11513u), ~_wgslsmith_clamp_u32(u_input.a.x, 60464u, 1u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), 1i, vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), -841f >= global1.x)), true), vec3<u32>(u_input.a.x, ~_wgslsmith_mult_u32(u_input.a.x, ~4294967295u), ~(~u_input.a.x >> (_wgslsmith_sub_u32(4294967295u, 54185u) % 32u))));
    var var_1 = select(vec3<bool>(var_0.d.x, true, true | all(vec3<bool>(false, var_0.d.x, var_0.d.x))), !select(select(!vec3<bool>(var_0.d.x, false, var_0.d.x), select(vec3<bool>(false, var_0.d.x, false), vec3<bool>(true, var_0.d.x, var_0.d.x), vec3<bool>(var_0.d.x, var_0.d.x, false)), select(vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x), vec3<bool>(true, var_0.d.x, false), vec3<bool>(true, true, var_0.d.x))), vec3<bool>(true, any(vec2<bool>(var_0.d.x, var_0.d.x)), true), false), var_0.d.x);
    global2 = array<Struct_4, 24>();
    var var_2 = false;
    var var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(25337u, max(var_0.b.x, var_0.e.x) ^ abs(29285u), var_1.x && any(vec4<bool>(var_1.x, var_0.d.x, var_1.x, var_0.d.x))), ~(~1u) | (~40979u | min(u_input.a.x, u_input.a.x))) | max(reverseBits(var_0.b.x), _wgslsmith_div_u32(~u_input.a.x & ~4294967295u, ~(~0u))), 24u)];
    var var_4 = var_3.c.a.c;
    let var_5 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, 1u, var_3.c.a.c.e.x) << (vec3<u32>(~u_input.a.x, var_0.b.x, min(~4294967295u, _wgslsmith_sub_u32(u_input.a.x, 22892u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.c.a.d.x + -1144f) * -288f), _wgslsmith_f_op_f32(ceil(1299f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.c.a.d.yy - var_3.c.a.d.zy)) - var_3.c.a.d.yz)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(~var_4.a.yy), _wgslsmith_sub_vec2_i32(~vec2<i32>(var_0.c, var_0.c), vec2<i32>(-7461i, var_4.c))), var_4.a.yx));
}

