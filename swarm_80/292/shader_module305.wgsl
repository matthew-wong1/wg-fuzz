struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
    d: Struct_3,
    e: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: bool;

var<private> global2: array<i32, 19>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: i32) -> i32 {
    var var_0 = u_input.c >> (~1875u % 32u);
    let var_1 = select(!select(!vec2<bool>(arg_1, true), vec2<bool>(false, all(vec2<bool>(arg_1, false))), !(arg_1 != arg_1)), vec2<bool>(arg_1, true), !vec2<bool>(arg_1, 4294967295u < reverseBits(u_input.e)));
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(arg_0, 617f)))), -1350f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-196f, arg_0) + vec2<f32>(1966f, arg_0)))))));
    let var_3 = true;
    var var_4 = Struct_4(min(_wgslsmith_mod_u32(min(12673u, u_input.d), ~(global0.x | u_input.d)), max(global0.x, _wgslsmith_mod_u32(4294967295u, global0.x)) ^ _wgslsmith_add_u32(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.x, 0u), vec3<u32>(global0.x, global0.x, 4294967295u)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -639f) - _wgslsmith_f_op_f32(f32(-1f) * -482f)), _wgslsmith_f_op_f32(-var_2.x), -1011f, var_2.x), Struct_2(_wgslsmith_add_i32(~arg_2, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.e, u_input.d), 19u)], min(3241i, arg_2), 5931i)), vec2<u32>(~global0.x, u_input.d), vec3<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, 954f)))), _wgslsmith_clamp_u32(~(~global0.x), ~(~global0.x), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.e, global0.x), global0.x)), true), Struct_3(_wgslsmith_mult_u32(~(~0u), global0.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -822f))));
    return -41887i;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = Struct_4(_wgslsmith_mult_u32(23835u, u_input.d), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(403f)), 789f, _wgslsmith_f_op_f32(-154f - -294f), -1529f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1655f, 1000f, -301f, -1265f))))))), Struct_2(u_input.a, ~reverseBits(vec2<u32>(21738u, global0.x)) | ~(vec2<u32>(global0.x, 22116u) ^ vec2<u32>(1u, 69546u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(558f, -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1861f), -700f)), 25621u, !(arg_0 < func_3(872f, true, global2[_wgslsmith_index_u32(u_input.e, 19u)]))), Struct_3(7401u | (max(54291u, global0.x) << (90446u % 32u))), _wgslsmith_f_op_f32(455f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1612f)), _wgslsmith_f_op_f32(min(575f, 157f)), true)), -586f))));
    global0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.e, ~16282u), ~var_0.c.b), ~var_0.c.b);
    global0 = ~var_0.c.b;
    global2 = array<i32, 19>();
    var var_1 = var_0.d;
    return !vec4<bool>(all(select(vec2<bool>(false, var_0.c.e), vec2<bool>(var_0.c.e, var_0.c.e), vec2<bool>(true, var_0.c.e))), false, !all(vec3<bool>(var_0.c.e, true, true)), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(31699u, 4294967295u, var_0.c.b.x), vec3<u32>(global0.x, 40271u, 62707u))) != var_0.c.d);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_2) -> u32 {
    var var_0 = !select(select(!(!vec4<bool>(arg_3.e, arg_3.e, true, arg_0)), vec4<bool>(arg_0, all(vec2<bool>(false, arg_0)), all(vec2<bool>(true, false)), !arg_3.e), func_2(~arg_3.a)), !vec4<bool>(arg_3.e, true, arg_3.e && true, true), !vec4<bool>(true, true, arg_3.e, 434f != arg_3.c.x));
    var_0 = vec4<bool>(true, var_0.x, _wgslsmith_sub_i32(countOneBits(~u_input.c), -65631i) > ~arg_3.a, true);
    global2 = array<i32, 19>();
    let var_1 = vec4<i32>(_wgslsmith_sub_i32(-global2[_wgslsmith_index_u32(arg_1 ^ 60608u, 19u)], u_input.c) ^ u_input.a, ~24464i, -9728i, 2147483647i);
    return global0.x;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>, arg_3: bool) -> Struct_4 {
    var var_0 = Struct_1(vec4<i32>(arg_0.a, countOneBits(1i), arg_2.x, select(_wgslsmith_add_i32(u_input.a, -2147483647i), global2[_wgslsmith_index_u32(45910u, 19u)] | u_input.b, arg_3)) | abs(vec4<i32>(1i, abs(u_input.b), 29957i, u_input.a | 0i)), reverseBits(~(~_wgslsmith_mult_u32(4294967295u, 0u))), arg_0.c.x, -2147483647i, arg_1);
    let var_1 = select(select(vec3<bool>(true, true, func_2(~global2[_wgslsmith_index_u32(0u, 19u)]).x), select(!func_2(18820i).wxw, vec3<bool>(arg_3, arg_3, any(vec2<bool>(false, true))), vec3<bool>(false, true, arg_3)), arg_3), vec3<bool>(arg_3, arg_3, true), func_2(_wgslsmith_mod_i32(i32(-1i) * -1i, -5216i)).xzy);
    global1 = !all(vec3<bool>(all(vec2<bool>(false, arg_0.e)), true, arg_0.e)) | false;
    global0 = ~vec2<u32>(abs(~var_0.b) << (~global0.x % 32u), _wgslsmith_clamp_u32(1u, _wgslsmith_add_u32(0u, 0u), ~arg_1));
    global1 = arg_0.e;
    return Struct_4(~0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.c, -1352f, arg_0.c.x, 1593f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.c.x)), _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(floor(-470f)), 1000f)))), arg_0, Struct_3(arg_0.d), 1644f);
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>) -> f32 {
    var var_0 = !(!select(vec3<bool>(true, true, false), vec3<bool>(true, arg_0.c.e && false, !arg_0.c.e), !func_2(2934i).yzy));
    global1 = !all(!(!var_0.xz));
    var var_1 = firstTrailingBit(~(~(~_wgslsmith_add_vec2_u32(arg_0.c.b, arg_0.c.b))));
    let var_2 = Struct_5(Struct_1(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(1i, arg_0.c.a, -1i, global2[_wgslsmith_index_u32(u_input.d, 19u)]), vec4<i32>(8811i, -27432i, u_input.b, -46602i))), abs(_wgslsmith_div_u32(u_input.e, global0.x) << (var_1.x % 32u)), -1000f, u_input.c, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~arg_0.c.b, vec2<u32>(arg_0.c.d, 7575u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.c.b, vec2<u32>(var_1.x, 38304u)), arg_0.c.b), 0u)), vec3<i32>(u_input.b, firstTrailingBit((i32(-1i) * -2147483647i) & func_4(Struct_2(2147483647i, vec2<u32>(0u, 23880u), vec3<f32>(arg_0.e, arg_1.x, arg_1.x), 13081u, true), u_input.e, vec3<i32>(-34122i, global2[_wgslsmith_index_u32(14616u, 19u)], -1i), var_0.x).c.a), -5745i), Struct_3(4294967295u));
    let var_3 = 47235u;
    return _wgslsmith_f_op_f32(trunc(arg_0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_4(Struct_2(_wgslsmith_clamp_i32(u_input.b, u_input.a, 0i), ~vec2<u32>(global0.x, global0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(2728f, 334f, 1000f) - vec3<f32>(-245f, -1419f, 559f)), global0.x, any(vec4<bool>(true, true, false, true))), max(func_1(true, u_input.d, 4294967295u, Struct_2(-36193i, vec2<u32>(global0.x, u_input.d), vec3<f32>(-928f, 772f, 112f), 0u, true)), ~4294967295u), -(vec3<i32>(global2[_wgslsmith_index_u32(u_input.d, 19u)], global2[_wgslsmith_index_u32(248u, 19u)], global2[_wgslsmith_index_u32(845u, 19u)]) << (vec3<u32>(global0.x, global0.x, global0.x) % vec3<u32>(32u))), 555f >= _wgslsmith_f_op_f32(step(1524f, -308f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-331f * -1139f), -994f, 1110f, -125f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(350f, -421f, 1339f, -138f) + vec4<f32>(-1000f, -147f, -137f, 359f)) - vec4<f32>(1002f, -1160f, 778f, -490f))))));
    global2 = array<i32, 19>();
    var var_1 = func_4(func_4(Struct_2(-12693i, firstLeadingBit(~vec2<u32>(4294967295u, global0.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(433f, var_0, -1604f), vec3<f32>(var_0, var_0, -2281f)))), global0.x, func_4(Struct_2(-1i, vec2<u32>(4294967295u, 0u), vec3<f32>(var_0, 908f, var_0), 4294967295u, true), 1u, vec3<i32>(-1i, global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(global0.x, 19u)]), true).c.e & true), u_input.d << (62334u % 32u), ~min(vec3<i32>(-2147483647i, -46979i, -1i), ~vec3<i32>(2147483647i, -39334i, u_input.c)), all(vec2<bool>(true, true))).c, global0.x, _wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32((vec3<i32>(global2[_wgslsmith_index_u32(33548u, 19u)], -1i, 41540i) | vec3<i32>(global2[_wgslsmith_index_u32(u_input.d, 19u)], global2[_wgslsmith_index_u32(u_input.e, 19u)], global2[_wgslsmith_index_u32(u_input.d, 19u)])) >> (_wgslsmith_add_vec3_u32(vec3<u32>(9926u, u_input.d, 55863u), vec3<u32>(1u, global0.x, 5979u)) % vec3<u32>(32u)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, 0i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b), vec3<i32>(u_input.c, 2147483647i, 0i)), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c, global2[_wgslsmith_index_u32(1u, 19u)], global2[_wgslsmith_index_u32(u_input.d, 19u)]), vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(4294967295u, 19u)], 2147483647i) << (vec3<u32>(global0.x, 11341u, 0u) % vec3<u32>(32u)))), vec3<i32>(firstTrailingBit(u_input.a), ~(-1i), global2[_wgslsmith_index_u32(u_input.d ^ 24138u, 19u)]), reverseBits(vec3<i32>(-16224i & global2[_wgslsmith_index_u32(global0.x, 19u)], -19340i, ~u_input.b))), true).d;
    var_1 = func_4(func_4(func_4(func_4(func_4(Struct_2(-43582i, vec2<u32>(u_input.d, var_1.a), vec3<f32>(230f, -388f, 461f), 57018u, true), u_input.e, vec3<i32>(-9324i, global2[_wgslsmith_index_u32(u_input.e, 19u)], 1i), false).c, 28745u, -vec3<i32>(u_input.c, 2147483647i, -5539i), select(true, false, false)).c, ~min(global0.x, 1u), vec3<i32>(-26749i & global2[_wgslsmith_index_u32(0u, 19u)], ~global2[_wgslsmith_index_u32(var_1.a, 19u)], 1i), select(true, true, false)).c, 4294967295u, _wgslsmith_add_vec3_i32(vec3<i32>(1i, global2[_wgslsmith_index_u32(global0.x, 19u)], 2147483647i) ^ vec3<i32>(u_input.a, -1512i, global2[_wgslsmith_index_u32(5105u, 19u)]), ~_wgslsmith_add_vec3_i32(vec3<i32>(15669i, global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(global0.x, 19u)]), vec3<i32>(-94968i, -660i, 0i))), all(func_2(reverseBits(-1i)))).c, global0.x, _wgslsmith_sub_vec3_i32(vec3<i32>(-select(0i, global2[_wgslsmith_index_u32(18830u, 19u)], true), u_input.a, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.a | u_input.d, min(u_input.e, u_input.d)), 19u)]), _wgslsmith_mult_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, 74050i, 1i), vec3<i32>(67930i, -42344i, 28247i), vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(global0.x, 19u)], 2147483647i)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, 0i), vec3<i32>(2147483647i, u_input.c, -2147483647i)), vec3<i32>(u_input.a, 1i, 0i) | vec3<i32>(global2[_wgslsmith_index_u32(global0.x, 19u)], -1798i, u_input.c)))), false).d;
    var var_2 = vec4<u32>(13240u, ~(1u | _wgslsmith_dot_vec3_u32(select(vec3<u32>(global0.x, global0.x, var_1.a), vec3<u32>(global0.x, var_1.a, u_input.e), false), vec3<u32>(14319u, 0u, var_1.a))), 54668u, 0u & ((global0.x & 1u) >> (_wgslsmith_sub_u32(reverseBits(global0.x), global0.x) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(var_0)))), _wgslsmith_div_u32(u_input.d, ~4294967295u >> (~global0.x % 32u)));
}

