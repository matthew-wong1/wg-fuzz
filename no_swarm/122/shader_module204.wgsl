struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
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

var<private> global0: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(Struct_3(vec3<i32>(0i, 2147483647i, -56830i), -447f, 1i), -384f), Struct_4(Struct_3(vec3<i32>(1i, 2147483647i, i32(-2147483648)), 838f, -38707i), 2382f), Struct_4(Struct_3(vec3<i32>(-14934i, -17172i, i32(-2147483648)), -433f, 2147483647i), 1716f), Struct_4(Struct_3(vec3<i32>(i32(-2147483648), 87241i, 1i), -1000f, i32(-2147483648)), 147f), Struct_4(Struct_3(vec3<i32>(-30095i, 2147483647i, 7536i), 148f, i32(-2147483648)), -419f), Struct_4(Struct_3(vec3<i32>(1i, 5275i, 5230i), 1905f, 40135i), 134f), Struct_4(Struct_3(vec3<i32>(1i, -13586i, 8855i), -1447f, 1i), 214f), Struct_4(Struct_3(vec3<i32>(24270i, 1i, 2147483647i), 334f, 28396i), -897f), Struct_4(Struct_3(vec3<i32>(22145i, 1i, i32(-2147483648)), -1195f, -1i), 147f), Struct_4(Struct_3(vec3<i32>(-1i, 0i, 1340i), -748f, -1i), -929f), Struct_4(Struct_3(vec3<i32>(9414i, -9202i, 1i), 205f, 2147483647i), 550f), Struct_4(Struct_3(vec3<i32>(36985i, i32(-2147483648), 1i), 1871f, -25779i), 414f), Struct_4(Struct_3(vec3<i32>(33773i, 21873i, 38961i), -510f, 2147483647i), 853f), Struct_4(Struct_3(vec3<i32>(7823i, -39290i, 28217i), -361f, -27298i), 1273f), Struct_4(Struct_3(vec3<i32>(22013i, -7782i, 1i), 1000f, 65179i), -787f), Struct_4(Struct_3(vec3<i32>(6807i, 27548i, -1i), -1000f, -28280i), 562f), Struct_4(Struct_3(vec3<i32>(-1i, 618i, 81178i), -1000f, 8069i), -746f), Struct_4(Struct_3(vec3<i32>(461i, -2191i, 2147483647i), 175f, 2147483647i), 1000f), Struct_4(Struct_3(vec3<i32>(-1i, 3502i, i32(-2147483648)), -461f, 1i), 601f), Struct_4(Struct_3(vec3<i32>(26325i, 1i, -14265i), 1000f, 0i), -863f), Struct_4(Struct_3(vec3<i32>(i32(-2147483648), 85060i, 2147483647i), 1753f, 5433i), 558f), Struct_4(Struct_3(vec3<i32>(-52954i, i32(-2147483648), -11108i), -1000f, 2147483647i), -352f), Struct_4(Struct_3(vec3<i32>(21718i, i32(-2147483648), -2141i), -759f, 1i), 499f), Struct_4(Struct_3(vec3<i32>(-19815i, -21359i, -33645i), 266f, 9787i), 390f), Struct_4(Struct_3(vec3<i32>(-39848i, 0i, 0i), 556f, -47686i), 627f), Struct_4(Struct_3(vec3<i32>(i32(-2147483648), -63490i, 1i), 977f, 0i), 445f), Struct_4(Struct_3(vec3<i32>(1i, 70496i, -13158i), 496f, -17975i), -1070f), Struct_4(Struct_3(vec3<i32>(29960i, 2147483647i, 2147483647i), 597f, i32(-2147483648)), 1369f), Struct_4(Struct_3(vec3<i32>(2147483647i, 0i, 2147483647i), 478f, -45487i), -540f), Struct_4(Struct_3(vec3<i32>(-15095i, 2147483647i, i32(-2147483648)), 1000f, 240i), 585f), Struct_4(Struct_3(vec3<i32>(-57317i, 2147483647i, -2140i), -1031f, 1i), -1421f), Struct_4(Struct_3(vec3<i32>(-1i, -16879i, i32(-2147483648)), 2212f, 2147483647i), -1404f));

var<private> global1: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    global1 = array<vec3<bool>, 16>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1900f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(735f)) * _wgslsmith_f_op_f32(f32(-1f) * -616f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1390f) + -910f), _wgslsmith_f_op_f32(-1932f + _wgslsmith_f_op_f32(f32(-1f) * -828f)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -496f) + -553f);
    global1 = array<vec3<bool>, 16>();
    let var_2 = Struct_2(Struct_1(-firstLeadingBit(vec2<i32>(-28626i, -36669i) & vec2<i32>(u_input.c, 67092i)), !(-u_input.c != _wgslsmith_dot_vec2_i32(vec2<i32>(19204i, u_input.c), vec2<i32>(2147483647i, u_input.c))), countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(43293i, 1i))), ~_wgslsmith_mod_vec2_i32(vec2<i32>(-802i, u_input.c), max(vec2<i32>(0i, u_input.c), vec2<i32>(u_input.c, 0i)))), Struct_1(-(vec2<i32>(-1i, u_input.c) & (vec2<i32>(u_input.c, -28740i) >> (vec2<u32>(61663u, u_input.b.x) % vec2<u32>(32u)))), -25808i != -(-2147483647i ^ u_input.c), firstLeadingBit(vec2<i32>(u_input.c, -6800i)) | _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.c, u_input.c) << (vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(25192i, u_input.c), vec2<i32>(u_input.c, u_input.c), vec2<i32>(-1i, u_input.c))), _wgslsmith_add_vec2_i32(-(vec2<i32>(u_input.c, u_input.c) >> (u_input.b.xx % vec2<u32>(32u))), vec2<i32>(-1i) * -vec2<i32>(u_input.c, 1i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -888f, -1000f))))), Struct_1(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -23900i), vec2<i32>(-17210i, -1i), vec2<i32>(1i, 1i)), -vec2<i32>(-59116i, -9846i)), vec2<i32>(1i, -u_input.c)), true, select(-vec2<i32>(u_input.c, 44442i), _wgslsmith_add_vec2_i32(vec2<i32>(1i, -40049i), select(vec2<i32>(u_input.c, 48713i), vec2<i32>(u_input.c, 0i), vec2<bool>(true, false))), vec2<bool>(true, true)), firstTrailingBit(max(vec2<i32>(u_input.c, -1i), vec2<i32>(u_input.c, -2147483647i)))), any(vec4<bool>(true, _wgslsmith_f_op_f32(f32(-1f) * -575f) < var_0, true, true)));
    return _wgslsmith_mod_i32(-abs(var_2.b.a.x), min(reverseBits(72598i), ~var_2.d.a.x));
}

fn func_2(arg_0: i32, arg_1: i32) -> vec4<u32> {
    global1 = array<vec3<bool>, 16>();
    let var_0 = _wgslsmith_f_op_f32(floor(2496f));
    global0 = array<Struct_4, 32>();
    let var_1 = Struct_1(-vec2<i32>(abs(~(-36049i)), arg_0), !(!all(vec2<bool>(false, true))) && false, select(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, -62400i) & (vec2<i32>(u_input.c, 2147483647i) ^ vec2<i32>(-2147483647i, arg_0)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1982i), vec2<i32>(u_input.c, arg_1)) ^ vec2<i32>(20797i, 1657i)), -vec2<i32>(max(0i, 21205i), ~arg_1), vec2<bool>(false, arg_1 >= arg_0)), max(vec2<i32>(arg_0, -2147483647i), vec2<i32>(_wgslsmith_mod_i32(-45860i, func_3()), arg_0)));
    global0 = array<Struct_4, 32>();
    return _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~countOneBits(u_input.a), ~1u, 26479u | u_input.b.x, 4294967295u), _wgslsmith_mod_vec4_u32(~vec4<u32>(18976u, 15505u, 0u, u_input.b.x), ~vec4<u32>(u_input.b.x, 33983u, 20929u, u_input.a)) << (vec4<u32>(4294967295u, u_input.a, u_input.b.x, u_input.a) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_sub_u32(~u_input.b.x, u_input.a), _wgslsmith_mod_u32(~(~u_input.a), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), u_input.b), 1u)), countOneBits(firstTrailingBit(0u) | u_input.a), _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(38581u, 0u)), ~vec2<u32>(27051u, u_input.a)), _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_add_u32(1u, u_input.b.x)))));
}

fn func_1() -> vec3<i32> {
    var var_0 = Struct_5(firstLeadingBit(vec3<i32>(-46120i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 1i, u_input.c), vec4<i32>(15739i, u_input.c, 5716i, -2147483647i)), u_input.c)), Struct_3(vec3<i32>(~firstTrailingBit(-46417i), u_input.c, firstLeadingBit(0i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(965f)) * 1000f), u_input.c), vec3<u32>(_wgslsmith_div_u32(~(u_input.a >> (34749u % 32u)), ~(~u_input.b.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, 0u)), countOneBits(vec4<u32>(u_input.a, u_input.b.x, 1u, 0u))), select(vec4<u32>(u_input.a, u_input.a, 0u, 2243u) << (vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, 1u) % vec4<u32>(32u)), func_2(32416i, -18287i), false)), ~55675u));
    global1 = array<vec3<bool>, 16>();
    var var_1 = vec3<bool>(false, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_0.b.b, _wgslsmith_f_op_f32(max(112f, -1322f)))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b))), true);
    let var_2 = _wgslsmith_sub_i32(~var_0.a.x, -4213i);
    let var_3 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(reverseBits(var_2), -13942i, -1i, countOneBits(-6011i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_2, 2147483647i, u_input.c), vec4<i32>(55967i, 32075i, u_input.c, u_input.c)), vec4<bool>(var_1.x, var_1.x || true, true, all(global1[_wgslsmith_index_u32(u_input.b.x, 16u)]))), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.b.c, var_0.b.a.x, u_input.c, var_0.a.x) >> (vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 61698u) % vec4<u32>(32u)), vec4<i32>(0i, 2147483647i, -1325i, var_0.a.x)), -vec4<i32>(13987i, var_0.b.c, var_0.b.c, 2147483647i) & (vec4<i32>(0i, 2986i, u_input.c, var_0.b.a.x) | vec4<i32>(-1741i, var_0.a.x, u_input.c, var_2)))), _wgslsmith_mult_vec4_i32(~_wgslsmith_mult_vec4_i32(select(vec4<i32>(2147483647i, 1i, -2147483647i, u_input.c), vec4<i32>(0i, var_0.b.c, -2147483647i, u_input.c), vec4<bool>(var_1.x, true, var_1.x, false)), reverseBits(vec4<i32>(var_2, u_input.c, var_2, -2147483647i))), vec4<i32>(var_0.a.x, -32787i, 11864i, var_2)));
    return ~reverseBits(abs(countOneBits(~var_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(24006i, u_input.c, -43573i), vec3<i32>(u_input.c, u_input.c, u_input.c)), max(vec3<i32>(u_input.c, 0i, u_input.c), vec3<i32>(u_input.c, u_input.c, 2147483647i))) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, u_input.c, 2147483647i), vec3<i32>(u_input.c, u_input.c, 16744i), vec3<i32>(29565i, u_input.c, u_input.c)), ~vec3<i32>(8278i, u_input.c, -19590i), vec3<i32>(u_input.c, u_input.c, 1i)), reverseBits(vec3<i32>(-44062i, -1i, u_input.c)) & ~_wgslsmith_clamp_vec3_i32(vec3<i32>(-5502i, 58455i, u_input.c), vec3<i32>(u_input.c, 0i, -21574i), vec3<i32>(u_input.c, u_input.c, 1i))) & (max(_wgslsmith_clamp_vec3_i32(vec3<i32>(-5786i, u_input.c, 2147483647i), vec3<i32>(u_input.c, -2147483647i, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(32016i, u_input.c, u_input.c), vec3<i32>(0i, 1i, 33179i))), -(~vec3<i32>(u_input.c, u_input.c, 52952i))) | _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(u_input.c, -10531i, u_input.c), func_1()));
    var var_1 = true;
    let var_2 = Struct_3(-vec3<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-21060i, u_input.c, u_input.c, var_0.x)), vec4<i32>(u_input.c, u_input.c, var_0.x, u_input.c) & vec4<i32>(u_input.c, u_input.c, -10165i, 37159i)), ~_wgslsmith_add_i32(-3898i, var_0.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(33266i, var_0.x, 18604i, -62697i), vec4<i32>(var_0.x, u_input.c, u_input.c, -49196i))), 253f, u_input.c);
    let var_3 = ~133334u;
    let var_4 = Struct_2(Struct_1(reverseBits(vec2<i32>(-var_0.x, -31607i | var_2.a.x)), false, ~countOneBits(_wgslsmith_mult_vec2_i32(var_2.a.zz, var_0.yz)), ~var_0.zy), Struct_1(select(~abs(var_2.a.zx), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 31318i, var_2.a.x, -27646i), vec4<i32>(var_2.a.x, var_2.a.x, -23161i, -73912i)), var_2.a.x), vec2<bool>(true, true)), true, firstLeadingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, var_2.c), var_0.xz), var_2.a.yy)), -max(vec2<i32>(40658i, 0i), firstLeadingBit(var_0.xx))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.b)) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b, var_2.b), 594f)), -1155f, var_2.b), Struct_1(var_2.a.yy, !(!(u_input.a != 28443u)), countOneBits(-vec2<i32>(var_2.a.x, var_0.x)), ~(abs(var_2.a.xx) << (u_input.b.yy % vec2<u32>(32u)))), any(vec3<bool>(true, true, true)));
    var var_5 = 0i;
    var var_6 = var_4.d;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-453f, var_4.c.x, _wgslsmith_f_op_f32(trunc(var_4.c.x)), var_4.c.x));
}

