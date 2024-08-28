struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12> = array<vec4<i32>, 12>(vec4<i32>(-1i, -34632i, -1i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, -44833i, 13616i), vec4<i32>(i32(-2147483648), -12538i, -49475i, -1i), vec4<i32>(41360i, -1i, 0i, 25894i), vec4<i32>(-26321i, i32(-2147483648), -13371i, 116426i), vec4<i32>(10818i, 2147483647i, 0i, 66108i), vec4<i32>(2147483647i, -461i, -23802i, 23395i), vec4<i32>(30415i, 0i, i32(-2147483648), -5560i), vec4<i32>(40928i, 1i, 29721i, 1i), vec4<i32>(1i, 26462i, 0i, -25332i), vec4<i32>(2147483647i, 1i, -9689i, -34548i), vec4<i32>(0i, 35823i, i32(-2147483648), -32982i));

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(true, vec4<i32>(-1i, 4887i, 1i, 5195i), 15010i), Struct_1(true, vec4<i32>(2147483647i, -1i, i32(-2147483648), -38965i), -28272i), false, 1u, Struct_1(true, vec4<i32>(-21906i, -1i, 2147483647i, 1i), -1i)), Struct_2(Struct_1(true, vec4<i32>(i32(-2147483648), 10747i, -1i, -16009i), 38185i), Struct_1(false, vec4<i32>(10261i, 34263i, -52722i, 1i), -1234i), false, 0u, Struct_1(true, vec4<i32>(-1i, 15114i, 0i, i32(-2147483648)), 0i)), Struct_2(Struct_1(true, vec4<i32>(17304i, 2147483647i, 27486i, 67081i), -1i), Struct_1(false, vec4<i32>(1612i, -1i, 0i, -54309i), 854i), true, 0u, Struct_1(false, vec4<i32>(45298i, -33120i, -3733i, 13478i), 0i)), Struct_2(Struct_1(false, vec4<i32>(2147483647i, -34863i, 23841i, -1i), 2147483647i), Struct_1(true, vec4<i32>(2147483647i, 1i, 1i, 0i), 1i), false, 37804u, Struct_1(true, vec4<i32>(0i, 16152i, 44432i, 0i), i32(-2147483648))), Struct_2(Struct_1(true, vec4<i32>(1i, 1i, 0i, -96374i), -1i), Struct_1(false, vec4<i32>(2147483647i, 0i, 57799i, 2243i), 2147483647i), true, 8409u, Struct_1(false, vec4<i32>(-39193i, 1i, i32(-2147483648), 2147483647i), -1i)), Struct_2(Struct_1(false, vec4<i32>(43701i, 1342i, 2147483647i, -26783i), -1035i), Struct_1(true, vec4<i32>(1i, -38899i, 0i, -11370i), i32(-2147483648)), true, 74680u, Struct_1(true, vec4<i32>(i32(-2147483648), i32(-2147483648), -39112i, -22256i), 11517i)), Struct_2(Struct_1(false, vec4<i32>(i32(-2147483648), 10705i, 2147483647i, -43479i), -54269i), Struct_1(false, vec4<i32>(i32(-2147483648), 36823i, 1i, 24369i), 32936i), true, 0u, Struct_1(true, vec4<i32>(-55405i, -1i, -1i, 2147483647i), 13639i)), Struct_2(Struct_1(true, vec4<i32>(-70112i, -1193i, 2147483647i, -43422i), -13812i), Struct_1(false, vec4<i32>(1i, -36894i, -1i, -9708i), 7704i), false, 1868u, Struct_1(false, vec4<i32>(-10611i, 0i, 1i, -1i), -62042i)), Struct_2(Struct_1(true, vec4<i32>(0i, -34954i, 23217i, 24468i), 53074i), Struct_1(false, vec4<i32>(2023i, -23384i, 0i, 2147483647i), -1i), true, 0u, Struct_1(false, vec4<i32>(1i, 8040i, -37042i, -19573i), 24220i)), Struct_2(Struct_1(false, vec4<i32>(22476i, 0i, 16602i, -9096i), 1i), Struct_1(true, vec4<i32>(0i, 22077i, 0i, i32(-2147483648)), 23262i), true, 6498u, Struct_1(true, vec4<i32>(1i, i32(-2147483648), 21758i, i32(-2147483648)), i32(-2147483648))), Struct_2(Struct_1(false, vec4<i32>(-1i, -1i, 43430i, -11348i), 56246i), Struct_1(true, vec4<i32>(44833i, 29309i, i32(-2147483648), 1i), 5035i), true, 44994u, Struct_1(true, vec4<i32>(i32(-2147483648), 1i, 1i, 1i), -50679i)), Struct_2(Struct_1(true, vec4<i32>(-8372i, -50419i, 32610i, -1i), 2147483647i), Struct_1(false, vec4<i32>(76470i, 2147483647i, i32(-2147483648), 12043i), -2388i), true, 4294967295u, Struct_1(false, vec4<i32>(3892i, 0i, -23954i, 2147483647i), 35913i)), Struct_2(Struct_1(false, vec4<i32>(-1i, 0i, 0i, 10146i), 0i), Struct_1(true, vec4<i32>(-37204i, 1i, i32(-2147483648), -36032i), 4486i), false, 30480u, Struct_1(true, vec4<i32>(39092i, i32(-2147483648), 1i, -6443i), 14390i)), Struct_2(Struct_1(true, vec4<i32>(1i, 0i, 2147483647i, -38552i), i32(-2147483648)), Struct_1(true, vec4<i32>(22319i, -16850i, 5001i, 17187i), 2147483647i), true, 20601u, Struct_1(false, vec4<i32>(53250i, 7292i, 4067i, -1i), -69172i)), Struct_2(Struct_1(false, vec4<i32>(0i, 28059i, 9172i, 0i), 1i), Struct_1(true, vec4<i32>(26801i, 19089i, -1i, -1i), 66067i), false, 93998u, Struct_1(true, vec4<i32>(-35918i, 1i, 10637i, 2147483647i), -1i)), Struct_2(Struct_1(false, vec4<i32>(-30907i, -60992i, -9848i, -4128i), 1i), Struct_1(true, vec4<i32>(2147483647i, i32(-2147483648), -11099i, -39389i), -18029i), false, 1u, Struct_1(false, vec4<i32>(-25605i, 407i, -7843i, 25041i), i32(-2147483648))), Struct_2(Struct_1(false, vec4<i32>(-26779i, -1i, 2147483647i, 2147483647i), -16447i), Struct_1(true, vec4<i32>(-8718i, -20241i, 217i, -6974i), 31029i), true, 1u, Struct_1(false, vec4<i32>(-2962i, -12526i, 1i, 2147483647i), 2147483647i)), Struct_2(Struct_1(false, vec4<i32>(10845i, -558i, i32(-2147483648), 0i), 1i), Struct_1(false, vec4<i32>(-25575i, 1i, 1i, 0i), 1i), false, 105218u, Struct_1(true, vec4<i32>(2147483647i, -39123i, 69106i, 1i), -1i)), Struct_2(Struct_1(true, vec4<i32>(1i, 22392i, 12412i, 0i), i32(-2147483648)), Struct_1(false, vec4<i32>(-17477i, -1i, 0i, 51384i), -1i), false, 42410u, Struct_1(false, vec4<i32>(62923i, -9444i, 1i, i32(-2147483648)), 0i)), Struct_2(Struct_1(true, vec4<i32>(-7205i, -15833i, -6722i, -53791i), 15498i), Struct_1(false, vec4<i32>(23988i, i32(-2147483648), 1i, -1i), 2147483647i), true, 0u, Struct_1(true, vec4<i32>(-29348i, -50830i, 0i, -47277i), 0i)), Struct_2(Struct_1(false, vec4<i32>(30321i, 91269i, -1i, 20609i), 2147483647i), Struct_1(false, vec4<i32>(0i, -6230i, i32(-2147483648), -7297i), 22702i), false, 19458u, Struct_1(true, vec4<i32>(0i, 2147483647i, 2147483647i, 44260i), 27726i)), Struct_2(Struct_1(true, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i), 1i), Struct_1(true, vec4<i32>(17973i, 8235i, i32(-2147483648), -6866i), 34899i), true, 3077u, Struct_1(true, vec4<i32>(2147483647i, -18835i, 12360i, 9616i), 22630i)), Struct_2(Struct_1(false, vec4<i32>(-18093i, 44200i, i32(-2147483648), 2147483647i), 14482i), Struct_1(false, vec4<i32>(11279i, 69707i, 0i, -17915i), -3221i), true, 34052u, Struct_1(true, vec4<i32>(2147483647i, 29203i, -20998i, 2147483647i), 42066i)), Struct_2(Struct_1(true, vec4<i32>(0i, -1i, 1i, -1i), 1i), Struct_1(false, vec4<i32>(-8415i, -1i, -71585i, 12810i), -13415i), true, 0u, Struct_1(true, vec4<i32>(1i, i32(-2147483648), -69699i, i32(-2147483648)), 0i)), Struct_2(Struct_1(false, vec4<i32>(0i, 2147483647i, -2583i, 43288i), 2147483647i), Struct_1(true, vec4<i32>(2449i, 48533i, 13820i, -47320i), -6702i), false, 4294967295u, Struct_1(false, vec4<i32>(-1i, -14320i, 0i, 2147483647i), -2090i)), Struct_2(Struct_1(true, vec4<i32>(7402i, 1i, 50874i, -33813i), i32(-2147483648)), Struct_1(true, vec4<i32>(i32(-2147483648), 0i, -6044i, 15955i), 0i), false, 26968u, Struct_1(false, vec4<i32>(2147483647i, 0i, 51916i, 2147483647i), -79678i)));

var<private> global2: Struct_2;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1437f, 1f, _wgslsmith_f_op_f32(1000f + -1141f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(533f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2411f, -192f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1565f, -1687f)))), -493f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -454f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1198f, 1561f))))));
    var var_1 = -2147483647i;
    var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, -313f, var_0.x, 1232f), vec4<f32>(907f, var_0.x, 835f, var_0.x), vec4<bool>(arg_2.a, true, false, true))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(846f, var_0.x, var_0.x, var_0.x))))))));
    var var_2 = ~vec2<i32>(15242i, arg_0.x);
    var_1 = _wgslsmith_add_i32(arg_1.b.b.x, _wgslsmith_add_i32(arg_0.x, arg_1.a.c));
    return (1u ^ ~(_wgslsmith_dot_vec4_u32(vec4<u32>(19217u, global2.d, u_input.c, u_input.c), vec4<u32>(4294967295u, arg_1.d, 1u, u_input.c)) >> ((143076u | u_input.c) % 32u))) ^ ~1u;
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> u32 {
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(~global2.d), _wgslsmith_sub_u32(1u, ~4294967295u)), 26u)];
    var var_0 = abs(~global2.a.b.zwx);
    global2 = global1[_wgslsmith_index_u32(59358u, 26u)];
    global0 = array<vec4<i32>, 12>();
    var_0 = firstTrailingBit(global2.e.b.xzz) | arg_2.b.xwx;
    return func_3(~vec4<i32>(global2.a.b.x, -2147483647i, ~global2.a.b.x, global2.b.c), Struct_2(global2.a, Struct_1(arg_1 < _wgslsmith_div_f32(arg_1, arg_1), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, select(11837u, 0u, arg_0)), 12u)], arg_2.b.x), global2.b.a, ~(~(~global2.d)), arg_2), Struct_1(true & arg_0, abs(_wgslsmith_clamp_vec4_i32(arg_2.b, global2.b.b, vec4<i32>(global2.e.b.x, global2.e.b.x, 33338i, -42436i))) & _wgslsmith_add_vec4_i32(global2.b.b << (vec4<u32>(4294967295u, u_input.c, 69525u, global2.d) % vec4<u32>(32u)), global2.b.b), ~1i));
}

fn func_1(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<i32>, arg_3: i32) -> Struct_2 {
    var var_0 = min(~(~(~vec2<u32>(0u, 4294967295u)) ^ ~select(vec2<u32>(u_input.c, 0u), vec2<u32>(87140u, 0u), global2.c)), _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2.d, 124822u) << (vec2<u32>(11793u, u_input.c) % vec2<u32>(32u)), select(vec2<u32>(0u, global2.d), vec2<u32>(32200u, u_input.c), vec2<bool>(global2.b.a, global2.c))) | _wgslsmith_sub_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(u_input.c, 15999u)), vec2<u32>(global2.d & 5793u, ~u_input.c) & _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, global2.d), countOneBits(vec2<u32>(u_input.c, u_input.c)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-726f, _wgslsmith_f_op_f32(132f + -1415f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1000f)))), 1453f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1194f)), _wgslsmith_f_op_f32(round(-719f)), 471f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-930f, -794f, -1610f)) + vec3<f32>(-1000f, 806f, -142f))))));
    let var_2 = global1[_wgslsmith_index_u32(1u, 26u)];
    global2 = Struct_2(Struct_1(any(select(!vec2<bool>(true, var_2.e.a), vec2<bool>(global2.b.a, true), vec2<bool>(false, var_2.b.a))), abs(vec4<i32>(arg_2.x, global2.b.c, -1i, 16331i)) << (~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 40468u, u_input.c, 1u), vec4<u32>(var_0.x, 1u, 0u, var_2.d)) % vec4<u32>(32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-22360i, u_input.b, -1i, global2.a.b.x), var_2.b.b), vec4<i32>(global2.a.c, arg_0.x, ~arg_2.x, abs(global2.b.c)))), global2.e, true, select(_wgslsmith_dot_vec2_u32(max(vec2<u32>(24820u, 36953u) | vec2<u32>(global2.d, var_2.d), _wgslsmith_add_vec2_u32(vec2<u32>(var_2.d, u_input.c), vec2<u32>(61038u, 4294967295u))), vec2<u32>(func_2(global2.c, -436f, Struct_1(global2.c, vec4<i32>(global2.b.c, arg_2.x, arg_2.x, arg_3), u_input.a)), abs(u_input.c))), var_0.x, _wgslsmith_f_op_f32(-1101f - _wgslsmith_f_op_f32(sign(var_1.x))) > 931f), global2.e);
    global0 = array<vec4<i32>, 12>();
    return Struct_2(global2.b, Struct_1(true, vec4<i32>(min(u_input.a ^ 22157i, u_input.b | global2.e.b.x), ~_wgslsmith_mod_i32(var_2.e.c, -1i), ~arg_1, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_2.a.b.yw, vec2<i32>(arg_1, -41206i)), ~arg_1)), reverseBits(arg_0.x)), true, u_input.c, Struct_1(true, vec4<i32>(countOneBits(_wgslsmith_sub_i32(arg_1, arg_2.x)), _wgslsmith_div_i32(arg_1, -17032i), _wgslsmith_div_i32(-21488i, 2147483647i), global2.a.b.x), ~_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global2.a.b.yww, var_2.e.b.xwy), vec3<i32>(-9556i, 1i, -14879i) << (vec3<u32>(global2.d, 37613u, 4933u) % vec3<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_div_vec2_u32(min(abs(~(vec2<u32>(0u, arg_1.d) | vec2<u32>(1u, 36437u))), vec2<u32>(4294967295u, func_3(firstLeadingBit(arg_1.b.b), func_1(arg_1.b.b.wz, u_input.a, vec2<i32>(-45363i, arg_0.c), u_input.b), global2.a))), ~abs(~vec2<u32>(4294967295u, 67523u)) << (vec2<u32>(firstTrailingBit(func_1(vec2<i32>(-1i, arg_1.b.b.x), 1i, arg_1.a.b.wy, arg_1.a.b.x).d), global2.d) % vec2<u32>(32u)));
    var_0 = vec2<u32>(func_1(_wgslsmith_mult_vec2_i32(max(vec2<i32>(-1i, 0i), global2.b.b.yz), vec2<i32>(-1i, u_input.b)), u_input.a, countOneBits(vec2<i32>(arg_0.c, 3901i)), ~(-81674i)).d, arg_1.d) >> ((_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0.x, u_input.c), vec2<u32>(arg_1.d, global2.d), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(~u_input.c, ~4294967295u)) ^ ~(~reverseBits(vec2<u32>(arg_1.d, 1u)))) % vec2<u32>(32u));
    global0 = array<vec4<i32>, 12>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1070f) * _wgslsmith_f_op_f32(f32(-1f) * -226f));
    global1 = array<Struct_2, 26>();
    return func_1(vec2<i32>(global2.b.b.x, 2873i), reverseBits(_wgslsmith_clamp_i32(countOneBits(global2.b.b.x), ~(-2147483647i), u_input.b)) >> (~_wgslsmith_mod_u32(arg_1.d, ~65687u) % 32u), ~max(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.c, u_input.a) >> (vec2<u32>(1u, var_0.x) % vec2<u32>(32u)), -vec2<i32>(global2.b.c, -9246i)), vec2<i32>(u_input.b, arg_1.e.b.x) << (vec2<u32>(global2.d, 0u) % vec2<u32>(32u))), select(~_wgslsmith_dot_vec3_i32(global2.e.b.zxy & global2.e.b.yyx, arg_1.a.b.zzz ^ vec3<i32>(-29468i, -48070i, -1i)), -5750i >> (firstTrailingBit(u_input.c) % 32u), arg_1.c)).d;
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(~u_input.c ^ _wgslsmith_mult_u32(u_input.c, 1u << (global2.d % 32u)), 0u), ~4294967295u, countOneBits(_wgslsmith_add_u32(global2.d, reverseBits(u_input.c))), ~min(~global2.d, _wgslsmith_mod_u32(func_3(arg_0.b, global1[_wgslsmith_index_u32(1u, 26u)], global2.a), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, global2.d, global2.d), vec3<u32>(global2.d, u_input.c, global2.d)))));
    global0 = array<vec4<i32>, 12>();
    var var_1 = true;
    var var_2 = all(vec3<bool>(true, true, arg_0.a));
    var_1 = global2.a.a;
    return !vec4<bool>(!arg_0.a, false & select(any(vec2<bool>(global2.b.a, false)), global2.a.a, global2.a.a == false), true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global2.a.b;
    var var_1 = select(func_5(Struct_1(true, global0[_wgslsmith_index_u32(func_4(global2.e, func_1(vec2<i32>(12429i, u_input.a), 0i, global2.a.b.wx, 48865i)), 12u)], -2147483647i)), !vec4<bool>(global2.a.a, any(select(vec3<bool>(global2.a.a, true, global2.c), vec3<bool>(global2.a.a, false, global2.e.a), vec3<bool>(global2.e.a, false, global2.a.a))), global2.e.a, func_1(min(global2.e.b.wy, global2.b.b.wx), _wgslsmith_mult_i32(27170i, 1i), ~vec2<i32>(u_input.a, 8799i), ~u_input.b).c), global2.e.a || true);
    global2 = func_1(var_0.yw, func_1(func_1(~var_0.wy, _wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.b.x, -1i, var_0.x), vec3<i32>(-210i, u_input.a, var_0.x)), func_1(var_0.wx, -27758i, vec2<i32>(var_0.x, 0i), 2147483647i).e.b.yx, ~46579i).b.b.yz | _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 9460i), -var_0.zz), _wgslsmith_dot_vec3_i32(var_0.xww, countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 48823i, var_0.x), vec3<i32>(-2147483647i, u_input.a, -1i)))), ~_wgslsmith_mod_vec2_i32(func_1(global2.a.b.zz, var_0.x, global2.e.b.yz, -2147483647i).b.b.xy, var_0.ww), _wgslsmith_dot_vec2_i32(abs(var_0.wy), vec2<i32>(2147483647i, min(var_0.x, 0i)))).a.b.x, _wgslsmith_mult_vec2_i32(~vec2<i32>(-16013i, _wgslsmith_add_i32(0i, -25316i)), countOneBits(countOneBits(var_0.zx))), func_1(vec2<i32>(firstLeadingBit(global2.b.c), 0i), -3607i, global2.a.b.xy, ~countOneBits(0i)).a.b.x);
    var var_2 = func_1(-select(vec2<i32>(var_0.x, 2147483647i), var_0.wx, var_1.wy), _wgslsmith_div_i32(-max(global2.a.c ^ global2.e.b.x, var_0.x), global2.a.c), var_0.yz, _wgslsmith_mult_i32(min(1i, func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.x, 2147483647i), global2.a.b.xw), -2147483647i, -global2.e.b.ww, 0i).a.b.x), -1i));
    var var_3 = Struct_1(!(1u < _wgslsmith_div_u32(global2.d, ~1u)), ~max(~(vec4<i32>(var_2.b.c, 31196i, var_0.x, u_input.a) >> (vec4<u32>(0u, 65276u, 31707u, global2.d) % vec4<u32>(32u))), ~reverseBits(vec4<i32>(u_input.a, 8070i, var_2.a.c, -14913i))), func_1(-func_1(vec2<i32>(global2.a.b.x, 1i), 0i, global2.e.b.xx, _wgslsmith_mod_i32(52604i, var_2.e.c)).e.b.zz, abs(var_0.x), -select(vec2<i32>(-1i, -26447i) | var_2.a.b.xx, _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -38540i), vec2<i32>(u_input.a, 1i)), var_1.xy), ~40213i).b.c);
    let var_4 = -1144f;
    var_3 = Struct_1(!func_5(global2.e).x, global2.e.b, var_2.e.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.c, abs(_wgslsmith_sub_u32(~18145u, global2.d))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4, var_4) + vec2<f32>(var_4, var_4)), _wgslsmith_div_vec2_f32(vec2<f32>(var_4, var_4), vec2<f32>(-798f, -386f))))))), var_3.c | -813i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-649f, -1108f)), var_4))));
}

