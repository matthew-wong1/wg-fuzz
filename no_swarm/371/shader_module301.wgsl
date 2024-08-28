struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(29899u, 0u, 90410u, 21949u, 15816u, 0u, 1u, 70673u, 0u, 10278u);

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(2147483647i, 2147483647i), 84081u, vec2<i32>(16761i, 0i), 37444i), Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(-67731i, 11541i), 1u, vec2<i32>(-32033i, -21186i), 1i), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(32419i, -31493i), 0u, vec2<i32>(-17765i, -19082i), 2147483647i), Struct_1(vec4<bool>(false, true, true, false), vec2<i32>(0i, 1i), 4294967295u, vec2<i32>(60268i, 0i), 8658i), Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(-20921i, -47706i), 1u, vec2<i32>(-9054i, i32(-2147483648)), 5053i), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(0i, 1i), 4294967295u, vec2<i32>(-1i, 42743i), -32718i), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(1i, -1i), 0u, vec2<i32>(-26549i, -68985i), -16242i), Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(2147483647i, 1i), 15157u, vec2<i32>(i32(-2147483648), -25043i), 20469i), Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(-30981i, -8014i), 0u, vec2<i32>(2147483647i, i32(-2147483648)), -1i), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(46160i, 2147483647i), 1u, vec2<i32>(-10891i, 1467i), 1i), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(0i, 38971i), 64861u, vec2<i32>(1i, -2117i), 382i), Struct_1(vec4<bool>(true, true, false, true), vec2<i32>(1i, 1i), 0u, vec2<i32>(1i, i32(-2147483648)), -1i), Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(135i, -29767i), 4294967295u, vec2<i32>(-30063i, -25821i), i32(-2147483648)), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(-6770i, -3468i), 0u, vec2<i32>(1i, 826i), 0i), Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(-5363i, -19000i), 21170u, vec2<i32>(1i, 6437i), -32707i), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(i32(-2147483648), 6875i), 4294967295u, vec2<i32>(88769i, -1i), 0i), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(32507i, -9278i), 0u, vec2<i32>(64824i, 2147483647i), 0i), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(i32(-2147483648), -7810i), 4294967295u, vec2<i32>(2147483647i, 22642i), 0i), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(-1488i, -1509i), 4294967295u, vec2<i32>(-1i, -1i), 33406i), Struct_1(vec4<bool>(true, false, false, true), vec2<i32>(4824i, 0i), 4294967295u, vec2<i32>(2147483647i, -8883i), 28190i), Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(51026i, i32(-2147483648)), 0u, vec2<i32>(i32(-2147483648), -1i), -6317i));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(-1i, 1i), 21193u, vec2<i32>(i32(-2147483648), 0i), 30723i), Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(-21309i, -46785i), 43904u, vec2<i32>(10533i, -7849i), -89771i), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(-1i, 4952i), 75937u, vec2<i32>(-7890i, -1i), i32(-2147483648)), Struct_1(vec4<bool>(false, false, true, false), vec2<i32>(2147483647i, -1i), 1u, vec2<i32>(24844i, -1i), i32(-2147483648)), Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(43689i, -65125i), 74503u, vec2<i32>(2147483647i, i32(-2147483648)), 1i), Struct_1(vec4<bool>(false, true, false, false), vec2<i32>(27548i, 4083i), 692u, vec2<i32>(-22715i, 1i), i32(-2147483648)), Struct_1(vec4<bool>(true, true, true, false), vec2<i32>(-26022i, 2147483647i), 52165u, vec2<i32>(2416i, -21919i), 39127i), Struct_1(vec4<bool>(false, false, true, true), vec2<i32>(-1i, 1i), 13984u, vec2<i32>(4758i, 9693i), 1i));

var<private> global3: vec2<bool>;

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec3<i32>, arg_3: vec4<u32>) -> Struct_1 {
    global2 = array<Struct_1, 8>();
    global1 = array<Struct_1, 21>();
    let var_0 = false;
    var var_1 = global1[_wgslsmith_index_u32(abs(~(abs(global4.c) | ~firstLeadingBit(arg_3.x))), 21u)];
    global1 = array<Struct_1, 21>();
    return global2[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 8u)];
}

fn func_3() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(389f * _wgslsmith_f_op_f32(1000f - 926f))))));
    global0 = array<u32, 10>();
    var var_1 = Struct_1(!func_1(false, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1900f))), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, -2147483647i, global4.e), vec3<i32>(u_input.a.x, u_input.a.x, u_input.b)) & firstLeadingBit(vec3<i32>(2147483647i, -6142i, u_input.c)), vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7846u, 10u)], 10u)], 1u, 77822u) & countOneBits(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 4294967295u, 0u, 20345u))).a, reverseBits(~select(vec2<i32>(-1i, 45887i), vec2<i32>(0i, global4.e), false)) >> (_wgslsmith_add_vec2_u32(reverseBits(firstTrailingBit(vec2<u32>(28549u, global4.c))), vec2<u32>(global0[_wgslsmith_index_u32(~80973u, 10u)], ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.c, 10u)], 10u)])) % vec2<u32>(32u)), global4.c, ~global4.b, 1i);
    global0 = array<u32, 10>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(656f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(317f))))), global3.x)));
    return func_1(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1623f, -1329f) + -419f), _wgslsmith_mod_vec3_i32(vec3<i32>(~19175i, global4.d.x, -1i), vec3<i32>(global4.e | abs(var_1.d.x), _wgslsmith_add_i32(global4.e, 1i), _wgslsmith_add_i32(i32(-1i) * -60147i, _wgslsmith_mod_i32(u_input.b, -15015i)))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, global4.c, 1u, 88682u), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(4294967295u, var_1.c, 4294967295u), _wgslsmith_sub_u32(global4.c, global0[_wgslsmith_index_u32(6940u, 10u)]), 53927u)), ~firstLeadingBit(select(vec4<u32>(global4.c, global0[_wgslsmith_index_u32(1u, 10u)], 0u, 52438u), vec4<u32>(36663u, global4.c, global4.c, 4294967295u), false))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    let var_0 = func_3();
    var var_1 = !(!var_0.a.zy);
    let var_2 = _wgslsmith_sub_i32(0i, 0i);
    var var_3 = func_3();
    var_3 = Struct_1(func_1(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mult_vec3_i32(-(vec3<i32>(var_3.e, -45956i, var_2) >> (vec3<u32>(var_3.c, arg_0, var_0.c) % vec3<u32>(32u))), (vec3<i32>(arg_1.b.x, 0i, u_input.a.x) | vec3<i32>(-2349i, -1i, var_2)) | ~vec3<i32>(var_3.e, global4.e, -10650i)), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(10165u, global4.c, arg_0, var_0.c)), firstLeadingBit(vec4<u32>(global4.c, 4294967295u, 1u, global4.c)) ^ ~vec4<u32>(4294967295u, var_0.c, 0u, 1u))).a, vec2<i32>(-18709i, min(2147483647i, u_input.a.x)), _wgslsmith_clamp_u32(55323u, ~(~(~arg_0)), ~abs(arg_1.c)), var_3.d, _wgslsmith_div_i32(var_3.d.x, (u_input.b ^ global4.e) >> (1u % 32u)) >> (max(79344u, ~(~19064u)) % 32u));
    return Struct_1(select(func_1(true, _wgslsmith_f_op_f32(f32(-1f) * -2212f), countOneBits(firstLeadingBit(vec3<i32>(var_3.b.x, global4.d.x, 0i))), _wgslsmith_clamp_vec4_u32(vec4<u32>(20269u, 123311u, 0u, global0[_wgslsmith_index_u32(5631u, 10u)]), vec4<u32>(40186u, global4.c, 27763u, global4.c), vec4<u32>(43226u, 4294967295u, 1u, 4294967295u)) << (vec4<u32>(1u, 59342u, arg_1.c, var_0.c) % vec4<u32>(32u))).a, vec4<bool>(arg_1.a.x, global4.a.x, true, true), any(!func_3().a)), reverseBits(_wgslsmith_mod_vec2_i32(abs(arg_1.b), ~(~var_0.b))), _wgslsmith_mult_u32(arg_0, 10031u) << (~(~_wgslsmith_add_u32(0u, var_3.c)) % 32u), _wgslsmith_sub_vec2_i32(var_3.b, ~(~func_1(arg_2, 1162f, vec3<i32>(arg_1.b.x, 27901i, -2147483647i), vec4<u32>(22870u, 32119u, 1u, var_3.c)).b)), var_0.d.x);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    var var_0 = ~(~(~firstTrailingBit(vec3<u32>(1u, global4.c, arg_2.c))) | ~(_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(arg_2.c, 10u)], global4.c, arg_2.c), vec3<u32>(16976u, arg_1.c, 10571u)) << (select(vec3<u32>(1u, 0u, 56796u), vec3<u32>(global4.c, 0u, 0u), global4.a.wzw) % vec3<u32>(32u))));
    var var_1 = arg_1;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(~1u), global4.c, var_1.c, 4294967295u), select(vec4<u32>(_wgslsmith_add_u32(select(4294967295u, var_0.x, arg_1.a.x), ~0u), 1u, ~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global4.c, 10u)], var_1.c), ~var_0.x >> (~2968u % 32u)), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_1.c, 14917u), 10u)], ~4294967295u, var_1.c, ~global4.c) | vec4<u32>(7606u, countOneBits(arg_2.c), arg_2.c, 29303u), select(global4.a.x || false, any(var_1.a.wzz), all(global4.a.wzy)) & (firstTrailingBit(arg_1.c) <= 57543u))), 21u)];
    global2 = array<Struct_1, 8>();
    global3 = !func_2(1u, global2[_wgslsmith_index_u32(4294967295u, 8u)], func_3().a.x).a.xy;
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec4<bool>(select(global4.a.x, !global4.a.x, true), any(vec4<bool>(global4.a.x, false, global3.x, false)), false, true), func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-882f, 1000f, 498f, -754f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-767f, 267f, -810f, 599f))))), func_2(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(2818u, 10u)] ^ 49270u, global4.c), func_1(true, _wgslsmith_f_op_f32(floor(-145f)), firstLeadingBit(vec3<i32>(1i, u_input.d, -1i)), vec4<u32>(global4.c, global4.c, 0u, global4.c)), true), global1[_wgslsmith_index_u32(46214u, 21u)]), 55885u, vec2<i32>(_wgslsmith_clamp_i32(~u_input.b, abs(6423i), 1i & global4.b.x) ^ _wgslsmith_mod_i32(func_3().d.x, _wgslsmith_sub_i32(2147483647i, global4.b.x)), -(~(-u_input.b))), reverseBits(-20921i));
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(firstLeadingBit(~(-2147483647i)), 1i, ~(-1i)) >> (vec3<u32>(global4.c, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~var_0.c, 10u)], 10u)], 55020u) % vec3<u32>(32u)), ~reverseBits(vec3<i32>(global4.d.x << (43021u % 32u), -global4.b.x, reverseBits(1472i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-420f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1f), 1898f)), 547f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -662f)))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(871f - -1010f), 319f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -985f)))));
    var var_3 = select(select(global4.a.wxx, !select(!global4.a.wxx, !global4.a.ywy, !global4.a.yww), !var_0.a.yzy), !var_0.a.xxz, global4.a.x);
    var var_4 = var_0;
    var var_5 = ~global4.b;
    var var_6 = _wgslsmith_f_op_vec4_f32(floor(var_2));
    var_6 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2 - _wgslsmith_f_op_vec4_f32(-var_2)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2 + vec4<f32>(var_2.x, var_2.x, -797f, 656f)) * vec4<f32>(var_6.x, 648f, var_2.x, var_6.x))))));
    let var_7 = vec4<u32>(~max(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, var_4.c), vec2<u32>(var_4.c, global4.c)), 8093u), ~(firstTrailingBit(func_3().c) & ~(global4.c ^ 1u)), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(func_2(~4294967295u, func_3(), any(func_2(38465u, Struct_1(vec4<bool>(true, false, var_0.a.x, var_0.a.x), vec2<i32>(-42236i, var_5.x), var_0.c, vec2<i32>(var_4.e, var_1), u_input.d), global4.a.x).a.yw)).c, 10u)], _wgslsmith_sub_u32(max(10856u, 0u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, 0u, 0u, 23194u), vec4<u32>(66491u, 1u, global4.c, global4.c))) ^ (global4.c >> (global4.c % 32u))), 32028u);
    let x = u_input.a;
    s_output = StorageBuffer(-max(_wgslsmith_div_i32(u_input.b, var_4.e) ^ ~29025i, global4.d.x), ~10019i, abs(vec4<u32>(4294967295u, _wgslsmith_div_u32(~1u, global4.c ^ 1u), func_3().c ^ 0u, _wgslsmith_dot_vec2_u32(var_7.xy | vec2<u32>(1u, var_0.c), ~var_7.zx))), -_wgslsmith_sub_vec4_i32(~(~vec4<i32>(var_1, 25642i, var_1, var_0.b.x)), vec4<i32>(var_0.d.x, var_5.x, -2147483647i, 62927i) << ((var_7 | vec4<u32>(0u, global0[_wgslsmith_index_u32(16206u, 10u)], 4294967295u, global4.c)) % vec4<u32>(32u))), firstLeadingBit(_wgslsmith_add_u32(abs(abs(var_7.x)), ~(1589u << (var_7.x % 32u)))));
}

