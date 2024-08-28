struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 22> = array<Struct_4, 22>(Struct_4(Struct_2(14754u, vec4<i32>(i32(-2147483648), 15650i, 18187i, -3342i), vec3<bool>(true, true, false)), Struct_1(vec2<f32>(128f, -1243f), vec4<i32>(-38546i, -1i, -26419i, -1i)), 15026u), Struct_4(Struct_2(1u, vec4<i32>(21846i, 1i, -19425i, 0i), vec3<bool>(true, false, true)), Struct_1(vec2<f32>(1210f, -1127f), vec4<i32>(-24276i, -24836i, -29322i, 1i)), 8344u), Struct_4(Struct_2(4294967295u, vec4<i32>(5381i, -16970i, 1i, 11434i), vec3<bool>(true, true, true)), Struct_1(vec2<f32>(-2130f, 1322f), vec4<i32>(-5736i, -1i, 26025i, 2147483647i)), 4294967295u), Struct_4(Struct_2(37694u, vec4<i32>(0i, -1374i, 56331i, i32(-2147483648)), vec3<bool>(false, false, true)), Struct_1(vec2<f32>(734f, -230f), vec4<i32>(-28272i, -41570i, -1i, 39682i)), 76963u), Struct_4(Struct_2(22464u, vec4<i32>(0i, 0i, -7466i, 1229i), vec3<bool>(true, false, true)), Struct_1(vec2<f32>(1000f, 107f), vec4<i32>(i32(-2147483648), 1i, 12977i, 86629i)), 46066u), Struct_4(Struct_2(0u, vec4<i32>(2147483647i, 38065i, 0i, 60658i), vec3<bool>(true, false, true)), Struct_1(vec2<f32>(436f, -1364f), vec4<i32>(1i, 1i, -1i, 0i)), 16489u), Struct_4(Struct_2(4529u, vec4<i32>(-24508i, 1i, 16748i, 7863i), vec3<bool>(false, false, false)), Struct_1(vec2<f32>(-636f, -1536f), vec4<i32>(1162i, 0i, 11135i, -49953i)), 10415u), Struct_4(Struct_2(78155u, vec4<i32>(-84193i, -1i, -52877i, i32(-2147483648)), vec3<bool>(true, false, false)), Struct_1(vec2<f32>(-812f, -1232f), vec4<i32>(2147483647i, 0i, -22424i, i32(-2147483648))), 19857u), Struct_4(Struct_2(1u, vec4<i32>(0i, 0i, 47069i, 2147483647i), vec3<bool>(true, false, false)), Struct_1(vec2<f32>(719f, -1891f), vec4<i32>(44311i, 59785i, i32(-2147483648), -16198i)), 5428u), Struct_4(Struct_2(4294967295u, vec4<i32>(18293i, 6698i, 2147483647i, -3915i), vec3<bool>(false, true, false)), Struct_1(vec2<f32>(-1000f, -2923f), vec4<i32>(2147483647i, -20555i, -29546i, 0i)), 5640u), Struct_4(Struct_2(1u, vec4<i32>(1i, -14088i, 33785i, 22983i), vec3<bool>(false, true, false)), Struct_1(vec2<f32>(634f, 704f), vec4<i32>(9031i, i32(-2147483648), 2147483647i, 26953i)), 0u), Struct_4(Struct_2(1u, vec4<i32>(9427i, 1i, 2147483647i, -6947i), vec3<bool>(true, true, false)), Struct_1(vec2<f32>(-200f, -798f), vec4<i32>(2147483647i, 65212i, -1i, i32(-2147483648))), 4294967295u), Struct_4(Struct_2(1u, vec4<i32>(i32(-2147483648), i32(-2147483648), -1i, 1i), vec3<bool>(true, true, false)), Struct_1(vec2<f32>(466f, -427f), vec4<i32>(0i, -16046i, 2147483647i, -6106i)), 2332u), Struct_4(Struct_2(4294967295u, vec4<i32>(-46052i, 44910i, 0i, 10338i), vec3<bool>(true, false, false)), Struct_1(vec2<f32>(603f, -695f), vec4<i32>(0i, i32(-2147483648), -1i, -1i)), 57927u), Struct_4(Struct_2(58800u, vec4<i32>(i32(-2147483648), -14553i, 1i, -67111i), vec3<bool>(false, true, false)), Struct_1(vec2<f32>(1057f, -514f), vec4<i32>(1i, 1i, -63627i, 1i)), 4294967295u), Struct_4(Struct_2(1u, vec4<i32>(-51147i, -40180i, 1i, i32(-2147483648)), vec3<bool>(true, false, true)), Struct_1(vec2<f32>(1327f, -1016f), vec4<i32>(-14466i, 2147483647i, -1i, i32(-2147483648))), 51059u), Struct_4(Struct_2(75597u, vec4<i32>(32307i, 1i, i32(-2147483648), 35276i), vec3<bool>(false, true, false)), Struct_1(vec2<f32>(-1150f, 557f), vec4<i32>(-916i, -30161i, 0i, i32(-2147483648))), 4294967295u), Struct_4(Struct_2(1u, vec4<i32>(15800i, 0i, 0i, 398i), vec3<bool>(true, true, false)), Struct_1(vec2<f32>(-1239f, -724f), vec4<i32>(2147483647i, 2147483647i, 3386i, 33337i)), 0u), Struct_4(Struct_2(51020u, vec4<i32>(-58194i, -37924i, 21963i, i32(-2147483648)), vec3<bool>(true, true, true)), Struct_1(vec2<f32>(-462f, 526f), vec4<i32>(1i, 0i, -1i, 0i)), 25676u), Struct_4(Struct_2(3824u, vec4<i32>(23509i, 28455i, 5306i, 1i), vec3<bool>(false, true, false)), Struct_1(vec2<f32>(1586f, -1253f), vec4<i32>(i32(-2147483648), -4750i, 1i, -1i)), 0u), Struct_4(Struct_2(0u, vec4<i32>(-29305i, 68558i, 2147483647i, 22123i), vec3<bool>(true, true, true)), Struct_1(vec2<f32>(575f, -1146f), vec4<i32>(2147483647i, -24708i, -23634i, 0i)), 1u), Struct_4(Struct_2(0u, vec4<i32>(1i, 37806i, -1i, i32(-2147483648)), vec3<bool>(false, false, false)), Struct_1(vec2<f32>(1229f, -1000f), vec4<i32>(0i, -2131i, 0i, 17313i)), 24669u));

var<private> global1: Struct_1;

var<private> global2: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(6582i, 4173i, 1i), vec3<i32>(0i, i32(-2147483648), -23680i), vec3<i32>(8680i, i32(-2147483648), 2147483647i), vec3<i32>(9068i, -17599i, i32(-2147483648)), vec3<i32>(-1731i, -20290i, 7127i), vec3<i32>(-72816i, 36703i, 2147483647i), vec3<i32>(8153i, 1i, 2147483647i), vec3<i32>(-1i, -9477i, 1i));

var<private> global3: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_2(~global3.e, global1.b, vec3<bool>(true, all(select(vec4<bool>(global3.c, global3.b, global3.b, false), select(vec4<bool>(global3.b, false, false, global3.c), vec4<bool>(false, false, false, global3.b), vec4<bool>(true, global3.b, global3.c, global3.b)), true)), true));
    global0 = array<Struct_4, 22>();
    var var_1 = !(!var_0.c.yy);
    global0 = array<Struct_4, 22>();
    let var_2 = _wgslsmith_mult_i32(u_input.c.x, u_input.c.x);
    return _wgslsmith_sub_vec2_u32(abs(u_input.a.xz), _wgslsmith_clamp_vec2_u32(~vec2<u32>(select(global3.d, 1u, global3.b), _wgslsmith_clamp_u32(19311u, 60996u, global3.d)), u_input.a.zy, _wgslsmith_mod_vec2_u32(select(u_input.a.xz | u_input.a.zy, _wgslsmith_mod_vec2_u32(u_input.a.xy, u_input.a.yy), !vec2<bool>(false, var_0.c.x)), vec2<u32>(~1u, _wgslsmith_sub_u32(0u, global3.e)))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: Struct_4) -> vec2<u32> {
    global0 = array<Struct_4, 22>();
    global1 = arg_2.b;
    return ~(~_wgslsmith_mod_vec2_u32(func_3(), vec2<u32>(_wgslsmith_mult_u32(39470u, 21719u), 1u)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    let var_0 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(func_2(arg_0.b.x, global1.a.x, global0[_wgslsmith_index_u32(44048u ^ arg_0.a, 22u)]), vec2<u32>(u_input.a.x ^ 39711u, u_input.a.x)), firstLeadingBit(~firstTrailingBit(u_input.a.yx)));
    global3 = Struct_3(-2147483647i, global3.c || arg_0.c.x, !(global3.b || all(vec4<bool>(true, false, true, global3.b))), func_2(~(-36095i), global1.a.x, global0[_wgslsmith_index_u32(~(~(~1u)), 22u)]).x, max(min(u_input.a.x ^ global3.e, _wgslsmith_sub_u32(4294967295u, ~1403u)), 1u));
    let var_1 = arg_0;
    return min(max(~firstLeadingBit(15144u), 46750u), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 22>();
    var var_0 = vec4<u32>(~func_1(Struct_2(global3.e, _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(0i, 38091i, -8046i, -4602i)), !vec3<bool>(global3.c, false, global3.b))), global3.d, ~u_input.a.x, 21518u);
    let var_1 = Struct_4(Struct_2(global3.d, reverseBits(countOneBits(~vec4<i32>(global3.a, u_input.c.x, global3.a, 1i))), !select(select(vec3<bool>(true, global3.c, true), vec3<bool>(true, true, false), vec3<bool>(global3.c, global3.c, false)), select(vec3<bool>(global3.c, true, true), vec3<bool>(true, true, global3.b), vec3<bool>(true, true, true)), true)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, 225f)), 0i >= global3.a))), global1.b), ~4294967295u);
    var var_2 = vec3<bool>(global3.c, any(!select(vec3<bool>(global3.b, global3.b, global3.b), var_1.a.c, vec3<bool>(true, var_1.a.c.x, global3.b))), global3.b);
    var var_3 = vec4<bool>(var_1.b.b.x > (i32(-1i) * -1i), !(!(!any(vec2<bool>(true, false)))), !(!all(var_2.xx) || true), any(!(!(!vec3<bool>(true, false, var_1.a.c.x)))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-160f * _wgslsmith_f_op_f32(-global1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(min(global3.e, var_0.x), global3.a, global1.b.yzw, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_4))), var_1.b.a.x));
}

