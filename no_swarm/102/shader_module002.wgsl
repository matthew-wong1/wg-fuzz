struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 3> = array<Struct_3, 3>(Struct_3(32429i, Struct_2(-21757i, vec4<f32>(-1184f, -1204f, 457f, 1784f), Struct_1(vec4<f32>(-1205f, 378f, 266f, 1161f), -135f, 4734u, false, false), true), vec2<f32>(-823f, -599f), vec3<u32>(22258u, 1u, 40518u), 35865u), Struct_3(1i, Struct_2(i32(-2147483648), vec4<f32>(-1447f, -1415f, 1518f, 1760f), Struct_1(vec4<f32>(1371f, -1000f, 1301f, -799f), -1536f, 0u, false, false), true), vec2<f32>(-900f, -1726f), vec3<u32>(4294967295u, 80785u, 26215u), 1u), Struct_3(29742i, Struct_2(736i, vec4<f32>(991f, 962f, -1174f, 1692f), Struct_1(vec4<f32>(-157f, -728f, 1937f, -2323f), -501f, 41320u, true, false), true), vec2<f32>(1220f, -159f), vec3<u32>(39447u, 72590u, 0u), 1u));

var<private> global2: array<bool, 14> = array<bool, 14>(true, false, true, false, true, false, true, true, false, true, false, true, true, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_4) -> vec4<f32> {
    global2 = array<bool, 14>();
    let var_0 = vec3<bool>(true, true, true);
    var var_1 = arg_2.a;
    var_1 = arg_1.a;
    var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(var_1.x, global0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) - arg_2.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(arg_2.b))))));
    return _wgslsmith_f_op_vec4_f32(trunc(global0.b));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(-firstLeadingBit(_wgslsmith_mod_vec3_i32(u_input.a.wxx, u_input.b.www)), ~((vec3<i32>(1i, u_input.a.x, -1i) & vec3<i32>(-2147483647i, u_input.b.x, global0.a)) ^ _wgslsmith_mod_vec3_i32(u_input.a.wwx, u_input.a.xzx))), u_input.c, 1i, -21353i);
    global2 = array<bool, 14>();
    let var_1 = global0.c.c;
    let var_2 = 2732f;
    var var_3 = _wgslsmith_clamp_vec3_u32(abs(reverseBits(vec3<u32>(1u, global0.c.c, global0.c.c >> (global0.c.c % 32u)))), vec3<u32>(~_wgslsmith_add_u32(0u, 49644u), ~_wgslsmith_sub_u32(33931u << (global0.c.c % 32u), ~global0.c.c), ~_wgslsmith_sub_u32(global0.c.c, ~0u)), vec3<u32>(35028u, global0.c.c, 0u));
    return 0u;
}

fn func_2() -> Struct_1 {
    let var_0 = global0.c;
    global2 = array<bool, 14>();
    var var_1 = abs(~func_4(584f, _wgslsmith_f_op_vec4_f32(func_3(global0.a, global0.c, Struct_1(vec4<f32>(var_0.a.x, var_0.a.x, global0.b.x, global0.b.x), global0.b.x, 61867u, true, var_0.e), Struct_4(vec3<u32>(1u, 63233u, global0.c.c)))), global2[_wgslsmith_index_u32(~var_0.c, 14u)]));
    var_1 = 19116u;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1197f);
    return Struct_1(_wgslsmith_f_op_vec4_f32(func_3(2147483647i, global0.c, Struct_1(global0.c.a, -935f, var_0.c, global0.c.b < -1030f, all(select(vec2<bool>(true, global0.d), vec2<bool>(true, false), vec2<bool>(var_0.d, true)))), Struct_4(vec3<u32>(abs(var_0.c), 0u, countOneBits(global0.c.c))))), _wgslsmith_f_op_f32(f32(-1f) * -2445f), countOneBits(~global0.c.c), !global0.d, var_0.e);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: vec3<i32>) -> Struct_5 {
    let var_0 = _wgslsmith_clamp_i32(countOneBits(firstLeadingBit(-19788i)), ~firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, arg_1.a, u_input.c), vec3<i32>(-2147483647i, u_input.c, arg_1.a))), ~_wgslsmith_clamp_i32(abs(u_input.b.x), ~(u_input.c ^ arg_3.x), 2147483647i));
    var var_1 = _wgslsmith_clamp_i32(71658i, (~(~1i) & _wgslsmith_clamp_i32(min(2147483647i, u_input.b.x), 18680i, -u_input.b.x)) ^ u_input.b.x, -(-u_input.a.x >> (~firstLeadingBit(13631u) % 32u)));
    global1 = array<Struct_3, 3>();
    let var_2 = arg_2;
    var var_3 = u_input.a;
    return Struct_5(arg_0.b.c.a.yz, Struct_2(0i, vec4<f32>(global0.c.a.x, -200f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-630f, arg_1.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.b.x + arg_0.b.c.a.x), _wgslsmith_f_op_f32(-1136f - -913f))), Struct_1(arg_1.c.a, 159f, _wgslsmith_dot_vec4_u32(max(vec4<u32>(0u, 4294967295u, arg_1.c.c, 4294967295u), vec4<u32>(49069u, global0.c.c, arg_1.c.c, arg_1.c.c)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.c, arg_0.e, arg_1.c.c, 96763u), vec4<u32>(global0.c.c, arg_1.c.c, global0.c.c, 0u))), true, ~arg_1.c.c <= ~global0.c.c), global2[_wgslsmith_index_u32(global0.c.c, 14u)]), Struct_2(20411i, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, arg_0.b.c.a.x, -1303f), vec4<f32>(-1000f, arg_0.c.x, 2337f, 191f)), vec4<f32>(global0.c.a.x, -176f, 751f, -298f))), arg_1.b)), func_2(), all(select(select(vec4<bool>(var_2, true, true, false), vec4<bool>(true, arg_1.c.d, global2[_wgslsmith_index_u32(global0.c.c, 14u)], false), vec4<bool>(arg_1.d, arg_0.b.d, arg_0.b.c.e, arg_0.b.d)), vec4<bool>(arg_2, arg_1.d, arg_1.d, arg_1.d), any(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.b.c.c, 14u)], arg_2, true))))));
}

fn func_6(arg_0: Struct_5) -> u32 {
    global1 = array<Struct_3, 3>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(arg_0.c.c.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * arg_0.b.c.b)))), 5839u, any(!(!vec3<bool>(true, false, global0.d))) | true, !global0.c.d);
    global2 = array<bool, 14>();
    let var_1 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(49781u, global0.c.c, arg_0.b.c.c), vec3<u32>(arg_0.b.c.c, 4294967295u, global0.c.c)), select(~vec3<u32>(1u, var_0.c, arg_0.c.c.c), select(vec3<u32>(var_0.c, var_0.c, global0.c.c), vec3<u32>(22129u, 0u, var_0.c), vec3<bool>(global2[_wgslsmith_index_u32(81798u, 14u)], true, false)), vec3<bool>(arg_0.c.c.d, true, false)), ~vec3<u32>(974u, 0u, 5894u) ^ ~vec3<u32>(arg_0.c.c.c, 66304u, arg_0.b.c.c)), vec3<u32>(func_4(_wgslsmith_f_op_f32(trunc(global0.b.x)), vec4<f32>(1000f, 754f, arg_0.b.c.b, 717f), true), _wgslsmith_add_u32(var_0.c ^ arg_0.c.c.c, ~1u), 30996u));
    var var_2 = countOneBits(u_input.b);
    return 1u & ~_wgslsmith_clamp_u32(1u, global0.c.c, var_1.x);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_div_f32(arg_2.b.c.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(527f + arg_0.a.x)))));
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(func_6(func_5(Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-13311i, -2147483647i), arg_1.xx), arg_2.b, _wgslsmith_div_vec2_f32(vec2<f32>(var_0, global0.b.x), vec2<f32>(285f, 804f)), vec3<u32>(global0.c.c, arg_0.c, global0.c.c), ~arg_0.c), Struct_2(arg_2.b.a & -16975i, _wgslsmith_f_op_vec4_f32(arg_0.a - vec4<f32>(1000f, global0.b.x, var_0, 1347f)), func_2(), arg_2.b.d & arg_2.b.d), false, max(u_input.a.wwy | arg_1, arg_1 ^ arg_1))), func_2().c, ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.c, 4294967295u, 35084u, arg_2.d.x), vec4<u32>(arg_0.c, 18817u, global0.c.c, 0u)) << (0u % 32u))), 3u)];
    var var_2 = -2147483647i;
    global2 = array<bool, 14>();
    let var_3 = global1[_wgslsmith_index_u32(min(reverseBits(18579u), select(_wgslsmith_div_u32(arg_0.c, arg_2.d.x), ~reverseBits(0u), !func_2().d)), 3u)];
    return ~(~firstLeadingBit(vec4<u32>(4294967295u, arg_0.c, 1u, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 14>();
    var var_0 = u_input.b.wz;
    let var_1 = _wgslsmith_mult_vec4_u32(~(~func_1(global0.c, u_input.b.wzz, Struct_3(u_input.c, Struct_2(u_input.c, vec4<f32>(global0.c.b, global0.b.x, 533f, -2618f), global0.c, global0.d), vec2<f32>(global0.c.b, -894f), vec3<u32>(global0.c.c, 42441u, global0.c.c), 1669u))), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(0u, global0.c.c, global0.c.c, 0u)), abs(~vec4<u32>(global0.c.c, global0.c.c, 4294967295u, global0.c.c))), vec4<u32>(0u, global0.c.c, 12413u, 1u)));
    var var_2 = global2[_wgslsmith_index_u32(global0.c.c, 14u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.c.a.xxy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3(u_input.b.x, global0.c, Struct_1(vec4<f32>(global0.b.x, 981f, global0.c.a.x, -578f), -282f, global0.c.c, false, false), Struct_4(var_1.zxy))).yyz + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1460f, global0.b.x, -330f))), true)) * vec3<f32>(_wgslsmith_f_op_f32(1894f * func_5(global1[_wgslsmith_index_u32(var_1.x, 3u)], Struct_2(global0.a, global0.c.a, global0.c, false), true, u_input.b.yww).b.b.x), _wgslsmith_f_op_f32(-global0.c.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(253f, global0.c.a.x))))));
    global1 = array<Struct_3, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, ~(-(~(-39870i << (var_1.x % 32u)))), var_3.xy, var_3.x, ~var_1.xx);
}

