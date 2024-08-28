struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(287f, -162f), vec2<f32>(975f, 286f), vec2<f32>(370f, -527f), vec2<f32>(-707f, -603f), vec2<f32>(-1783f, 395f), vec2<f32>(1360f, 1545f), vec2<f32>(1022f, 160f), vec2<f32>(320f, -476f), vec2<f32>(387f, 552f), vec2<f32>(1113f, -1561f));

var<private> global2: array<bool, 21> = array<bool, 21>(true, false, true, true, false, true, false, true, false, true, true, false, false, false, false, true, false, false, true, true, false);

var<private> global3: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: u32) -> u32 {
    global1 = array<vec2<f32>, 10>();
    var var_0 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -212f) - arg_0.a.x) - global3.x), _wgslsmith_f_op_f32(f32(-1f) * -685f), 117f, 1262f), select(select(!arg_0.b, vec4<bool>(global2[_wgslsmith_index_u32(~arg_3, 21u)], global2[_wgslsmith_index_u32(arg_0.e.b.x, 21u)] & false, true, any(arg_0.b.zxy)), arg_0.b.x), vec4<bool>(true & (false || arg_0.d), _wgslsmith_mult_u32(17973u, u_input.c) <= 1u, all(vec2<bool>(global2[_wgslsmith_index_u32(21901u, 21u)], global2[_wgslsmith_index_u32(75136u, 21u)])), !any(arg_0.b.yzz)), select(select(arg_0.b, !arg_0.b, any(arg_0.b.xyw)), vec4<bool>(!global2[_wgslsmith_index_u32(u_input.a.x, 21u)], true, !arg_0.d, true), !global2[_wgslsmith_index_u32(arg_3, 21u)])), arg_0.c, global2[_wgslsmith_index_u32(select(max(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, arg_0.c.b), vec2<u32>(1u, 1u)), arg_0.e.b.x), arg_3, !(!(0u == arg_3))), 21u)], Struct_1(arg_3, _wgslsmith_mod_vec2_u32(u_input.a, _wgslsmith_mod_vec2_u32(~u_input.a, arg_0.e.b >> (arg_0.c.b % vec2<u32>(32u)))), (-arg_2 >> ((arg_0.e.a & arg_3) % 32u)) << (46774u % 32u), _wgslsmith_mult_u32(firstLeadingBit(firstLeadingBit(arg_0.c.a)), 4294967295u), -2147483647i));
    var var_1 = arg_2;
    var_1 = -arg_0.e.e;
    var_0 = arg_0;
    return ~_wgslsmith_sub_u32(~u_input.c >> (_wgslsmith_div_u32(45244u, 75366u) % 32u), var_0.c.b.x) >> (_wgslsmith_dot_vec4_u32((vec4<u32>(var_0.e.d, 0u, 9232u, arg_3) | ~vec4<u32>(u_input.c, 9848u, arg_3, 0u)) << (_wgslsmith_sub_vec4_u32(abs(vec4<u32>(arg_0.e.a, 4294967295u, 0u, arg_3)), vec4<u32>(arg_0.c.d, 0u, 40157u, var_0.e.d)) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(55975u, _wgslsmith_sub_u32(4294967295u, arg_3), ~24305u, _wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.c.b.x, 81966u, u_input.c, 1u), vec4<u32>(arg_3, 0u, 4294967295u, 73356u)), ~vec4<u32>(var_0.e.d, 0u, arg_3, 7376u), select(vec4<u32>(37631u, var_0.e.b.x, 4294967295u, 1u), vec4<u32>(arg_0.c.d, 0u, arg_0.c.d, 29207u), false)))) % 32u);
}

fn func_2(arg_0: i32) -> u32 {
    global0 = array<Struct_2, 14>();
    global1 = array<vec2<f32>, 10>();
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, 554f, global3.x)))), vec4<bool>(true, global3.x > -621f, (global3.x < global3.x) && global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(u_input.a.x, 21u)]), Struct_1(~61604u, ~u_input.a << (select(u_input.a, u_input.a, vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)])) % vec2<u32>(32u)), 1i, u_input.c, -(u_input.d.x ^ u_input.e)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1093f))) == global3.x, Struct_1(firstTrailingBit(u_input.a.x), ~_wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(112018u, 0u), u_input.a), -1844i, ~func_3(Struct_3(vec4<f32>(global3.x, -2434f, global3.x, 2328f), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 21u)], global2[_wgslsmith_index_u32(38622u, 21u)], global2[_wgslsmith_index_u32(59892u, 21u)], false), Struct_1(52241u, u_input.a, 0i, 33046u, arg_0), false, Struct_1(u_input.a.x, u_input.a, 21836i, 0u, -1i)), 9825i, u_input.b.x, 17501u), arg_0)), vec4<f32>(global3.x, _wgslsmith_f_op_f32(step(945f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-923f * 839f))))), global3.x, 1000f));
    var_0 = Struct_4(var_0.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -956f), _wgslsmith_f_op_f32(floor(var_0.a.a.x)), global3.x, _wgslsmith_div_f32(var_0.b.x, var_0.a.a.x)));
    var var_1 = firstLeadingBit(reverseBits(~abs(_wgslsmith_sub_u32(u_input.c, 1u))));
    return ~firstTrailingBit(~u_input.c << ((var_0.a.e.a << (_wgslsmith_add_u32(var_0.a.e.d, 1u) % 32u)) % 32u));
}

fn func_4(arg_0: u32) -> u32 {
    global3 = vec2<f32>(global3.x, _wgslsmith_f_op_f32(793f + global3.x));
    var var_0 = vec4<bool>(_wgslsmith_div_u32(firstTrailingBit(10u), 0u) != 4294967295u, !global2[_wgslsmith_index_u32(~u_input.c, 21u)], true, any(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 21u)], false, global2[_wgslsmith_index_u32(29881u, 21u)]))) | (global2[_wgslsmith_index_u32(u_input.a.x, 21u)] && any(!vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], false, global2[_wgslsmith_index_u32(u_input.c, 21u)], false))));
    let var_1 = Struct_1(_wgslsmith_mod_u32(0u, ~_wgslsmith_sub_u32(u_input.a.x, arg_0)), u_input.a, u_input.e, func_3(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 671f, global3.x, -114f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, 365f, 351f, 975f), vec4<f32>(global3.x, global3.x, global3.x, global3.x)))), !select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, global2[_wgslsmith_index_u32(arg_0, 21u)]), global2[_wgslsmith_index_u32(arg_0, 21u)]), Struct_1(firstLeadingBit(4294967295u), u_input.a, -1i, reverseBits(4294967295u), u_input.d.x), global2[_wgslsmith_index_u32(arg_0, 21u)], Struct_1(~u_input.c, u_input.a, -1i << (arg_0 % 32u), arg_0 | 6494u, u_input.d.x | u_input.b.x)), u_input.b.x, -(~(-u_input.d.x)), ~_wgslsmith_add_u32(~u_input.a.x, select(19456u, arg_0, var_0.x))), 17941i);
    let var_2 = vec3<u32>(0u, ~64714u, 4294967295u);
    var var_3 = u_input.d;
    return ~(~0u);
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> u32 {
    let var_0 = Struct_1(~(~u_input.c) ^ ~1u, max(~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a, u_input.a), ~u_input.a), vec2<u32>(u_input.c, u_input.a.x)), 1i, ~func_4(func_2(1i)), ~u_input.e);
    let var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~min(_wgslsmith_div_u32(1u, 51048u), 6370u), _wgslsmith_sub_u32(u_input.c, _wgslsmith_sub_u32(u_input.a.x << (8976u % 32u), 113188u ^ u_input.a.x)), ~firstLeadingBit(65032u), reverseBits(var_0.a)), vec4<u32>(var_0.b.x, ~abs(~0u), var_0.b.x, ~(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x) & ~u_input.c)));
    let var_2 = Struct_4(Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global3.x, 512f, -1000f) - vec4<f32>(global3.x, 146f, -1064f, -1387f)) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-468f, 1032f, global3.x, -1000f), vec4<f32>(-692f, global3.x, -482f, -1097f)))), vec4<f32>(_wgslsmith_f_op_f32(floor(-2000f)), _wgslsmith_div_f32(-841f, global3.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global3.x)), !vec4<bool>(true, global2[_wgslsmith_index_u32(var_1, 21u)], !global2[_wgslsmith_index_u32(3709u, 21u)], !arg_0.a.x), var_0, true, Struct_1(firstTrailingBit(var_0.d), vec2<u32>(~4294967295u, 0u), _wgslsmith_add_i32(var_0.e, _wgslsmith_sub_i32(0i, u_input.e)), _wgslsmith_mod_u32(firstLeadingBit(52907u), ~u_input.c), 53068i)), vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2286f)))), _wgslsmith_f_op_f32(f32(-1f) * -806f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global3.x)))));
    global1 = array<vec2<f32>, 10>();
    var var_3 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1249f, var_2.a.a.x, var_2.a.a.x, global3.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(390f, 1014f, global3.x, -1000f))) - var_2.a.a), var_2.a.b, Struct_1(u_input.c, u_input.a, var_0.e, ~1u, _wgslsmith_dot_vec3_i32(u_input.d.xyz ^ vec3<i32>(-24556i, u_input.d.x, 56686i), vec3<i32>(60900i, 2147483647i, 2147483647i))), any(!(!vec3<bool>(false, arg_0.b.x, false))), Struct_1(var_2.a.c.d, var_2.a.e.b, arg_1, 6214u, -2147483647i)), vec4<f32>(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3.x)) + global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + -206f), _wgslsmith_f_op_f32(abs(var_2.b.x))));
    return ~(~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 21>();
    global2 = array<bool, 21>();
    var var_0 = Struct_4(Struct_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.x, global3.x, global3.x, global3.x))))), select(vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(21653u, u_input.c), 21u)], any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 21u)], false)), true, false && global2[_wgslsmith_index_u32(54766u, 21u)]), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(5556u, 21u)], false, global2[_wgslsmith_index_u32(u_input.c, 21u)])), select(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 21u)], false, global2[_wgslsmith_index_u32(76750u, 21u)], global2[_wgslsmith_index_u32(39312u, 21u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(10749u, 21u)], global2[_wgslsmith_index_u32(u_input.a.x, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], false), vec4<bool>(global2[_wgslsmith_index_u32(47338u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 21u)]), global2[_wgslsmith_index_u32(u_input.a.x, 21u)]), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 21u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 21u)], true))), Struct_1(u_input.c, u_input.a, _wgslsmith_mult_i32(firstLeadingBit(u_input.e), u_input.b.x), ~1u, 1i), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(func_1(Struct_2(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 21u)], global2[_wgslsmith_index_u32(7961u, 21u)]), vec3<bool>(false, false, true)), u_input.b.x), u_input.a.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(12463u, u_input.a.x, u_input.a.x), vec3<u32>(0u, u_input.c, u_input.a.x) << (vec3<u32>(u_input.c, u_input.a.x, 0u) % vec3<u32>(32u)))), 21u)], Struct_1(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(4294967295u, u_input.a.x)) | _wgslsmith_dot_vec3_u32(vec3<u32>(20719u, 4294967295u, 61523u), vec3<u32>(314u, u_input.c, u_input.c)), firstLeadingBit(vec2<u32>(20412u, u_input.c)), firstLeadingBit(~u_input.b.x), ~(~u_input.a.x), u_input.e)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, -850f, -788f, 1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 620f, 107f, global3.x))))));
    let var_1 = -2147483647i & (-var_0.a.e.c & firstTrailingBit(u_input.d.x));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0.a.a, _wgslsmith_f_op_vec4_f32(var_0.a.a - var_0.b))), _wgslsmith_div_vec4_f32(var_0.a.a, var_0.a.a));
    var var_3 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.x)) * _wgslsmith_f_op_f32(-874f - -177f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))), _wgslsmith_div_f32(194f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f))), -1471f), var_0.a.b, var_0.a.e, any(select(!select(var_0.a.b.xwz, var_0.a.b.yxz, vec3<bool>(global2[_wgslsmith_index_u32(var_0.a.e.a, 21u)], true, true)), !var_0.a.b.xyz, !vec3<bool>(var_0.a.b.x, false, false))), var_0.a.c);
    var_0 = Struct_4(Struct_3(var_0.b, !var_0.a.b, var_0.a.e, !all(select(var_3.b, vec4<bool>(true, var_0.a.d, false, global2[_wgslsmith_index_u32(var_3.e.b.x, 21u)]), false)), var_3.c), _wgslsmith_f_op_vec4_f32(select(var_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.a)), !(!var_3.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.wxz + vec3<f32>(-285f, global3.x, -716f)), _wgslsmith_div_vec3_f32(var_3.a.xww, var_2.xwy)))));
}

