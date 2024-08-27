struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(i32(-2147483648), 54721i, -1704i, 1i), vec4<i32>(2147483647i, -29228i, -1i, 48369i), vec4<i32>(2147483647i, i32(-2147483648), 50585i, i32(-2147483648)));

var<private> global1: Struct_3 = Struct_3(Struct_2(4294967295u, 0u), vec4<i32>(-41797i, 54400i, -1i, -1i), vec4<i32>(2147483647i, 19291i, 2147483647i, 1i), Struct_1(-588f, vec3<bool>(true, true, false), 405f, -209f, vec2<bool>(true, false)), false);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = !vec3<bool>(false, arg_0, any(!(!global1.d.e)));
    var var_1 = Struct_3(global1.a, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 345u, u_input.b, u_input.c.x), u_input.c), global1.a.a) ^ ~_wgslsmith_mod_u32(u_input.c.x, 41686u), 3u)], select(_wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(abs(abs(u_input.c.x)), 3u)], -vec4<i32>(u_input.a, u_input.a, u_input.a, global1.b.x)), global0[_wgslsmith_index_u32(69074u, 3u)], (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, global1.a.b), u_input.c.xw) ^ (48939u >> (global1.a.b % 32u))) <= u_input.c.x), global1.d, false);
    var var_2 = Struct_2(~43322u, 1u);
    global0 = array<vec4<i32>, 3>();
    global1 = Struct_3(var_1.a, vec4<i32>(global1.c.x, _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(28527i, var_1.c.x, var_1.b.x, -48932i), vec4<i32>(global1.c.x, global1.b.x, global1.c.x, global1.b.x)), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-15739i, 11806i, 22512i, -1i), vec4<i32>(global1.c.x, u_input.a, var_1.b.x, var_1.b.x)), vec4<i32>(u_input.a, var_1.b.x, 51925i, var_1.c.x) & var_1.c)), -(~var_1.b.x) ^ abs(var_1.b.x), ~(-1i)), ~(~(vec4<i32>(-1i) * -vec4<i32>(43213i, u_input.a, 0i, 1i))), Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(845f, _wgslsmith_f_op_f32(trunc(130f))), _wgslsmith_f_op_f32(round(2373f)))), !global1.d.b, _wgslsmith_f_op_f32(-global1.d.a), -479f, select(!global1.d.b.yx, var_1.d.b.yz, select(var_1.d.b.yy, select(vec2<bool>(var_1.e, var_0.x), var_0.zz, var_1.d.b.zy), vec2<bool>(global1.e, arg_0)))), false);
    return (all(vec4<bool>(!global1.e, all(global1.d.e), global1.a.b != 4294967295u, all(vec3<bool>(arg_0, true, false)))) | true) || (772f == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1845f + _wgslsmith_f_op_f32(-global1.d.d)))));
}

fn func_2(arg_0: u32, arg_1: f32) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.d.c))) + arg_1))), global1.d.b, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.d.a + 650f), _wgslsmith_f_op_f32(arg_1 + 310f))) * _wgslsmith_f_op_f32(f32(-1f) * -359f)), _wgslsmith_f_op_f32(-527f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(global1.d.d * 381f)))), select(select(global1.d.b.yx, !(!vec2<bool>(true, global1.d.e.x)), global1.d.e), vec2<bool>(!all(global1.d.b.yx), true), any(select(global1.d.b, vec3<bool>(global1.e, true, false), !vec3<bool>(global1.e, global1.d.e.x, global1.d.e.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1390f, arg_1, var_0.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -695f, -349f))))));
    global1 = Struct_3(global1.a, vec4<i32>(0i, ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-23796i, u_input.a, global1.c.x, u_input.a), vec4<i32>(0i, global1.b.x, -21200i, -37437i))), ~firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global1.b.x, global1.c.x, global1.b.x), vec4<i32>(u_input.a, global1.c.x, global1.b.x, global1.b.x))), u_input.a), global1.b, global1.d, var_0.e.x);
    var var_2 = !global1.d.b;
    var_2 = vec3<bool>(func_3(!(var_2.x & false)) | true, true, !(!global1.e));
    return false;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(arg_3, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1189f), arg_3.x, _wgslsmith_f_op_f32(trunc(178f))))), vec3<bool>(global1.d.e.x, u_input.a < -9624i, func_3(true))))));
    global1 = Struct_3(Struct_2(min(45452u, 0u), 0u), firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(u_input.a, global1.b.x ^ 669i), select(firstLeadingBit(global1.b.x), u_input.a >> (arg_2 % 32u), false), -global1.c.x >> (34402u % 32u), -u_input.a)), -vec4<i32>(~u_input.a, min(_wgslsmith_add_i32(2147483647i, global1.c.x), -u_input.a), -_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.x, 0i), global1.c.zx), i32(-1i) * -26891i), global1.d, false);
    global1 = Struct_3(global1.a, min(min(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, global1.b.x, 29010i, 0i), global1.c)), reverseBits(global0[_wgslsmith_index_u32(4294967295u, 3u)])), global0[_wgslsmith_index_u32(min(~(~arg_2), _wgslsmith_add_u32(~4294967295u, ~u_input.b)), 3u)]), vec4<i32>(i32(-1i) * -50220i, countOneBits(8371i), ~_wgslsmith_mod_i32(-global1.c.x, _wgslsmith_div_i32(global1.b.x, global1.c.x)), -11606i), global1.d, global1.e);
    global0 = array<vec4<i32>, 3>();
    global1 = Struct_3(Struct_2(abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2), u_input.c.yy), 0u), firstTrailingBit(vec2<u32>(global1.a.a, u_input.b) ^ vec2<u32>(1u, u_input.b)))), select(abs(global1.b), max(~(global0[_wgslsmith_index_u32(54282u, 3u)] >> (u_input.c % vec4<u32>(32u))), firstTrailingBit(reverseBits(vec4<i32>(global1.c.x, global1.c.x, 20104i, 8843i)))), select(select(vec4<bool>(false, global1.e, false, true), select(vec4<bool>(false, false, false, arg_1), vec4<bool>(arg_1, global1.e, arg_1, false), vec4<bool>(true, arg_1, arg_1, global1.d.b.x)), global1.e), vec4<bool>(false, all(vec3<bool>(false, global1.e, arg_1)), func_3(false), all(global1.d.b)), vec4<bool>(!arg_1, global1.e, arg_1, var_0.x > var_0.x))), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(u_input.b, 3u)] ^ vec4<i32>(11959i, global1.b.x, 52282i, -2147483647i), global0[_wgslsmith_index_u32(global1.a.b & arg_2, 3u)]), vec4<i32>(global1.c.x, u_input.a, global1.c.x, u_input.a) ^ global1.b), ~countOneBits(firstLeadingBit(u_input.a)), 1i, global1.c.x), global1.d, all(select(!vec4<bool>(arg_1, true, false, true), !(!vec4<bool>(false, false, arg_1, global1.e)), any(vec4<bool>(true, true, global1.d.b.x, arg_1)))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0))));
}

fn func_1(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = global1.b;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global1.d.a, !func_2(global1.a.a, 396f), 1u, vec3<f32>(1287f, _wgslsmith_f_op_f32(-global1.d.c), 1962f)))), global1.d.d);
    global1 = Struct_3(global1.a, vec4<i32>(1i, arg_0.x, var_0.x, ~(~(-2054i))), global1.b, global1.d, true);
    global1 = Struct_3(Struct_2(1373u, global1.a.b), ~(-(global0[_wgslsmith_index_u32(~4294967295u, 3u)] >> (firstTrailingBit(u_input.c) % vec4<u32>(32u)))), vec4<i32>(1i, -2147483647i, 1i, max(firstTrailingBit(17670i) & abs(-2147483647i), 1i)), global1.d, min(~(global1.a.b >> (0u % 32u)), _wgslsmith_mod_u32(~4294967295u, 58359u)) != _wgslsmith_div_u32(0u, 52304u));
    var var_2 = !(!(!global1.e));
    return global1.d.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec3<bool>(0i <= u_input.a, true, !(global1.e | true)), func_1(global1.b.zy), !vec3<bool>(25015i < u_input.a, true, global1.d.b.x)), vec3<bool>(false, true, false), func_2(1u, _wgslsmith_f_op_f32(1035f + -1964f)));
    let var_1 = Struct_1(global1.d.d, select(func_1(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(global1.c.zx, vec2<i32>(0i, -2147483647i)), vec2<i32>(1i, -21789i))), vec3<bool>(var_0.x, global1.d.b.x, !(-1772f == global1.d.a)), !(var_0.x && true) | true), global1.d.d, _wgslsmith_f_op_f32(global1.d.a - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.d.c * global1.d.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.c))))), vec2<bool>(all(!select(vec4<bool>(true, global1.d.e.x, var_0.x, true), vec4<bool>(false, global1.e, var_0.x, var_0.x), false)), global1.d.e.x));
    var var_2 = Struct_2(~_wgslsmith_dot_vec4_u32(vec4<u32>(14160u, 0u, 1u, 1u), u_input.c), 4294967295u);
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.d, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(124f, global1.d.d), 1f)), -755f)) * vec3<f32>(_wgslsmith_f_op_f32(global1.d.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d.d * global1.d.c))), global1.d.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1584f + _wgslsmith_f_op_f32(global1.d.d * var_1.c))))));
    var var_4 = select(_wgslsmith_div_vec2_i32(global1.b.xz, vec2<i32>(-33799i, firstLeadingBit(_wgslsmith_sub_i32(global1.b.x, u_input.a)))), ~abs(~_wgslsmith_add_vec2_i32(global1.b.yz, vec2<i32>(u_input.a, global1.b.x))), ~var_2.b <= _wgslsmith_mult_u32(36340u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_mult_u32(min(global1.a.a, global1.a.b), 17164u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 33574u), u_input.c), abs(~var_2.b), ~(~var_2.a)));
}

