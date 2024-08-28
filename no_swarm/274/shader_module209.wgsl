struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(0u, 18945u, 4294967295u, 11590u), vec4<u32>(4294967295u, 28315u, 0u, 4294967295u), vec4<u32>(1u, 27378u, 1u, 1u));

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<u32>(4294967295u, 48393u, 1u), 26579i, 614f, 4294967295u), Struct_1(vec3<u32>(1u, 4294967295u, 14446u), i32(-2147483648), -1519f, 54208u), Struct_1(vec3<u32>(107272u, 1u, 1u), -12497i, -274f, 4294967295u), Struct_1(vec3<u32>(0u, 6428u, 0u), -5176i, 1312f, 1u), Struct_1(vec3<u32>(1u, 32912u, 21755u), -16660i, -493f, 0u), Struct_1(vec3<u32>(0u, 102217u, 27754u), 1i, -1000f, 36832u), Struct_1(vec3<u32>(0u, 87867u, 91566u), 5434i, -1465f, 36805u), Struct_1(vec3<u32>(1u, 15158u, 58686u), i32(-2147483648), -790f, 6233u), Struct_1(vec3<u32>(4294967295u, 2930u, 4294967295u), 22746i, 329f, 4294967295u), Struct_1(vec3<u32>(26816u, 51823u, 1u), 1i, -498f, 1u), Struct_1(vec3<u32>(71654u, 21624u, 9930u), 2147483647i, -2221f, 8724u));

var<private> global3: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(vec3<i32>(-47558i, -47291i, 19198i), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec3<u32>(4294967295u, 4294967295u, 55494u), 16836i, 621f, 41121u), Struct_1(vec3<u32>(1u, 34605u, 42406u), i32(-2147483648), -661f, 4294967295u)), Struct_1(vec3<u32>(10557u, 0u, 0u), 2147483647i, -1000f, 7416u)), Struct_3(vec3<i32>(7950i, -22571i, 1i), Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec3<u32>(48667u, 32888u, 4294967295u), 2147483647i, 564f, 79370u), Struct_1(vec3<u32>(4294967295u, 43440u, 5884u), -77723i, 1391f, 1u)), Struct_1(vec3<u32>(7483u, 1u, 0u), 1i, 1000f, 4294967295u)), Struct_3(vec3<i32>(-2801i, i32(-2147483648), -84206i), Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec3<u32>(90752u, 29855u, 4294967295u), 1i, 102f, 4294967295u), Struct_1(vec3<u32>(0u, 1u, 0u), -1i, 430f, 40689u)), Struct_1(vec3<u32>(1u, 4294967295u, 1u), 2708i, -1704f, 5383u)), Struct_3(vec3<i32>(1i, -9159i, 15768i), Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec3<u32>(22536u, 116478u, 26004u), i32(-2147483648), 890f, 0u), Struct_1(vec3<u32>(4294967295u, 1u, 1u), 2147483647i, -1000f, 1u)), Struct_1(vec3<u32>(1u, 1u, 0u), 24i, 677f, 1u)), Struct_3(vec3<i32>(2147483647i, 33741i, -46062i), Struct_2(vec4<bool>(false, false, true, true), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), -1i, 1044f, 54821u), Struct_1(vec3<u32>(47542u, 1u, 3534u), -1681i, -1128f, 0u)), Struct_1(vec3<u32>(1u, 13437u, 47801u), i32(-2147483648), -296f, 5336u)), Struct_3(vec3<i32>(-1i, 21708i, -65923i), Struct_2(vec4<bool>(false, false, true, false), Struct_1(vec3<u32>(24656u, 1u, 0u), -9554i, 1000f, 90593u), Struct_1(vec3<u32>(0u, 1u, 9628u), 6076i, -1000f, 1u)), Struct_1(vec3<u32>(37458u, 0u, 1u), -3038i, -1000f, 4294967295u)), Struct_3(vec3<i32>(30810i, 46491i, i32(-2147483648)), Struct_2(vec4<bool>(true, false, true, true), Struct_1(vec3<u32>(4294967295u, 1u, 0u), 10197i, 1046f, 1u), Struct_1(vec3<u32>(1u, 4294967295u, 1u), 0i, 303f, 0u)), Struct_1(vec3<u32>(1714u, 1u, 54106u), 0i, 1000f, 0u)), Struct_3(vec3<i32>(2147483647i, 0i, i32(-2147483648)), Struct_2(vec4<bool>(true, false, false, false), Struct_1(vec3<u32>(4294967295u, 43110u, 1u), 35377i, 1619f, 5837u), Struct_1(vec3<u32>(1u, 24246u, 5536u), -42396i, 1185f, 64685u)), Struct_1(vec3<u32>(1u, 4294967295u, 61920u), i32(-2147483648), -238f, 20234u)), Struct_3(vec3<i32>(-71315i, 33132i, 7168i), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec3<u32>(52547u, 4294967295u, 4294967295u), 1i, 301f, 112995u), Struct_1(vec3<u32>(44220u, 0u, 41443u), 1i, 1495f, 65717u)), Struct_1(vec3<u32>(134133u, 1u, 19043u), i32(-2147483648), 108f, 84725u)), Struct_3(vec3<i32>(-5077i, 7928i, -1i), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec3<u32>(52292u, 4294967295u, 12181u), 2147483647i, -893f, 0u), Struct_1(vec3<u32>(1u, 19972u, 47662u), 28443i, 544f, 1u)), Struct_1(vec3<u32>(0u, 4294967295u, 1u), -22291i, -1207f, 5275u)), Struct_3(vec3<i32>(-18041i, 40942i, -6173i), Struct_2(vec4<bool>(false, true, false, false), Struct_1(vec3<u32>(0u, 65538u, 48813u), 2147483647i, -955f, 40372u), Struct_1(vec3<u32>(147603u, 4294967295u, 1u), -14322i, -807f, 22552u)), Struct_1(vec3<u32>(63362u, 32619u, 1u), 2147483647i, 348f, 45518u)), Struct_3(vec3<i32>(16076i, 21774i, -7863i), Struct_2(vec4<bool>(false, false, false, true), Struct_1(vec3<u32>(4294967295u, 1u, 0u), 30124i, 2175f, 1u), Struct_1(vec3<u32>(0u, 4294967295u, 1u), 2147483647i, 144f, 0u)), Struct_1(vec3<u32>(3478u, 57225u, 1u), 1i, 461f, 0u)), Struct_3(vec3<i32>(-8102i, -6931i, i32(-2147483648)), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec3<u32>(0u, 20231u, 61796u), 49558i, 1000f, 15743u), Struct_1(vec3<u32>(1u, 1u, 29173u), 0i, 835f, 1u)), Struct_1(vec3<u32>(45274u, 1u, 1470u), -1i, -2612f, 4294967295u)), Struct_3(vec3<i32>(1952i, -1i, 1i), Struct_2(vec4<bool>(true, true, true, true), Struct_1(vec3<u32>(0u, 5345u, 16390u), 0i, 2321f, 6421u), Struct_1(vec3<u32>(0u, 1u, 1u), 21670i, -956f, 1u)), Struct_1(vec3<u32>(47623u, 39781u, 0u), 1i, 127f, 37204u)), Struct_3(vec3<i32>(26029i, -23654i, -1i), Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec3<u32>(25184u, 4294967295u, 0u), 2373i, 1000f, 0u), Struct_1(vec3<u32>(106167u, 0u, 21245u), i32(-2147483648), 646f, 1u)), Struct_1(vec3<u32>(11825u, 4294967295u, 4294967295u), -13103i, 439f, 38228u)), Struct_3(vec3<i32>(1i, -54061i, 2147483647i), Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec3<u32>(1u, 1u, 33486u), 1i, 1083f, 4294967295u), Struct_1(vec3<u32>(4750u, 4294967295u, 11494u), -9267i, -583f, 8648u)), Struct_1(vec3<u32>(120794u, 17900u, 35409u), 1i, 974f, 14870u)), Struct_3(vec3<i32>(i32(-2147483648), -36550i, 34782i), Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec3<u32>(1u, 11060u, 4294967295u), 2147483647i, -761f, 45119u), Struct_1(vec3<u32>(52960u, 4294967295u, 30568u), -43629i, 865f, 84504u)), Struct_1(vec3<u32>(0u, 47065u, 1u), 1i, -152f, 4294967295u)), Struct_3(vec3<i32>(-32352i, 41189i, 0i), Struct_2(vec4<bool>(false, true, true, false), Struct_1(vec3<u32>(92556u, 1u, 4294967295u), 1i, -1474f, 23037u), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), -1i, 1011f, 65794u)), Struct_1(vec3<u32>(4294967295u, 5463u, 4294967295u), 0i, 1311f, 57349u)), Struct_3(vec3<i32>(-67805i, -36120i, -43207i), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec3<u32>(1461u, 21484u, 1u), 9149i, 1903f, 1u), Struct_1(vec3<u32>(34192u, 53279u, 29512u), -1i, -1697f, 4294967295u)), Struct_1(vec3<u32>(0u, 0u, 0u), 1i, 461f, 0u)), Struct_3(vec3<i32>(-20278i, -27178i, 0i), Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec3<u32>(44267u, 4294967295u, 58047u), 2147483647i, -194f, 46558u), Struct_1(vec3<u32>(0u, 80836u, 29544u), -5828i, -430f, 0u)), Struct_1(vec3<u32>(26370u, 2380u, 8329u), -1i, -431f, 15676u)), Struct_3(vec3<i32>(2147483647i, -1i, i32(-2147483648)), Struct_2(vec4<bool>(false, true, false, true), Struct_1(vec3<u32>(0u, 0u, 4294967295u), -13513i, -905f, 13847u), Struct_1(vec3<u32>(0u, 24085u, 11991u), -1i, 837f, 9702u)), Struct_1(vec3<u32>(0u, 67789u, 4294967295u), 23025i, -610f, 4294967295u)), Struct_3(vec3<i32>(1i, 0i, 6583i), Struct_2(vec4<bool>(true, true, false, false), Struct_1(vec3<u32>(1u, 4294967295u, 17272u), 2147483647i, -1888f, 0u), Struct_1(vec3<u32>(17918u, 11969u, 16876u), i32(-2147483648), 2002f, 70942u)), Struct_1(vec3<u32>(7977u, 0u, 17089u), -1i, -647f, 37063u)), Struct_3(vec3<i32>(-43653i, 1i, 11427i), Struct_2(vec4<bool>(false, false, false, false), Struct_1(vec3<u32>(17474u, 23583u, 1u), 1i, 1654f, 1u), Struct_1(vec3<u32>(50194u, 1u, 4294967295u), -1i, -619f, 39318u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u), i32(-2147483648), 553f, 15836u)), Struct_3(vec3<i32>(22496i, -3843i, 2147483647i), Struct_2(vec4<bool>(true, true, false, true), Struct_1(vec3<u32>(4294967295u, 106498u, 0u), 2147483647i, -571f, 27205u), Struct_1(vec3<u32>(0u, 4294967295u, 0u), 20005i, 425f, 4614u)), Struct_1(vec3<u32>(17550u, 4294967295u, 0u), 0i, 1139f, 55151u)));

var<private> global4: array<bool, 32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    global1 = array<vec4<u32>, 3>();
    var var_0 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global0.b.a.zx, global0.b.a.xy), _wgslsmith_sub_vec2_u32(u_input.a.zz, select(vec2<u32>(22501u, 4294967295u), global0.c.a.zx, false)) | (~global0.b.a.yz << ((vec2<u32>(79307u, 43572u) & vec2<u32>(global0.b.a.x, 4174u)) % vec2<u32>(32u)))), 32u)];
    var var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(global0.b.b, 48060i, ((global0.c.b | -17285i) | _wgslsmith_mod_i32(-354i, global0.b.b)) >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a.zx), ~vec2<u32>(global0.b.a.x, 14206u)) % 32u)), ~max(abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-15593i, 2147483647i, -1i), vec3<i32>(global0.c.b, 2147483647i, global0.b.b))), min(-vec3<i32>(0i, global0.c.b, 0i), ~vec3<i32>(global0.c.b, global0.b.b, 2147483647i))));
    var var_2 = Struct_5(_wgslsmith_mult_vec2_u32(global0.c.a.zz, min(firstLeadingBit(u_input.a.zx ^ vec2<u32>(12261u, 0u)), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(global0.c.d, global0.b.d), vec2<u32>(global0.b.d, 4294967295u), vec2<u32>(u_input.a.x, 118818u))))), !(!any(!global0.a)));
    var_0 = min(abs(-abs(-2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-1331i, 14587i, var_1.x), ~vec3<i32>(27512i, var_1.x, global0.b.b)), -vec3<i32>(global0.c.b, var_1.x, var_1.x))) > ~_wgslsmith_div_i32(var_1.x, var_1.x | (global0.c.b | 2147483647i));
    return abs(min(abs(~max(0u, 1u)), select(9222u ^ ~global0.c.d, 15318u, _wgslsmith_f_op_f32(f32(-1f) * -1772f) > global0.c.c)));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = true & (select(-14835i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(global0.c.b, arg_1)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, -2147483647i), vec2<i32>(1i, arg_1))), arg_1 <= _wgslsmith_clamp_i32(37997i, 22384i, -1i)) <= 9149i);
    let var_1 = Struct_1(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), abs(u_input.a.zz)), global0.c.a.x, 1u), _wgslsmith_sub_i32(-609i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, arg_0) & vec2<i32>(-13486i, -1i), -vec2<i32>(-3667i, 11341i)), max(vec2<i32>(arg_0, global0.c.b), vec2<i32>(-1i, -2147483647i)))), -955f, ~34629u);
    global3 = array<Struct_3, 24>();
    var var_2 = vec4<i32>(-1i) * -vec4<i32>(global0.c.b, var_1.b, ~58181i << (0u % 32u), firstLeadingBit(-38193i));
    global3 = array<Struct_3, 24>();
    return global2[_wgslsmith_index_u32(~(~func_3()) ^ 6618u, 11u)];
}

fn func_4(arg_0: Struct_2) -> vec3<u32> {
    global3 = array<Struct_3, 24>();
    var var_0 = global0.a.x;
    global4 = array<bool, 32>();
    var var_1 = select(select(select(arg_0.a.wx, arg_0.a.yx, global4[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, 13432u), 32u)] | true), vec2<bool>(any(global0.a.ww) | global0.a.x, !any(vec2<bool>(false, global0.a.x))), select(!select(vec2<bool>(global4[_wgslsmith_index_u32(global0.c.d, 32u)], arg_0.a.x), global0.a.wz, true), global0.a.zy, false)), !select(global0.a.zz, !select(vec2<bool>(global4[_wgslsmith_index_u32(0u, 32u)], true), global0.a.zz, global0.a.x), arg_0.a.x), true != (all(vec4<bool>(arg_0.a.x, true, global0.a.x, true)) || select(arg_0.a.x, global0.b.a.x >= 0u, global4[_wgslsmith_index_u32(45052u, 32u)])));
    var var_2 = _wgslsmith_mult_u32(firstTrailingBit(1u), abs(~(~27498u)));
    return vec3<u32>(_wgslsmith_dot_vec3_u32(arg_0.c.a, _wgslsmith_sub_vec3_u32(global0.b.a, min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, arg_0.b.a.x, arg_0.b.a.x), vec3<u32>(1u, 17054u, arg_0.b.d)), vec3<u32>(arg_0.c.d, u_input.a.x, 57122u)))), 25538u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.zy, vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.d, u_input.a.x, 5866u, 0u), global1[_wgslsmith_index_u32(115212u, 3u)]), _wgslsmith_clamp_u32(0u, 4294967295u, 0u))), ~vec2<u32>(u_input.a.x, firstTrailingBit(14326u))));
}

fn func_5(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_1 {
    var var_0 = 401f;
    let var_1 = arg_0;
    var var_2 = Struct_5(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), arg_1.zx), min(reverseBits(vec2<u32>(global0.c.a.x, arg_1.x)), arg_1.xy)), true);
    let var_3 = Struct_2(global0.a, func_2(reverseBits(1i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_2.xzy, vec3<i32>(-2405i, -27209i, -14151i)), ~(-1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(315f, 1309f, 674f, var_1.b) + vec4<f32>(377f, global0.c.c, 702f, -1483f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -681f, -1381f, -3113f) - vec4<f32>(523f, -1065f, arg_0.b, -317f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b, global0.c.c, arg_0.b, global0.c.c)))))), Struct_1(vec3<u32>(abs(1u), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, global0.c.a.x), u_input.a.zz), ~vec2<u32>(u_input.a.x, global0.c.a.x)), 0u ^ ~arg_1.x), 1i, -713f, ~_wgslsmith_dot_vec4_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 3u)], vec4<u32>(4294967295u, u_input.a.x, 1u, global0.b.a.x) << (global1[_wgslsmith_index_u32(var_2.a.x, 3u)] % vec4<u32>(32u)))));
    global3 = array<Struct_3, 24>();
    return global2[_wgslsmith_index_u32(1u, 11u)];
}

fn func_1(arg_0: i32) -> Struct_5 {
    var var_0 = func_5(Struct_4(abs(abs(vec2<i32>(arg_0, 2147483647i)) ^ vec2<i32>(10124i, -12772i)), global0.c.c), func_4(Struct_2(!global0.a, Struct_1(vec3<u32>(1u, u_input.a.x, global0.b.d) << (vec3<u32>(1u, 41329u, 70996u) % vec3<u32>(32u)), ~2147483647i, _wgslsmith_f_op_f32(max(global0.c.c, global0.b.c)), firstTrailingBit(4294967295u)), func_2(abs(arg_0), global0.b.b >> (u_input.a.x % 32u), vec4<f32>(648f, -1012f, global0.c.c, -325f)))), _wgslsmith_clamp_vec4_i32(~_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_0, arg_0, -2147483647i), vec4<i32>(1i, -1i, global0.b.b, 2147483647i)), min(vec4<i32>(arg_0, arg_0, 43436i, arg_0), vec4<i32>(arg_0, arg_0, 1i, 0i))), vec4<i32>(~1i, arg_0, global0.b.b, -firstLeadingBit(-37195i)), -vec4<i32>(~13969i, 1i, global0.c.b, ~arg_0)));
    global3 = array<Struct_3, 24>();
    global1 = array<vec4<u32>, 3>();
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(countOneBits(25585i), _wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_0, -45480i), -(~(-12211i))), abs(func_5(Struct_4(vec2<i32>(arg_0, global0.b.b), var_0.c), countOneBits(u_input.a), countOneBits(vec4<i32>(-2147483647i, global0.b.b, -59401i, -2242i))).b)), reverseBits(vec3<i32>(~(-4232i), 0i, var_0.b | arg_0)) >> (_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~u_input.a, ~(~global0.c.a)) % vec3<u32>(32u)));
    var var_2 = firstTrailingBit(global1[_wgslsmith_index_u32(1u, 3u)]);
    return Struct_5(abs(u_input.a.zy), global4[_wgslsmith_index_u32(4294967295u | ~firstLeadingBit(~u_input.a.x), 32u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-_wgslsmith_add_vec2_i32(vec2<i32>(-20028i, global0.c.b) | vec2<i32>(global0.c.b, -23319i), ~vec2<i32>(0i, -2147483647i)) | countOneBits(vec2<i32>(-global0.b.b, global0.c.b)));
    var var_1 = func_1(_wgslsmith_sub_i32(var_0.x, _wgslsmith_mult_i32(-1i, ~global0.b.b) | min(var_0.x, var_0.x)));
    let var_2 = var_0.x;
    global0 = Struct_2(global0.a, func_5(Struct_4(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(var_0.x, -2147483647i)), max(vec2<i32>(0i, global0.b.b), vec2<i32>(-10320i, 30980i))), func_2(~42586i, _wgslsmith_add_i32(0i, global0.b.b), vec4<f32>(-1000f, 1000f, 1363f, global0.b.c)).c), u_input.a, _wgslsmith_add_vec4_i32(-vec4<i32>(-24459i, 0i, var_0.x, 0i), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-24880i, -33442i, global0.b.b, var_0.x), vec4<i32>(var_0.x, global0.b.b, global0.b.b, var_0.x))))), Struct_1(global0.c.a, -var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c) + global0.c.c), firstTrailingBit(select(_wgslsmith_dot_vec3_u32(global0.c.a, u_input.a), ~0u, var_1.b))));
    let var_3 = Struct_2(select(!global0.a, global0.a, true && any(select(global0.a.xxw, vec3<bool>(var_1.b, var_1.b, global0.a.x), global0.a.x))), Struct_1(~vec3<u32>(4294967295u, u_input.a.x, var_1.a.x) >> (vec3<u32>(~u_input.a.x, 94929u, select(var_1.a.x, var_1.a.x, global4[_wgslsmith_index_u32(18319u, 32u)])) % vec3<u32>(32u)), -1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1085f - _wgslsmith_f_op_f32(abs(1000f)))), countOneBits(var_1.a.x)), func_5(Struct_4(vec2<i32>(global0.b.b, var_0.x) | min(vec2<i32>(-1i, var_0.x), vec2<i32>(var_0.x, 2147483647i)), 448f), vec3<u32>(global0.c.a.x, min(func_3(), ~1u), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(23975u, var_1.a.x), countOneBits(var_1.a.x), ~1u)), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 15308i, global0.b.b, -2087i), vec4<i32>(var_0.x, -6580i, var_0.x, 5300i)), vec4<i32>(40789i, 0i, 2147483647i, global0.c.b)) & firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-7399i, global0.b.b, 0i, var_0.x), vec4<i32>(global0.b.b, -10171i, 2147483647i, var_0.x), vec4<i32>(global0.c.b, -10152i, 0i, global0.b.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(-692f, var_3.c.c, firstLeadingBit(var_3.b.b), u_input.a.x, var_3.c.b);
}

