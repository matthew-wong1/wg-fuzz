struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec2<bool>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(Struct_1(-925f), vec4<u32>(1u, 0u, 28215u, 75118u), Struct_1(1000f)), Struct_2(Struct_1(1060f), vec4<u32>(19586u, 0u, 12075u, 1u), Struct_1(864f)), Struct_2(Struct_1(-701f), vec4<u32>(0u, 22901u, 7644u, 0u), Struct_1(-1358f)), Struct_2(Struct_1(-707f), vec4<u32>(1u, 23270u, 41297u, 42610u), Struct_1(966f)), Struct_2(Struct_1(-476f), vec4<u32>(4294967295u, 1u, 1u, 0u), Struct_1(-870f)), Struct_2(Struct_1(-141f), vec4<u32>(67137u, 11378u, 32323u, 0u), Struct_1(-894f)), Struct_2(Struct_1(-121f), vec4<u32>(60509u, 1u, 0u, 0u), Struct_1(-184f)), Struct_2(Struct_1(-481f), vec4<u32>(9180u, 0u, 50099u, 0u), Struct_1(1455f)), Struct_2(Struct_1(-2170f), vec4<u32>(27990u, 5399u, 20157u, 21968u), Struct_1(428f)), Struct_2(Struct_1(1378f), vec4<u32>(76595u, 24729u, 1u, 4294967295u), Struct_1(-1304f)), Struct_2(Struct_1(911f), vec4<u32>(0u, 83u, 72393u, 4294967295u), Struct_1(566f)), Struct_2(Struct_1(229f), vec4<u32>(0u, 14510u, 0u, 25769u), Struct_1(-304f)), Struct_2(Struct_1(-1230f), vec4<u32>(38919u, 1u, 29037u, 1u), Struct_1(1481f)), Struct_2(Struct_1(-429f), vec4<u32>(25097u, 75645u, 56678u, 13229u), Struct_1(1017f)), Struct_2(Struct_1(1228f), vec4<u32>(38612u, 39559u, 56689u, 102757u), Struct_1(-765f)), Struct_2(Struct_1(450f), vec4<u32>(0u, 1u, 1u, 0u), Struct_1(913f)), Struct_2(Struct_1(654f), vec4<u32>(0u, 1u, 4294967295u, 4294967295u), Struct_1(1430f)), Struct_2(Struct_1(1420f), vec4<u32>(1u, 18101u, 72299u, 1u), Struct_1(-962f)), Struct_2(Struct_1(291f), vec4<u32>(1u, 50907u, 80938u, 30615u), Struct_1(407f)), Struct_2(Struct_1(-1000f), vec4<u32>(1u, 6114u, 0u, 4294967295u), Struct_1(545f)), Struct_2(Struct_1(-1444f), vec4<u32>(4294967295u, 85573u, 132198u, 4294967295u), Struct_1(127f)), Struct_2(Struct_1(458f), vec4<u32>(13915u, 20132u, 13846u, 1u), Struct_1(1331f)), Struct_2(Struct_1(456f), vec4<u32>(0u, 8235u, 22427u, 0u), Struct_1(1975f)), Struct_2(Struct_1(1709f), vec4<u32>(11348u, 19163u, 0u, 0u), Struct_1(512f)), Struct_2(Struct_1(663f), vec4<u32>(92536u, 61446u, 1u, 0u), Struct_1(-149f)), Struct_2(Struct_1(-191f), vec4<u32>(85542u, 23386u, 27913u, 39516u), Struct_1(-637f)), Struct_2(Struct_1(608f), vec4<u32>(71170u, 0u, 4294967295u, 1u), Struct_1(-266f)));

var<private> global2: Struct_1;

var<private> global3: array<vec2<f32>, 7>;

var<private> global4: Struct_1 = Struct_1(155f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: i32) -> vec2<f32> {
    global2 = arg_1;
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 5457u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 18147u, 5630u, 2945u), vec4<u32>(1u, 33695u, 32854u, 29517u)) & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 131719u), vec2<u32>(4294967295u, 0u))), vec4<u32>(1u, 1u, 1u, 1u)) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(min(firstTrailingBit(0u), ~0u), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(38733u, 1u)), select(vec2<u32>(0u, 1u), vec2<u32>(10087u, 32462u), false))), vec2<u32>(~1u, 1u)), 27u)];
    let var_1 = false;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.c.a, global4.a)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1465f, 420f)) + global4.a) - -1548f)));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(831f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1499f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 686u), 7u)] + vec2<f32>(global4.a, arg_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3[_wgslsmith_index_u32(var_0.b.x, 7u)] - global3[_wgslsmith_index_u32(1u, 7u)]) + _wgslsmith_f_op_vec2_f32(-global3[_wgslsmith_index_u32(var_0.b.x, 7u)])))));
    return vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(-global2.a))))), var_3.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: bool) -> vec2<bool> {
    global0 = false;
    var var_0 = Struct_3(Struct_1(-811f));
    let var_1 = select(select(vec4<bool>(true, ~u_input.a.x < u_input.a.x, true, arg_1), select(select(vec4<bool>(arg_1, false, arg_1, true), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), false), !arg_1), select(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), vec4<bool>(true, true, false, arg_1)), !vec4<bool>(false, arg_1, arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, true, false, arg_1))), all(select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(false, arg_1, arg_1, arg_1), arg_1))), vec4<bool>(!arg_1 & all(vec4<bool>(arg_1, true, arg_1, arg_1)), all(!vec2<bool>(arg_1, true)), global2.a > -700f, true)), select(select(select(select(vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(true, false, arg_1, false), vec4<bool>(true, false, arg_1, arg_1)), !vec4<bool>(arg_1, false, arg_1, false), true), vec4<bool>(true, any(vec3<bool>(true, arg_1, true)), true, true), !(!arg_1)), !vec4<bool>(false, arg_1 && arg_1, all(vec4<bool>(false, arg_1, true, false)), any(vec4<bool>(arg_1, arg_1, false, false))), any(vec2<bool>(true, true))), !vec4<bool>(arg_1, arg_1, false, true));
    global4 = Struct_1(-765f);
    var var_2 = (vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(44809u, 0u, 2273u, 0u), vec4<u32>(50423u, 1913u, 4294967295u, 9117u), vec4<u32>(9467u, 1u, 34787u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), select(max(17569u, 1u), firstTrailingBit(4294967295u), any(var_1.zy))) | vec2<u32>(~(~23486u), 1u)) >> (max(reverseBits(abs(vec2<u32>(90591u, 0u))), _wgslsmith_sub_vec2_u32(vec2<u32>(select(68580u, 47665u, true), ~4294967295u), vec2<u32>(1u, 1u))) % vec2<u32>(32u));
    return !(!vec2<bool>(true, arg_1));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = ~(_wgslsmith_clamp_u32(1u, 17257u, 1u) ^ ~countOneBits(~0u));
    var var_1 = Struct_4(-1i, Struct_3(Struct_1(global2.a)), select(!(!vec2<bool>(true, arg_0)), !func_4(_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(global2.a, -198f, global4.a), Struct_1(global4.a), u_input.a.x)), arg_0), !vec2<bool>(true, any(vec4<bool>(false, false, false, true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-723f, _wgslsmith_f_op_f32(max(-1102f, _wgslsmith_f_op_f32(f32(-1f) * -225f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-143f)), _wgslsmith_f_op_f32(-global4.a), arg_0)), -1672f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 571f, global2.a, global4.a)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(304f, global4.a, global2.a, global4.a) - vec4<f32>(global2.a, 111f, 256f, -857f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global4.a)), global4.a, global4.a, global4.a), !(!vec4<bool>(false, arg_0, arg_0, false))))), Struct_1(global2.a));
    let var_2 = _wgslsmith_f_op_f32(-global4.a);
    let var_3 = countOneBits(~_wgslsmith_sub_vec4_i32(-(~vec4<i32>(2147483647i, var_1.a, u_input.a.x, u_input.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a.x, -1i, u_input.a.x, u_input.a.x), ~vec4<i32>(-49636i, 2147483647i, -24182i, var_1.a))));
    global3 = array<vec2<f32>, 7>();
    return Struct_1(_wgslsmith_f_op_f32(ceil(1122f)));
}

fn func_5(arg_0: Struct_1) -> Struct_3 {
    global2 = arg_0;
    let var_0 = Struct_3(func_2(false));
    global2 = arg_0;
    global2 = Struct_1(global4.a);
    var var_1 = abs(vec2<u32>(abs(select(4294967295u, 1u, true)) & 1u, 26218u));
    return Struct_3(Struct_1(-358f));
}

fn func_6(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>) -> Struct_2 {
    global3 = array<vec2<f32>, 7>();
    var var_0 = Struct_1(-554f);
    var var_1 = Struct_3(arg_0.a);
    var_0 = func_5(func_2(false)).a;
    var var_2 = Struct_4(u_input.a.x, func_5(func_2(all(vec2<bool>(true, true)))), vec2<bool>(true, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-global2.a), func_2(true).a, _wgslsmith_div_f32(var_0.a, -823f)) - vec4<f32>(var_0.a, -1000f, 577f, _wgslsmith_f_op_f32(exp2(var_0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a, 369f, var_1.a.a, global2.a) - vec4<f32>(global2.a, -139f, arg_0.a.a, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.a, arg_0.a.a, var_0.a, -258f) - vec4<f32>(360f, 1481f, arg_0.a.a, -1223f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(304f, 1359f, global2.a, var_0.a)))), func_2(any(vec2<bool>(true, true))));
    return global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(reverseBits(8232u), _wgslsmith_dot_vec2_u32(min(vec2<u32>(25644u, 8459u), vec2<u32>(1u, 1u)), vec2<u32>(4294967295u, 1u) & select(vec2<u32>(18862u, 0u), vec2<u32>(1u, 0u), vec2<bool>(var_2.c.x, true)))), _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(89568u, 0u), 1u), ~_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(69689u, 1u), vec2<u32>(43894u, 50280u), vec2<u32>(79004u, 4294967295u)), select(vec2<u32>(1u, 1u), vec2<u32>(0u, 11346u), var_2.c)))), 27u)];
}

fn func_1() -> vec2<bool> {
    var var_0 = 1u;
    let var_1 = global3[_wgslsmith_index_u32(0u, 7u)];
    let var_2 = func_6(func_5(func_2(true)), -2147483647i, u_input.a);
    var var_3 = u_input.a.x;
    var var_4 = global2.a;
    return !(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true)));
}

fn func_7(arg_0: i32, arg_1: vec3<i32>, arg_2: i32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-171f, -650f, 1138f, global2.a)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(select(-2183f, 1000f, true)), -1000f, _wgslsmith_f_op_f32(-1470f * global2.a)) + vec4<f32>(-334f, global4.a, _wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_f_op_f32(f32(-1f) * -1730f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(global4.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1524f + global2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + global4.a)), -1454f)));
    var var_1 = vec2<bool>(true, true);
    let var_2 = Struct_2(func_2(true), ~vec4<u32>(4294967295u, 1u, select(6090u, 0u, false) ^ countOneBits(1u), 1u), Struct_1(var_0.x));
    global2 = Struct_1(_wgslsmith_f_op_f32(round(-457f)));
    global1 = array<Struct_2, 27>();
    return Struct_1(1090f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(u_input.a.x, (vec3<i32>(~0i, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i), -1i) | min(vec3<i32>(u_input.a.x, u_input.a.x, -11047i), -vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))) << (abs(vec3<u32>(1u, 1u, 1u) ^ select(vec3<u32>(75349u, 37677u, 4294967295u), vec3<u32>(4294967295u, 0u, 0u), vec3<bool>(false, false, true))) % vec3<u32>(32u)), ~(1i ^ firstTrailingBit(abs(-9053i))), select(func_1(), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), vec2<bool>(false, true)));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(func_7(u_input.a.x, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.x, vec2<bool>(true, true)).a + _wgslsmith_f_op_f32(step(global4.a, global4.a)))))));
    let var_2 = Struct_4(u_input.a.x, func_5(Struct_1(-275f)), vec2<bool>(all(func_1()), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-165f, global2.a) * global4.a), var_0.a, var_1.x, _wgslsmith_div_f32(265f, 1f))), func_5(var_0).a);
    let var_3 = firstTrailingBit(~((_wgslsmith_sub_i32(28527i, var_2.a) ^ (i32(-1i) * -38781i)) << (1u % 32u)));
    var var_4 = !all(func_4(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.a, -1577f))))), true));
    var_1 = var_2.d.wzz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_0.a, var_1.x), firstTrailingBit(-(~0i)), vec3<u32>(1u, countOneBits(func_6(Struct_3(var_0), _wgslsmith_add_i32(13132i, 7249i), min(u_input.a, vec2<i32>(-2147483647i, var_2.a))).b.x), _wgslsmith_mult_u32(19787u, ~_wgslsmith_sub_u32(4294967295u, 5405u))), vec2<u32>(32244u, _wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(69400u, 45553u, 4294967295u, 1u)), ~countOneBits(vec4<u32>(31779u, 4294967295u, 70642u, 0u)))));
}

