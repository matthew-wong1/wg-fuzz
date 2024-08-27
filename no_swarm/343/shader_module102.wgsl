struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-23633i, vec4<i32>(4321i, 40787i, i32(-2147483648), 1i), true);

var<private> global1: Struct_1 = Struct_1(17265i, vec4<i32>(6450i, 24341i, 2048i, 38694i), true);

var<private> global2: vec2<u32>;

var<private> global3: vec2<i32> = vec2<i32>(6778i, 60122i);

var<private> global4: array<vec3<i32>, 26> = array<vec3<i32>, 26>(vec3<i32>(9421i, -1i, 0i), vec3<i32>(-16672i, 1i, 50288i), vec3<i32>(1i, -48235i, 0i), vec3<i32>(-1i, 20959i, -5364i), vec3<i32>(1i, 15831i, 1i), vec3<i32>(1i, 16767i, 2147483647i), vec3<i32>(0i, -57432i, 29825i), vec3<i32>(-10678i, 21003i, 0i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(-17261i, -11444i, -16614i), vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<i32>(-9456i, 30680i, 0i), vec3<i32>(-1004i, 1i, 1i), vec3<i32>(-60334i, 2147483647i, 35006i), vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(2113i, -1i, 31012i), vec3<i32>(22214i, i32(-2147483648), 0i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(0i, 1i, 2147483647i), vec3<i32>(0i, -34050i, 1i), vec3<i32>(-11222i, 0i, 22464i), vec3<i32>(-15939i, 0i, 4024i), vec3<i32>(-6578i, -7846i, 9435i), vec3<i32>(i32(-2147483648), -1i, -19859i), vec3<i32>(i32(-2147483648), -1i, -1i), vec3<i32>(0i, 2928i, -72906i));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> vec4<i32> {
    global2 = ~_wgslsmith_mult_vec2_u32(~(_wgslsmith_mod_vec2_u32(vec2<u32>(8555u, 1u), vec2<u32>(u_input.b, 19982u)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(44369u, global2.x), vec2<u32>(global2.x, global2.x)) % vec2<u32>(32u))), ~(vec2<u32>(53909u, global2.x) | (vec2<u32>(global2.x, u_input.b) ^ vec2<u32>(u_input.b, 4294967295u))));
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-419f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1270f * _wgslsmith_f_op_f32(step(-1505f, -850f))) - 102f), global0.c)), _wgslsmith_f_op_f32(f32(-1f) * -1908f), true));
    var var_1 = _wgslsmith_f_op_f32(ceil(-802f));
    let var_2 = Struct_1(0i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, u_input.a.x, 1i), -u_input.c.yzz), u_input.c, all(!vec2<bool>(global0.c & global1.c, true)));
    let var_3 = ~global2.x;
    return vec4<i32>(2147483647i, -1121i, -1i, u_input.a.x & -1i);
}

fn func_3(arg_0: u32) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1417f, -414f, 685f) - vec3<f32>(2719f, -1000f, -498f)))) * vec3<f32>(-1000f, _wgslsmith_div_f32(390f, 557f), _wgslsmith_div_f32(-1328f, 1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-130f, 345f, -1406f)))), any(vec3<bool>(global0.c, true, true)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-625f - -241f), _wgslsmith_f_op_f32(sign(188f))), 836f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1165f - 1296f))))));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = -30991i;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_clamp_i32(-(i32(-1i) * -min(42711i, 14437i)), _wgslsmith_dot_vec4_i32(func_2(), global0.b), firstTrailingBit(11046i));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1457f, 1151f, -977f)), _wgslsmith_f_op_vec3_f32(func_3(43903u)))) * _wgslsmith_f_op_vec3_f32(func_3(7313u)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(920f, -1696f, 636f))) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(2016f, 1122f, -919f), vec3<f32>(-1000f, 1318f, 176f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(884f, 1000f, -602f), vec3<f32>(2510f, -725f, 1000f), true)))))));
    global4 = array<vec3<i32>, 26>();
    return min(~abs(abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(1u, u_input.b)))), vec2<u32>(~34115u, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstLeadingBit((_wgslsmith_mod_vec2_u32(vec2<u32>(0u, global2.x), vec2<u32>(0u, 53736u) >> (vec2<u32>(1u, global2.x) % vec2<u32>(32u))) & func_1(Struct_1(15046i, global0.b, false))) ^ ~vec2<u32>(_wgslsmith_add_u32(global2.x, 76486u), u_input.b));
    global3 = vec2<i32>(global0.b.x, 2419i);
    var var_0 = ~(~20223u);
    var var_1 = !vec4<bool>(!all(vec3<bool>(global1.c, false, true)) & global0.c, false || global0.c, !global1.c, !(true || global0.c) | global0.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-517f, 961f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-176f, -1000f), vec2<f32>(2497f, -807f))), !vec2<bool>(global0.c, false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(827f, 488f), vec2<f32>(-1000f, -993f)) + vec2<f32>(-1000f, -1000f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 168f) + vec2<f32>(366f, -190f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(496f, -123f)))))))));
    let var_3 = firstLeadingBit(65157u);
    var var_4 = Struct_1(_wgslsmith_clamp_i32(u_input.c.x, firstLeadingBit(min(-global1.a, global0.a)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global3.x, -31263i), _wgslsmith_add_vec3_i32(global4[_wgslsmith_index_u32(global2.x, 26u)], vec3<i32>(2147483647i, 1i, u_input.c.x)))), u_input.c, any(vec3<bool>(false, all(!vec4<bool>(global1.c, var_1.x, global1.c, true)), any(!var_1.yy))));
    var var_5 = firstTrailingBit(_wgslsmith_mult_vec4_i32(global0.b, _wgslsmith_mult_vec4_i32(global0.b, _wgslsmith_add_vec4_i32(~global1.b, var_4.b))));
    let var_6 = Struct_1(u_input.a.x | abs(reverseBits(countOneBits(38521i))), select(abs(vec4<i32>(u_input.c.x, 6778i, 25464i, u_input.c.x)) >> (min(vec4<u32>(global2.x, 259u, var_3, global2.x) >> (vec4<u32>(27269u, var_3, var_3, 0u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, global2.x, 4294967295u, 1u), vec4<u32>(58172u, u_input.b, 12093u, 18311u))) % vec4<u32>(32u)), firstLeadingBit(u_input.c) << (vec4<u32>(~4294967295u, u_input.b, global2.x, ~0u) % vec4<u32>(32u)), select(vec4<bool>(true, any(vec4<bool>(false, true, false, var_4.c)), true, true), !select(vec4<bool>(false, var_4.c, false, var_1.x), vec4<bool>(false, var_1.x, global1.c, false), false), _wgslsmith_add_u32(u_input.b, var_3) >= (global2.x ^ 5634u))), global1.c | true);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(max(var_2.x, -323f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(u_input.b)).x, _wgslsmith_f_op_f32(trunc(1f)))), vec2<u32>(24846u, countOneBits(1u)));
}

