struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: f32,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec3<bool>(true, true, true), false, 323f, vec4<i32>(-6805i, -1i, 31479i, 0i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, true), false, -1321f, vec4<i32>(49335i, 32484i, 32542i, 0i), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(true, true, true), true, 250f, vec4<i32>(-1i, 2147483647i, 1i, 56116i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, false), false, -1000f, vec4<i32>(i32(-2147483648), 287i, 2147483647i, i32(-2147483648)), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, true), true, 289f, vec4<i32>(1i, 2147483647i, 2147483647i, 2071i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, true), false, -933f, vec4<i32>(i32(-2147483648), -16704i, 4474i, 1i), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, false, true), true, -680f, vec4<i32>(113392i, -73684i, 1i, -1i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, true), true, -1120f, vec4<i32>(73136i, i32(-2147483648), -1i, 75186i), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(true, false, false), false, 602f, vec4<i32>(-1i, 0i, 20979i, 18487i), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, true, false), false, 1000f, vec4<i32>(2147483647i, 8100i, -38352i, 2147483647i), vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(true, true, true), false, -1305f, vec4<i32>(2147483647i, 2147483647i, 12926i, -34739i), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, true, true), false, 215f, vec4<i32>(-37641i, -2026i, 20219i, i32(-2147483648)), vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(true, true, false), false, 188f, vec4<i32>(10198i, -1i, -36253i, 1i), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(false, true, true), true, 306f, vec4<i32>(-1i, -40870i, -97755i, 0i), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, true, false), true, 193f, vec4<i32>(-5468i, 20224i, 30766i, -1i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, false), false, -1105f, vec4<i32>(10655i, 31944i, i32(-2147483648), -6146i), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(true, true, true), true, 520f, vec4<i32>(i32(-2147483648), -42036i, i32(-2147483648), 58923i), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, true, false), false, -1421f, vec4<i32>(-15177i, -1i, 2147483647i, 1i), vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(true, false, false), true, 522f, vec4<i32>(0i, 0i, -39082i, 0i), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(false, false, true), false, -348f, vec4<i32>(-35862i, 2147483647i, 2147483647i, 27683i), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(false, true, true), true, 630f, vec4<i32>(42767i, 27863i, 2147483647i, 0i), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(true, false, true), true, -767f, vec4<i32>(i32(-2147483648), 1i, 1i, 2147483647i), vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(false, true, false), false, 198f, vec4<i32>(9698i, 1i, 41281i, -39449i), vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(false, false, false), true, -658f, vec4<i32>(i32(-2147483648), 45163i, 13726i, -4337i), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, false, true), false, -1842f, vec4<i32>(-64041i, 10911i, -1i, i32(-2147483648)), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, false, false), true, 1583f, vec4<i32>(-31754i, 43735i, 0i, 16593i), vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, true, true), false, -716f, vec4<i32>(2147483647i, 8519i, 80534i, -15428i), vec4<bool>(false, false, true, true)));

var<private> global1: vec3<bool>;

var<private> global2: vec4<i32>;

var<private> global3: array<u32, 12> = array<u32, 12>(1u, 25631u, 431u, 4294967295u, 6268u, 0u, 6759u, 14688u, 4294967295u, 28582u, 4294967295u, 1u);

var<private> global4: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<bool>(false, false, true), false, 301f, vec4<i32>(0i, i32(-2147483648), 28435i, -803i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, false), false, -1447f, vec4<i32>(-1i, -43420i, -1i, i32(-2147483648)), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(true, false, false), false, -1003f, vec4<i32>(-1i, 62493i, -45582i, 0i), vec4<bool>(true, true, true, false)), Struct_1(vec3<bool>(true, true, false), true, -1801f, vec4<i32>(37364i, i32(-2147483648), 2147483647i, 0i), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, false, true), true, 296f, vec4<i32>(2147483647i, 24178i, -11834i, 8519i), vec4<bool>(true, true, true, true)), Struct_1(vec3<bool>(true, false, false), true, -954f, vec4<i32>(0i, -23422i, 2147483647i, 2147483647i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, false), false, 1361f, vec4<i32>(-41277i, -9872i, -36479i, 13879i), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, true, false), false, 739f, vec4<i32>(22569i, 27607i, -21290i, 2273i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, true, false), false, 1000f, vec4<i32>(0i, i32(-2147483648), 1i, -40224i), vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, false), true, -1000f, vec4<i32>(1i, 35481i, -1i, i32(-2147483648)), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(false, true, true), true, 577f, vec4<i32>(2147483647i, 22973i, 0i, 2147483647i), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, true), true, 309f, vec4<i32>(27597i, -34222i, -1i, 51198i), vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, true, true), true, 459f, vec4<i32>(-1i, 1i, i32(-2147483648), i32(-2147483648)), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(true, true, false), true, 282f, vec4<i32>(-15705i, 14116i, -1i, -1i), vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(true, true, false), true, -689f, vec4<i32>(-8093i, -7447i, 0i, -46713i), vec4<bool>(true, true, false, false)), Struct_1(vec3<bool>(false, true, false), true, -220f, vec4<i32>(i32(-2147483648), -1i, -13697i, 26536i), vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(false, true, true), true, 841f, vec4<i32>(1i, 4500i, 14318i, 1i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, false, false), true, 783f, vec4<i32>(23176i, -1i, -43785i, 0i), vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, true, false), false, 1710f, vec4<i32>(42606i, -15761i, 72978i, -1i), vec4<bool>(false, true, false, false)), Struct_1(vec3<bool>(true, true, true), true, 942f, vec4<i32>(-53217i, 2147483647i, 6087i, 2147483647i), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, false, false), true, -409f, vec4<i32>(i32(-2147483648), -65231i, -1i, -39278i), vec4<bool>(false, true, false, true)), Struct_1(vec3<bool>(true, false, false), false, 177f, vec4<i32>(-31671i, -42021i, 1i, i32(-2147483648)), vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, true), true, -1581f, vec4<i32>(2147483647i, -23999i, -43506i, 24174i), vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(true, true, true), true, 1020f, vec4<i32>(40459i, 73453i, 12681i, -4476i), vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(true, false, true), false, -204f, vec4<i32>(2147483647i, i32(-2147483648), 9094i, 1i), vec4<bool>(true, true, false, true)), Struct_1(vec3<bool>(false, true, false), false, -607f, vec4<i32>(i32(-2147483648), 1i, -53969i, 2147483647i), vec4<bool>(true, false, true, true)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<i32>) -> bool {
    let var_0 = true;
    let var_1 = Struct_2(1u, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(50842u, 12u)], 1u, 0u) & select(vec3<u32>(0u, 4294967295u, 115051u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(85440u, 12u)], 12u)], 0u, 65271u), var_0), min(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], global3[_wgslsmith_index_u32(1u, 12u)], 59910u), vec3<u32>(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(29215u, 12u)], 12u)], 12u)], 12u)], 12u)], 23120u)))), !(!select(select(vec3<bool>(true, true, global1.x), vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, true, global1.x)), !vec3<bool>(var_0, true, true), true)), Struct_1(!select(!vec3<bool>(global1.x, true, global1.x), !vec3<bool>(false, false, global1.x), false), any(select(select(vec4<bool>(false, false, var_0, true), vec4<bool>(global1.x, false, var_0, true), global1.x), !vec4<bool>(false, false, var_0, global1.x), any(vec3<bool>(false, true, true)))), 1f, abs(-vec4<i32>(-18063i, u_input.a, 38586i, -9647i)) | reverseBits(abs(vec4<i32>(1i, -1i, u_input.a, 1i))), select(vec4<bool>(true, true, var_0, true), !select(vec4<bool>(true, var_0, true, false), vec4<bool>(true, global1.x, var_0, var_0), var_0), (global1.x | var_0) | true)), countOneBits(_wgslsmith_add_vec3_u32(abs(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9591u, 12u)], 12u)], global3[_wgslsmith_index_u32(38262u, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(43603u, 12u)], 12u)])), firstTrailingBit(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 31270u, 1u)))));
    global4 = array<Struct_1, 26>();
    var var_2 = _wgslsmith_sub_i32(~(-2147483647i), -global2.x);
    let var_3 = var_0;
    return true;
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = vec4<bool>(arg_1.d.a.x, select(arg_1.c.x, any(arg_1.d.e.zwx), select(global1.x, func_3(_wgslsmith_add_vec3_i32(arg_0.xwy, vec3<i32>(-75794i, 2147483647i, 2147483647i))), !select(arg_1.c.x, false, false))), any(arg_1.d.e.xxx), global1.x);
    let var_1 = arg_0;
    let var_2 = _wgslsmith_mod_vec2_i32(min(arg_0.yy, -reverseBits(select(global2.zw, global2.wy, arg_1.d.a.zx))), _wgslsmith_mod_vec2_i32(var_1.yx, vec2<i32>(select(~(-57122i), ~arg_0.x, global1.x), -min(var_1.x, 0i))));
    var var_3 = arg_1;
    global4 = array<Struct_1, 26>();
    return vec3<bool>(any(select(var_0.zzw, var_3.d.a, arg_1.d.e.x)), 563f != _wgslsmith_f_op_f32(-var_3.d.c), arg_1.c.x);
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: vec3<bool>, arg_3: vec4<u32>) -> vec4<bool> {
    var var_0 = ~arg_3 & ~_wgslsmith_add_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(10657u, 12u)], arg_3.x, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 48000u), abs(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], global3[_wgslsmith_index_u32(arg_3.x, 12u)], 0u, global3[_wgslsmith_index_u32(1u, 12u)])));
    global4 = array<Struct_1, 26>();
    global0 = array<Struct_1, 27>();
    global2 = vec4<i32>(max(arg_1, min(u_input.a | arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(-9463i, arg_1), vec2<i32>(u_input.a, 1i)))), abs(i32(-1i) * -2147483647i), u_input.a, _wgslsmith_div_i32(-1982i, arg_0)) ^ (_wgslsmith_div_vec4_i32(min(~vec4<i32>(global2.x, arg_0, -2147483647i, arg_0), vec4<i32>(-1i, 2147483647i, u_input.a, global2.x)), firstLeadingBit(reverseBits(vec4<i32>(0i, global2.x, global2.x, arg_0)))) | min(select(vec4<i32>(-2147483647i, -1i, u_input.a, u_input.a), -vec4<i32>(18112i, -2147483647i, arg_0, 26604i), select(vec4<bool>(true, true, false, arg_2.x), vec4<bool>(global1.x, global1.x, arg_2.x, true), true)), vec4<i32>(arg_0, ~global2.x, ~global2.x, u_input.a >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)] % 32u))));
    return vec4<bool>(163f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), arg_2.x, false, true);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(!(!(!(!vec3<bool>(true, false, global1.x)))), !any(select(!vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, global1.x, false), !vec3<bool>(true, global1.x, false))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(746f - -556f)))), ~(-(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 61393i, 1i, -1i), vec4<i32>(u_input.a, global2.x, -1935i, -32344i)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(49943u, global3[_wgslsmith_index_u32(1u, 12u)], 10472u, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(1u, 12u)], 15633u, 46809u, 66146u)) % vec4<u32>(32u)))), func_4(firstTrailingBit(_wgslsmith_sub_i32(-1941i, -2535i)), global2.x, !select(!vec3<bool>(true, true, global1.x), func_2(vec4<i32>(u_input.a, 853i, global2.x, u_input.a), Struct_2(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)], vec3<bool>(global1.x, true, global1.x), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22244u, 12u)], 12u)], 12u)], 27u)], vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(69892u, 12u)], 12u)], 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)])), vec4<f32>(-1160f, -1791f, -236f, 2322f)), func_3(vec3<i32>(u_input.a, -2896i, 20385i))), ~(~vec4<u32>(0u, 0u, 31294u, global3[_wgslsmith_index_u32(100607u, 12u)]) >> (vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 18685u, 1u) % vec4<u32>(32u)))));
    var var_1 = Struct_3(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(0u, 12u)], min(~9231u, global3[_wgslsmith_index_u32(1u, 12u)]))), 12u)], 26u)]);
    var var_2 = 28508u;
    var_1 = Struct_3(global4[_wgslsmith_index_u32(max(abs(8635u), ~reverseBits(global3[_wgslsmith_index_u32(4294967295u, 12u)])) << (global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13627u, 12u)], 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)]) | _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 15253u, 0u, global3[_wgslsmith_index_u32(27511u, 12u)]), vec4<u32>(4294967295u, 0u, 39176u, global3[_wgslsmith_index_u32(69229u, 12u)])), ~(~vec4<u32>(4294967295u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 4294967295u))), 12u)] % 32u), 26u)]);
    var_2 = 1u;
    return Struct_1(vec3<bool>(!(!any(vec2<bool>(true, global1.x))), !((4294967295u > global3[_wgslsmith_index_u32(4294967295u, 12u)]) && (var_0.c < 1000f)), true), func_4(~1030i, -4055i, vec3<bool>(select(var_1.a.a.x, var_0.e.x, false), true, true), ~(~min(vec4<u32>(12288u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 4294967295u, 0u), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(9520u, 12u)], 1u, 46837u)))).x, 174f, min(_wgslsmith_sub_vec4_i32(var_0.d, firstTrailingBit(vec4<i32>(u_input.a, var_0.d.x, -1i, var_0.d.x) ^ var_0.d)), _wgslsmith_add_vec4_i32(-(vec4<i32>(0i, u_input.a, var_0.d.x, global2.x) >> (vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(74423u, 12u)], 12u)], 12u)], 0u, global3[_wgslsmith_index_u32(9971u, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(55134u, 12u)], 12u)]) % vec4<u32>(32u))), vec4<i32>(45514i, -1i, u_input.a, reverseBits(global2.x)))), vec4<bool>(func_4(var_1.a.d.x, _wgslsmith_mod_i32(-u_input.a, i32(-1i) * -2147483647i), var_1.a.e.yww, vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 1u, 4294967295u) ^ vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45043u, 12u)], 12u)], 34535u)).x, true, func_4(firstLeadingBit(-2147483647i), var_1.a.d.x, var_0.a, reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(1u, global3[_wgslsmith_index_u32(57407u, 12u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)]), vec4<u32>(8430u, 55939u, global3[_wgslsmith_index_u32(46123u, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(55673u, 12u)], 12u)], 12u)])))).x, false));
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    global4 = array<Struct_1, 26>();
    let var_0 = Struct_3(global0[_wgslsmith_index_u32(1u, 27u)]);
    let var_1 = arg_0.e.xx;
    global2 = ~_wgslsmith_clamp_vec4_i32(arg_0.d.d, -vec4<i32>(~0i, global2.x, arg_0.d.d.x, ~u_input.a), vec4<i32>(8837i, _wgslsmith_add_i32(10303i, global2.x) ^ _wgslsmith_div_i32(global2.x, 20449i), -firstLeadingBit(var_0.a.d.x), 16768i));
    let var_2 = any(vec4<bool>(!arg_0.d.e.x, var_0.a.b, !arg_0.d.b & true, true));
    return var_0;
}

fn func_6(arg_0: Struct_3, arg_1: bool, arg_2: vec2<u32>) -> Struct_3 {
    global2 = ~max(countOneBits(vec4<i32>(-22465i, -39305i, func_5(Struct_2(76503u, 12151u, vec3<bool>(true, global1.x, false), Struct_1(arg_0.a.a, arg_1, -447f, arg_0.a.d, arg_0.a.e), vec3<u32>(global3[_wgslsmith_index_u32(26866u, 12u)], 35862u, arg_2.x))).a.d.x, 0i)), select(arg_0.a.d, max(arg_0.a.d, arg_0.a.d), arg_0.a.e) & vec4<i32>(countOneBits(0i), -1i, -2186i, -8926i));
    global1 = vec3<bool>(false & (arg_0.a.d.x < abs(global2.x)), !(false && (!arg_0.a.e.x & !arg_1)), global1.x);
    global4 = array<Struct_1, 26>();
    global3 = array<u32, 12>();
    let var_0 = ~vec3<u32>(arg_2.x, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(select(arg_2.x, 8298u, false)), 1u), 12u)], firstTrailingBit(arg_2.x));
    return func_5(Struct_2(var_0.x, 8479u, !vec3<bool>(true, any(vec4<bool>(false, false, arg_1, true)), true), func_5(Struct_2(1u, ~0u, !arg_0.a.e.wxz, global4[_wgslsmith_index_u32(63325u, 26u)], vec3<u32>(0u, global3[_wgslsmith_index_u32(70792u, 12u)], 0u))).a, ~(~var_0)));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_3) -> Struct_1 {
    let var_0 = global1.yz;
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(24088u, 1u, 33178u, global3[_wgslsmith_index_u32(0u, 12u)])) >> (vec4<u32>(1u, _wgslsmith_add_u32(4294967295u, global3[_wgslsmith_index_u32(1u, 12u)]), ~global3[_wgslsmith_index_u32(3732u, 12u)], 30133u) % vec4<u32>(32u)), vec4<u32>(global3[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)]), 12u)], global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(1u, 12u)], 12u)] >> (4294967295u % 32u), 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(69391u, 12u)], 12u)] ^ 31801u, min(25508u, 6667u)), 12u)], 12u)]), vec4<u32>(0u, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46121u, 12u)], 12u)], 12u)], 12u)], 56574u, 27975u, 1u), vec4<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], global3[_wgslsmith_index_u32(80116u, 12u)], global3[_wgslsmith_index_u32(1u, 12u)])), 12u)], firstTrailingBit(0u)), max(5963u, 17561u), 40543u)), vec4<u32>(0u, global3[_wgslsmith_index_u32(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u << (global3[_wgslsmith_index_u32(41884u, 12u)] % 32u), 12u)], 12u)]), 12u)], 798u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(47878u, 12u)], 34197u, 41967u) & global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3[_wgslsmith_index_u32(1u, 12u)], 0u), vec3<u32>(944u, 1u, 0u)), 12u)], _wgslsmith_sub_u32(76364u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)]) & global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(131496u, 0u), vec2<u32>(4294967295u, 1u)), 12u)])));
    var var_2 = 0u;
    global0 = array<Struct_1, 27>();
    let var_3 = func_1().b;
    return Struct_1(vec3<bool>(true, !(_wgslsmith_f_op_f32(-arg_1.a.c) >= _wgslsmith_f_op_f32(f32(-1f) * -162f)), arg_1.a.b), _wgslsmith_div_f32(arg_0.c, -117f) <= _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c * arg_1.a.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(-arg_0.c), vec4<i32>(_wgslsmith_sub_i32(global2.x, -arg_0.d.x), func_1().d.x, global2.x, i32(-1i) * -3244i), arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    var var_0 = func_7(global4[_wgslsmith_index_u32(~70252u, 26u)], func_6(func_5(Struct_2(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)] ^ 5593u, 12u)], global3[_wgslsmith_index_u32(firstLeadingBit(0u), 12u)], select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, true, global1.x)), func_1(), ~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(11885u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 83269u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 12u)]))), func_5(Struct_2(global3[_wgslsmith_index_u32(125819u, 12u)], 102934u, vec3<bool>(global1.x, global1.x, global1.x), Struct_1(vec3<bool>(false, global1.x, true), global1.x, 1602f, vec4<i32>(u_input.a, u_input.a, 24926i, -8898i), vec4<bool>(global1.x, global1.x, global1.x, true)), vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(22065u, 12u)], 12u)], 47355u))).a.d.x <= _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -15178i, 2147483647i, global2.x), vec4<i32>(-19831i, u_input.a, global2.x, global2.x)), 0i), reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)]), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 12u)], 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(57369u, 12u)], 12u)])), vec2<u32>(global3[_wgslsmith_index_u32(14731u, 12u)], global3[_wgslsmith_index_u32(0u, 12u)]) ^ vec2<u32>(39919u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(852u, 12u)], 12u)])))));
    var var_1 = Struct_2(firstLeadingBit(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(~23571u | _wgslsmith_dot_vec3_u32(vec3<u32>(9093u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(78599u, 12u)], 12u)], 79047u), vec3<u32>(global3[_wgslsmith_index_u32(19459u, 12u)], 34923u, global3[_wgslsmith_index_u32(16333u, 12u)])), 12u)]), 12u)], 12u)]), ~51433u, var_0.a, func_7(Struct_1(var_0.a, any(vec3<bool>(false, false, true)), var_0.c, select(var_0.d, func_7(Struct_1(var_0.a, true, var_0.c, vec4<i32>(-37565i, 0i, global2.x, u_input.a), var_0.e), Struct_3(global4[_wgslsmith_index_u32(74494u, 26u)])).d, true), vec4<bool>(var_0.e.x, var_0.b, global1.x != global1.x, var_0.e.x)), Struct_3(Struct_1(select(var_0.a, vec3<bool>(true, false, true), var_0.e.xxy), global1.x && true, _wgslsmith_f_op_f32(var_0.c - 189f), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -49868i, -32067i, var_0.d.x), var_0.d), select(var_0.e, var_0.e, vec4<bool>(true, var_0.a.x, true, var_0.e.x))))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(min(global3[_wgslsmith_index_u32(21542u, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)]), global3[_wgslsmith_index_u32(1u | global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36164u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(9550u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], 0u), 12u)]), select(~vec3<u32>(global3[_wgslsmith_index_u32(5861u, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 12u)], 12u)], 12u)], 2477u), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)]), var_0.d.x > 1i)), max(~38085u >> ((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(2187u, 12u)], 12u)], 12u)], 12u)] ^ 39438u) % 32u), global3[_wgslsmith_index_u32(~(global3[_wgslsmith_index_u32(24189u, 12u)] & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)]), 12u)]), countOneBits(~(~global3[_wgslsmith_index_u32(64026u, 12u)]))));
    var var_2 = Struct_2(~abs(max(_wgslsmith_sub_u32(2128u, var_1.b), firstLeadingBit(var_1.e.x))), ((var_1.b ^ _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14436u, 12u)], 12u)], var_1.a)) | global3[_wgslsmith_index_u32(firstLeadingBit(~global3[_wgslsmith_index_u32(0u, 12u)]), 12u)]) & countOneBits(_wgslsmith_clamp_u32(~33413u, ~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)], 1u)), !(!(!(!var_1.d.a))), global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_1.e.yz ^ var_1.e.zz, _wgslsmith_mult_vec2_u32(var_1.e.xz, var_1.e.yz)), 26u)], var_1.e);
    var var_3 = -_wgslsmith_mult_i32(2147483647i, func_5(Struct_2(global3[_wgslsmith_index_u32(106846u, 12u)] ^ var_1.a, countOneBits(global3[_wgslsmith_index_u32(19279u, 12u)]), func_5(Struct_2(global3[_wgslsmith_index_u32(1u, 12u)], var_1.b, vec3<bool>(var_0.b, true, global1.x), global0[_wgslsmith_index_u32(1u, 27u)], var_1.e)).a.a, var_1.d, ~var_1.e)).a.d.x);
    var var_4 = ~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(~62106u, _wgslsmith_mod_u32(var_2.a, var_2.b), 1u ^ var_1.a, global3[_wgslsmith_index_u32(15242u, 12u)] & 0u), ~vec4<u32>(44232u, var_2.e.x, global3[_wgslsmith_index_u32(var_2.b, 12u)], 51533u)), _wgslsmith_mod_vec4_u32(vec4<u32>(39058u & var_1.e.x, firstTrailingBit(18593u), ~65090u, 4294967295u), min(vec4<u32>(4294967295u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15591u, 12u)], 12u)], 4294967295u) ^ vec4<u32>(4294967295u, var_1.a, var_2.a, 4294967295u), select(vec4<u32>(1u, 5965u, var_2.a, var_1.a), vec4<u32>(var_2.e.x, 0u, 0u, var_1.a), var_1.d.e))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0.c, 133f, 276f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -829f))))));
}

