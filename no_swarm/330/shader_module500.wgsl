struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(652f, 804f, 731f, 1699f), vec4<f32>(-680f, -287f, -343f, 100f), vec4<f32>(984f, -253f, -229f, -1000f), vec4<f32>(812f, -459f, -355f, 1885f), vec4<f32>(731f, -255f, -478f, 2155f), vec4<f32>(-527f, 225f, -707f, 674f), vec4<f32>(1000f, 244f, 1227f, -564f), vec4<f32>(-927f, -835f, -1000f, 160f), vec4<f32>(1159f, -2145f, -1415f, -299f), vec4<f32>(-1844f, -384f, -177f, 433f), vec4<f32>(-1432f, -789f, -669f, 1548f), vec4<f32>(-119f, -1000f, -151f, -985f), vec4<f32>(-1326f, -1303f, -963f, -419f), vec4<f32>(-470f, 479f, 193f, 267f), vec4<f32>(3244f, -762f, -1422f, 150f), vec4<f32>(577f, -477f, 434f, -1323f), vec4<f32>(1358f, 331f, 811f, -2489f), vec4<f32>(-1542f, 1000f, -1363f, -296f), vec4<f32>(131f, 784f, -410f, -2116f), vec4<f32>(-1000f, 164f, -401f, -733f), vec4<f32>(-493f, 793f, 228f, 836f), vec4<f32>(1065f, -3055f, 679f, -1000f), vec4<f32>(611f, 553f, -1384f, -730f), vec4<f32>(-2160f, -1000f, 1379f, -739f), vec4<f32>(1941f, -114f, 1621f, 1000f), vec4<f32>(801f, 1000f, 183f, -2145f), vec4<f32>(-1210f, -2206f, -546f, 244f));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-41373i, 5341i, -1i), 20116u, vec3<bool>(true, false, true), vec3<u32>(1u, 60548u, 0u), vec4<bool>(true, true, true, true));

var<private> global2: array<Struct_1, 25>;

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec3<i32>(-1i, 0i, -20219i), 60921u, vec3<bool>(true, false, true), vec3<u32>(4294967295u, 0u, 0u), vec4<bool>(false, false, true, true)), Struct_1(vec3<i32>(1i, -1i, 0i), 1u, vec3<bool>(false, true, true), vec3<u32>(30148u, 4294967295u, 46407u), vec4<bool>(false, false, false, true)), Struct_1(vec3<i32>(i32(-2147483648), -7716i, -27598i), 0u, vec3<bool>(true, true, true), vec3<u32>(1u, 4294967295u, 47350u), vec4<bool>(true, false, true, true)), Struct_1(vec3<i32>(-20898i, -27626i, -1i), 29271u, vec3<bool>(false, false, true), vec3<u32>(1u, 0u, 4294967295u), vec4<bool>(true, false, false, false)), Struct_1(vec3<i32>(-1i, 38541i, i32(-2147483648)), 119399u, vec3<bool>(false, true, true), vec3<u32>(4294967295u, 17394u, 0u), vec4<bool>(false, false, false, true)), Struct_1(vec3<i32>(5649i, 63247i, i32(-2147483648)), 1u, vec3<bool>(false, true, true), vec3<u32>(19538u, 1u, 0u), vec4<bool>(false, false, false, true)), Struct_1(vec3<i32>(-24111i, 12002i, 19925i), 28655u, vec3<bool>(true, true, false), vec3<u32>(12345u, 7655u, 4294967295u), vec4<bool>(true, true, true, false)), Struct_1(vec3<i32>(0i, -51466i, -24790i), 77560u, vec3<bool>(false, false, true), vec3<u32>(57483u, 90264u, 1381u), vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(-1i, -1i, 0i), 20092u, vec3<bool>(false, true, true), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec4<bool>(true, true, false, true)), Struct_1(vec3<i32>(11170i, 0i, -1i), 57712u, vec3<bool>(false, false, true), vec3<u32>(61028u, 111172u, 6811u), vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(-49552i, 0i, i32(-2147483648)), 1u, vec3<bool>(true, true, false), vec3<u32>(3204u, 4294967295u, 49588u), vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(0i, -1i, 0i), 1u, vec3<bool>(false, false, true), vec3<u32>(4294967295u, 0u, 1u), vec4<bool>(true, true, true, true)), Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), 4294967295u, vec3<bool>(true, false, false), vec3<u32>(26993u, 63962u, 1u), vec4<bool>(true, true, true, false)), Struct_1(vec3<i32>(0i, i32(-2147483648), 1780i), 81424u, vec3<bool>(false, false, true), vec3<u32>(1u, 37864u, 39304u), vec4<bool>(false, false, true, true)), Struct_1(vec3<i32>(-49091i, 44737i, 2147483647i), 1u, vec3<bool>(true, false, true), vec3<u32>(0u, 11751u, 17357u), vec4<bool>(false, true, true, false)), Struct_1(vec3<i32>(52740i, 1i, -1i), 4290u, vec3<bool>(true, false, false), vec3<u32>(17439u, 1u, 32695u), vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(-35512i, -27119i, 29755i), 4294967295u, vec3<bool>(true, true, true), vec3<u32>(24155u, 1u, 4294967295u), vec4<bool>(false, true, false, false)), Struct_1(vec3<i32>(2147483647i, 1i, 3953i), 11192u, vec3<bool>(false, true, false), vec3<u32>(0u, 14045u, 38980u), vec4<bool>(true, false, true, true)), Struct_1(vec3<i32>(2147483647i, -11378i, 0i), 0u, vec3<bool>(true, false, true), vec3<u32>(25385u, 4765u, 4294967295u), vec4<bool>(true, true, false, true)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    global2 = array<Struct_1, 25>();
    global3 = select(~(~(global1.d ^ u_input.a.yzz)), firstLeadingBit(global1.d), vec3<bool>(global1.c.x, all(vec4<bool>(true, true, true, true)), true));
    global0 = array<vec4<f32>, 27>();
    var var_0 = Struct_2(vec2<f32>(-125f, -215f), Struct_1(global1.a | vec3<i32>(global1.a.x, global1.a.x, -29281i), ~global3.x, !(!select(global1.c, global1.c, vec3<bool>(global1.e.x, global1.e.x, false))), ~vec3<u32>(_wgslsmith_add_u32(global1.b, 112763u), abs(0u), 18984u), vec4<bool>(true, true, any(global1.c), true & !global1.c.x)), global4[_wgslsmith_index_u32(1u, 19u)], Struct_1(vec3<i32>(-(~global1.a.x), ~global1.a.x, global1.a.x), global1.b, vec3<bool>(global1.e.x | any(global1.e), true, true), u_input.a.yzw, !vec4<bool>(true, global1.e.x, !global1.c.x, true)));
    return select(~_wgslsmith_div_u32(19343u, min(firstTrailingBit(u_input.a.x), 31224u)), ~abs(global1.d.x), any(vec2<bool>(true, global1.e.x)));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> i32 {
    var var_0 = vec4<i32>((reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, 1i, arg_0, -1i), vec4<i32>(arg_1.a.x, arg_1.a.x, -13339i, -1i))) | ~(-6848i)) & -57767i, _wgslsmith_div_i32(arg_1.a.x, -2147483647i ^ arg_0), global1.a.x, global1.a.x);
    var var_1 = !vec2<bool>(global1.c.x, global1.c.x);
    global0 = array<vec4<f32>, 27>();
    let var_2 = !(!arg_1.e.wx);
    let var_3 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-264f - -2761f), _wgslsmith_f_op_f32(sign(-918f))), Struct_1(~vec3<i32>(arg_1.a.x, _wgslsmith_div_i32(arg_0, 14969i), max(37676i, arg_0)), select(1u, _wgslsmith_clamp_u32(global3.x, arg_1.d.x, 1u) & 4294967295u, select(true, true, true)), vec3<bool>(true, select(all(vec4<bool>(global1.c.x, false, arg_1.e.x, false)), global1.c.x, select(false, false, var_2.x)), true), _wgslsmith_add_vec3_u32(global1.d, global1.d), !select(select(vec4<bool>(var_2.x, global1.e.x, global1.c.x, var_1.x), global1.e, global1.e), global1.e, arg_1.c.x && global1.e.x)), arg_1, global2[_wgslsmith_index_u32(global3.x, 25u)]);
    return reverseBits(_wgslsmith_add_i32(var_3.d.a.x, 0i));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_div_i32(~(-15111i), func_4(arg_2.d.a.x, Struct_1(~vec3<i32>(56305i, arg_2.c.a.x, -32506i), _wgslsmith_dot_vec3_u32(arg_3.d, arg_2.c.d), global1.c, vec3<u32>(11688u, 38485u, arg_1.d.x) & vec3<u32>(10921u, 1u, 17602u), arg_1.e), func_3())) <= (i32(-1i) * -15876i);
    return arg_0;
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    global3 = vec3<u32>(113206u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.x, 0u & global1.d.x), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, global1.b), vec2<u32>(global3.x, arg_0.d.x)) << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u))), ~(5423u ^ firstLeadingBit(global3.x))), global1.b);
    let var_0 = Struct_1(-(vec3<i32>(1i, _wgslsmith_clamp_i32(global1.a.x, arg_0.a.x, arg_0.a.x), _wgslsmith_mult_i32(global1.a.x, global1.a.x)) << (~abs(vec3<u32>(arg_0.b, 0u, u_input.a.x)) % vec3<u32>(32u))), abs(global3.x), arg_0.c, vec3<u32>(_wgslsmith_mult_u32(1u, global3.x), arg_0.b, ~(global1.d.x & arg_0.b)), select(!(!select(arg_0.e, vec4<bool>(true, true, false, arg_1), arg_0.c.x)), !global1.e, vec4<bool>(!(arg_1 == global1.e.x), global1.c.x, true, !func_2(global1.c.x, Struct_1(global1.a, u_input.a.x, arg_0.c, arg_0.d, global1.e), Struct_2(vec2<f32>(-1000f, -206f), global4[_wgslsmith_index_u32(0u, 19u)], Struct_1(vec3<i32>(2147483647i, arg_0.a.x, 3727i), global1.b, vec3<bool>(global1.c.x, global1.e.x, arg_1), arg_0.d, arg_0.e), global4[_wgslsmith_index_u32(global1.b, 19u)]), Struct_1(global1.a, 0u, vec3<bool>(true, false, arg_1), global1.d, vec4<bool>(arg_1, global1.c.x, false, arg_0.c.x))))));
    global4 = array<Struct_1, 19>();
    let var_1 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.a.x, ~11664i, abs(arg_0.a.x), max(global1.a.x, global1.a.x)), -(~vec4<i32>(-1i, var_0.a.x, -1i, arg_0.a.x)), -countOneBits(vec4<i32>(-2147483647i, -10025i, -12551i, -2147483647i))) | _wgslsmith_add_vec4_i32(select(~vec4<i32>(var_0.a.x, global1.a.x, global1.a.x, var_0.a.x), -vec4<i32>(25331i, 0i, var_0.a.x, arg_0.a.x), any(global1.e)) >> (u_input.a % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(global1.a.x, arg_0.a.x, global1.a.x, var_0.a.x)), vec4<i32>(global1.a.x, global1.a.x, 0i, 1i) >> (u_input.a % vec4<u32>(32u))) | ~firstLeadingBit(vec4<i32>(global1.a.x, var_0.a.x, global1.a.x, -1i)));
    global4 = array<Struct_1, 19>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(166f)), 1679f), vec2<f32>(_wgslsmith_div_f32(-1000f, -1404f), -398f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(291f, -508f), _wgslsmith_div_vec2_f32(vec2<f32>(631f, -212f), vec2<f32>(-957f, 629f))))), !select(var_0.e.yy, !vec2<bool>(arg_1, arg_1), vec2<bool>(true, true)))), Struct_1(var_1.zyx, 1u, var_0.e.zxw, _wgslsmith_div_vec3_u32(abs(countOneBits(vec3<u32>(0u, 4294967295u, 30264u))), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.d.x, u_input.a.x, global3.x), u_input.a.ywy)), var_0.e), Struct_1(var_0.a, _wgslsmith_mod_u32(~arg_0.d.x, arg_0.d.x), !global1.e.xzw, ~global1.d, !arg_0.e), global2[_wgslsmith_index_u32(reverseBits(global1.b), 25u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(global1.a, max(~_wgslsmith_mult_u32(global3.x, 0u), ~1u & ~u_input.a.x), !global1.c, vec3<u32>(countOneBits(~4294967295u), ~abs(1u), global1.b), !global1.e), global1.c.x);
    global3 = vec3<u32>(4294967295u, 14924u, func_1(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(reverseBits(1u), ~u_input.a.x), 25u)], true).b.b);
    global0 = array<vec4<f32>, 27>();
    global4 = array<Struct_1, 19>();
    let var_1 = func_1(global4[_wgslsmith_index_u32(~38899u, 19u)], true);
    var var_2 = 5031u;
    let x = u_input.a;
    s_output = StorageBuffer(-690f, firstLeadingBit(reverseBits(2147483647i)) >> (((global1.d.x ^ (65719u >> (global1.b % 32u))) << (~15039u % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(28467u, 27u)]), _wgslsmith_f_op_f32(abs(func_1(global4[_wgslsmith_index_u32(var_0.d.b, 19u)], all(vec4<bool>(var_1.d.e.x, false, var_0.b.e.x, true)) == true).a.x)));
}

