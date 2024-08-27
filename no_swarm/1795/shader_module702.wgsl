struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: array<f32, 11> = array<f32, 11>(-884f, 985f, 922f, -1048f, -245f, 1068f, -227f, -1225f, -118f, -464f, 2618f);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = vec3<u32>(17248u, _wgslsmith_mult_u32(arg_0.d.x, (min(u_input.c, u_input.c) | max(u_input.c, u_input.c)) & 47282u), u_input.c);
    let var_1 = 0u;
    global0 = array<i32, 32>();
    let var_2 = !(!arg_1.a);
    global0 = array<i32, 32>();
    return u_input.c;
}

fn func_2(arg_0: f32, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = all(select(arg_3.e.yxy, !arg_3.e.wxw, true));
    var var_1 = func_3(arg_3, Struct_1(~u_input.c < u_input.c, true, 0i, ~arg_3.d, arg_3.e));
    global2 = array<f32, 11>();
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0, arg_0)), arg_0)) - _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(trunc(634f)), all(arg_3.e.yxz)))))), -647f, _wgslsmith_f_op_f32(f32(-1f) * -771f));
    let var_3 = vec3<bool>(true, false, arg_3.b);
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> i32 {
    global0 = array<i32, 32>();
    let var_0 = arg_3;
    let var_1 = var_0;
    return select(_wgslsmith_mult_i32(var_0.c, u_input.e), i32(-1i) * -var_1.c, false);
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-113f, global2[_wgslsmith_index_u32(1u, 11u)], -491f, global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 11u)], -1173f, 706f, -1283f)) * vec4<f32>(2688f, 277f, 3222f, 120f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1770f, 698f, -301f, global2[_wgslsmith_index_u32(u_input.c, 11u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(arg_1.d.x, 11u)], global2[_wgslsmith_index_u32(0u, 11u)], 1000f, -1169f), vec4<f32>(global2[_wgslsmith_index_u32(20896u, 11u)], -1337f, 1932f, global2[_wgslsmith_index_u32(arg_1.d.x, 11u)]))))))));
    global1 = array<vec2<bool>, 29>();
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-65622i, func_4(func_2(_wgslsmith_f_op_f32(select(-277f, 895f, arg_2)), _wgslsmith_add_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], -1i), vec2<i32>(2147483647i, u_input.b.x)), arg_1.d.zz << (arg_1.d.yz % vec2<u32>(32u)), Struct_1(true, arg_0, -2147483647i, arg_1.d, arg_1.e)), func_2(_wgslsmith_f_op_f32(-var_0.x), u_input.a, func_2(-941f, u_input.d.yz, vec2<u32>(45526u, u_input.c), Struct_1(arg_0, arg_2, -1i, vec3<u32>(1u, 28061u, 4294967295u), arg_1.e)).d.zy, Struct_1(true, true, global0[_wgslsmith_index_u32(arg_1.d.x, 32u)], vec3<u32>(4294967295u, u_input.c, 70054u), vec4<bool>(arg_0, arg_2, arg_1.b, arg_1.b))), vec3<bool>(!arg_2, true, true), Struct_1(func_2(1998f, vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], 0i), arg_1.d.zz, Struct_1(arg_1.b, false, arg_1.c, vec3<u32>(u_input.c, 63866u, u_input.c), vec4<bool>(arg_1.a, arg_2, arg_0, false))).e.x, false, 22167i, vec3<u32>(4294967295u, u_input.c, 1u), vec4<bool>(true, arg_2, arg_1.a, false))), 2147483647i), select(~u_input.b.zwz, u_input.b.xyz, select(vec3<bool>(arg_1.e.x, false, any(global1[_wgslsmith_index_u32(arg_1.d.x, 29u)])), select(arg_1.e.zzy, !vec3<bool>(arg_1.b, arg_1.e.x, arg_2), global2[_wgslsmith_index_u32(arg_1.d.x, 11u)] <= var_0.x), vec3<bool>(global2[_wgslsmith_index_u32(arg_1.d.x, 11u)] <= -1000f, arg_2 | false, !arg_0))));
    var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(782f, var_0.x, 954f, var_0.x) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(arg_1.d.x, 11u)], global2[_wgslsmith_index_u32(arg_1.d.x, 11u)], global2[_wgslsmith_index_u32(u_input.c, 11u)]), vec4<f32>(-971f, 854f, -1039f, global2[_wgslsmith_index_u32(0u, 11u)]), arg_2))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-312f, global2[_wgslsmith_index_u32(18382u, 11u)], var_0.x, global2[_wgslsmith_index_u32(u_input.c, 11u)]) + vec4<f32>(308f, global2[_wgslsmith_index_u32(arg_1.d.x, 11u)], var_0.x, var_0.x))))))));
    var var_2 = var_0.x;
    return 0i;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: bool) -> Struct_1 {
    global2 = array<f32, 11>();
    var var_0 = arg_0;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~firstTrailingBit(select(var_0.x, u_input.c, arg_3)), 11u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -378f))) + -1941f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)));
    var_0 = ~firstTrailingBit(vec3<u32>(u_input.c, var_0.x, _wgslsmith_sub_u32(max(var_0.x, u_input.c), abs(4294967295u))));
    global1 = array<vec2<bool>, 29>();
    return func_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_1.x)))), u_input.a, vec2<u32>(~var_0.x, u_input.c), func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-716f - 1410f), _wgslsmith_f_op_f32(-535f + 675f))))), max(-vec2<i32>(-39289i, global0[_wgslsmith_index_u32(26704u, 32u)]), select(arg_2, arg_2 << (vec2<u32>(arg_0.x, u_input.c) % vec2<u32>(32u)), true)), vec2<u32>(4294967295u, ~12154u) & vec2<u32>(1u, u_input.c), Struct_1(!all(vec4<bool>(false, arg_3, false, true)), !arg_3, func_1(arg_3, Struct_1(true, true, 2147483647i, vec3<u32>(arg_0.x, arg_0.x, 1u), vec4<bool>(true, arg_3, true, arg_3)), arg_3) ^ _wgslsmith_sub_i32(arg_1.x, 36383i), (arg_0 & arg_0) ^ arg_0, vec4<bool>(arg_3 & arg_3, false, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 29>();
    var var_0 = func_5(~select(abs(vec3<u32>(64610u, u_input.c, u_input.c)), select(vec3<u32>(1u, u_input.c, u_input.c), vec3<u32>(u_input.c, 1972u, u_input.c), false), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))) >> (~(~vec3<u32>(42440u, u_input.c, 8605u)) % vec3<u32>(32u)), min(min(-vec2<i32>(7168i, -2147483647i), select(vec2<i32>(5175i, 0i), vec2<i32>(-4152i, global0[_wgslsmith_index_u32(u_input.c, 32u)]), false)), vec2<i32>(func_1(true, Struct_1(false, false, -1408i, vec3<u32>(0u, u_input.c, 0u), vec4<bool>(false, false, false, false)), true), -1i)) & vec2<i32>(u_input.d.x, abs(func_1(false, Struct_1(true, false, 21672i, vec3<u32>(10698u, u_input.c, 1u), vec4<bool>(true, true, false, false)), false))), u_input.d.wy, false & (select(_wgslsmith_dot_vec3_u32(vec3<u32>(55708u, 41450u, u_input.c), vec3<u32>(1u, u_input.c, u_input.c)), abs(4294967295u), true) != 1u));
    let var_1 = firstTrailingBit(u_input.e);
    var_0 = func_5(abs(countOneBits(var_0.d)), max(u_input.b.zz, u_input.d.xz), countOneBits(-countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(global0[_wgslsmith_index_u32(51687u, 32u)], -2147483647i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.c, 32u)], global0[_wgslsmith_index_u32(var_0.d.x, 32u)])))), func_5(var_0.d, ~vec2<i32>(~u_input.a.x, var_1), select(vec2<i32>(-1i >> (0u % 32u), 1i), vec2<i32>(reverseBits(var_0.c), _wgslsmith_div_i32(var_1, var_0.c)), !func_5(var_0.d, u_input.a, vec2<i32>(-1i, 6277i), true).e.xy), (var_0.d.x << (35102u % 32u)) < _wgslsmith_div_u32(_wgslsmith_sub_u32(36901u, 0u), 1u)).a);
    let var_2 = Struct_1(var_0.a, !any(!vec2<bool>(var_0.b, var_0.b)), global0[_wgslsmith_index_u32((1u << (u_input.c % 32u)) >> (4294967295u % 32u), 32u)], ~var_0.d, vec4<bool>(!(!(u_input.c > u_input.c)), true, false, ~u_input.c >= (58504u << (1u % 32u))));
    var var_3 = Struct_1(!any(!(!vec4<bool>(true, var_0.a, false, var_2.b))), (-126f < _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(45503u, 11u)]))) | (true || var_0.a), -1i, ~(firstTrailingBit(_wgslsmith_add_vec3_u32(var_2.d, var_0.d)) >> (_wgslsmith_mult_vec3_u32(~var_2.d, countOneBits(vec3<u32>(var_0.d.x, 31743u, 1u))) % vec3<u32>(32u))), vec4<bool>(any(func_2(global2[_wgslsmith_index_u32(2004u, 11u)], ~vec2<i32>(var_1, var_0.c), ~var_2.d.yz, var_2).e.xxx), !(!var_2.a), var_0.e.x, func_5(var_2.d, _wgslsmith_sub_vec2_i32(max(vec2<i32>(-1i, var_0.c), u_input.a), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.c, var_2.c), vec2<i32>(10438i, 0i))), min(vec2<i32>(2147483647i, 1i), select(vec2<i32>(1i, var_1), u_input.b.zy, var_2.a)), any(var_2.e.zyz)).e.x));
    let var_4 = var_2;
    var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(var_2.d.x, 11u)], global2[_wgslsmith_index_u32(var_0.d.x, 11u)])) * _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(29565u, 11u)], global2[_wgslsmith_index_u32(7169u, 11u)]))), global2[_wgslsmith_index_u32(4294967295u, 11u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, var_3.d.x) << (func_2(2423f, u_input.d.yx, var_0.d.zx, Struct_1(var_3.b, var_4.e.x, var_0.c, vec3<u32>(var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(false, true, var_0.a, false))).d.x % 32u), 11u)])), -_wgslsmith_div_vec2_i32(u_input.d.xx, ~vec2<i32>(-35525i, var_0.c)), func_5(var_4.d, ~vec2<i32>(-2147483647i, 2147483647i), -firstTrailingBit(-u_input.a), !var_0.b).d.zz, func_5(abs(vec3<u32>(var_0.d.x << (0u % 32u), _wgslsmith_sub_u32(u_input.c, var_0.d.x), 20840u)), vec2<i32>(-27330i << ((var_2.d.x | u_input.c) % 32u), _wgslsmith_add_i32(-14259i, 45980i)), vec2<i32>(~(~(-85597i)), _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.c, var_0.c, -1i), u_input.b.xxw) ^ -var_1), func_5(~func_2(493f, vec2<i32>(var_0.c, -1i), var_4.d.yy, Struct_1(false, var_4.a, 1i, var_2.d, var_3.e)).d, ~select(vec2<i32>(var_1, var_1), vec2<i32>(var_2.c, 20596i), var_0.a), vec2<i32>(14980i, u_input.b.x) & min(vec2<i32>(var_4.c, var_2.c), vec2<i32>(global0[_wgslsmith_index_u32(0u, 32u)], -12379i)), var_2.a).b));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.c, -1i, countOneBits(firstTrailingBit(1i))) & (vec3<i32>(-1i) * -vec3<i32>(var_2.c, 676i, 0i)), vec2<u32>(65429u, var_4.d.x), _wgslsmith_mult_vec3_u32((vec3<u32>(var_2.d.x, 1u, 27412u) ^ vec3<u32>(1u, var_0.d.x, var_2.d.x)) & var_3.d, _wgslsmith_clamp_vec3_u32(var_3.d, var_0.d ^ var_3.d, ~var_4.d)) << (_wgslsmith_div_vec3_u32(reverseBits(var_2.d) ^ ~var_0.d, var_0.d << (var_2.d % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~var_4.d.x, 11u)] * global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(42362u, ~reverseBits(var_4.d.x)), 11u)]), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_2.d.x, _wgslsmith_add_u32(var_2.d.x & 1u, _wgslsmith_mod_u32(var_4.d.x, 9780u)), var_4.d.x), ~vec4<u32>(~var_4.d.x, 4294967295u, 1u, var_3.d.x)));
}

