struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_4,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16>;

var<private> global1: Struct_2 = Struct_2(true, 1i, vec2<f32>(-398f, -1000f), -881f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<f32>) -> vec4<i32> {
    let var_0 = 2257f;
    let var_1 = Struct_3(Struct_1(vec4<u32>(_wgslsmith_div_u32(u_input.a, ~u_input.c.x), abs(u_input.b.x), ~reverseBits(4785u), u_input.c.x)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_2.x)), _wgslsmith_f_op_f32(trunc(-331f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))) * -1010f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(exp2(global1.d))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)) * _wgslsmith_f_op_f32(-arg_2.x)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, arg_1.x, arg_2.x, 1523f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-152f, 1000f, arg_2.x, arg_2.x) + vec4<f32>(1000f, arg_2.x, global1.d, global1.d))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global1.d, var_0, 950f, -2044f), vec4<f32>(1019f, global1.d, -251f, global1.d)))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3) - vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2.x)), _wgslsmith_f_op_f32(ceil(416f)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x))) * vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * 1240f)), 614f, 252f)));
    return -vec4<i32>(global1.b, -68706i, _wgslsmith_div_i32(~_wgslsmith_add_i32(-47728i, u_input.e.x), u_input.e.x & _wgslsmith_mult_i32(global1.b, -14369i)), -1i);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: i32) -> vec2<bool> {
    var var_0 = any(vec3<bool>(!global1.a, global1.a, all(vec2<bool>(true, true))));
    let var_1 = Struct_5(~_wgslsmith_mult_u32(u_input.d.x, ~(~u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1247f, -1784f))), Struct_4(global1.a), Struct_2(~(arg_1 ^ u_input.a) < ~abs(u_input.b.x), -20198i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.c.x, 620f), vec2<f32>(global1.c.x, 468f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-928f - global1.d) + _wgslsmith_f_op_f32(round(global1.c.x))), 1f))), _wgslsmith_f_op_f32(max(global1.c.x, _wgslsmith_f_op_f32(1353f + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(544f, 384f), _wgslsmith_f_op_f32(global1.c.x * global1.d)))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.d), -1879f), 154f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-905f * _wgslsmith_f_op_f32(var_1.b * _wgslsmith_f_op_f32(exp2(global1.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2355f - _wgslsmith_f_op_f32(ceil(-196f))), global1.d)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2373f));
    let var_4 = Struct_2(true, countOneBits(select(-1i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(arg_2, arg_2), 2431i), global1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.c.x, var_1.b)))))), 1761f);
    return select(!select(!select(vec2<bool>(true, global1.a), vec2<bool>(false, global1.a), global1.a), select(!vec2<bool>(var_4.a, var_4.a), vec2<bool>(var_1.c.a, global1.a), true), vec2<bool>(any(vec3<bool>(true, var_1.c.a, global1.a)), var_1.d.a)), vec2<bool>(all(vec4<bool>(var_4.a || var_4.a, any(vec4<bool>(var_1.d.a, var_4.a, true, true)), all(vec3<bool>(true, false, true)), !var_4.a)), any(vec2<bool>(!var_1.c.a, false & global1.a))), !(~countOneBits(u_input.a) != select(_wgslsmith_mult_u32(arg_1, 0u), u_input.c.x << (u_input.d.x % 32u), u_input.c.x < 2481u)));
}

fn func_2() -> u32 {
    var var_0 = -1513f;
    var var_1 = Struct_2(all(vec3<bool>(true, false, all(vec4<bool>(true, global1.a, global1.a, global1.a)) || true)), ~(-u_input.e.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.d, global1.d)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(global1.c - global1.c), _wgslsmith_f_op_vec2_f32(-global1.c)))), _wgslsmith_f_op_vec2_f32(select(global1.c, _wgslsmith_f_op_vec2_f32(global1.c + vec2<f32>(-342f, global1.c.x)), !(!vec2<bool>(global1.a, global1.a)))))), global1.c.x);
    var var_2 = func_4(65694i, u_input.a, _wgslsmith_mod_vec4_i32(func_3(any(select(vec2<bool>(false, false), vec2<bool>(global1.a, true), vec2<bool>(false, true))), var_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(846f, -220f))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.b, 26484i, u_input.e.x, u_input.e.x) & vec4<i32>(0i, var_1.b, var_1.b, -2147483647i), select(vec4<i32>(2147483647i, -2147483647i, 2147483647i, 2147483647i), vec4<i32>(u_input.e.x, 1i, 2147483647i, global1.b), vec4<bool>(false, true, true, true)))), _wgslsmith_sub_i32(firstTrailingBit(global1.b) | (_wgslsmith_add_i32(u_input.e.x, 76932i) & u_input.e.x), -47874i));
    let var_3 = -vec3<i32>(-1i, global1.b, ~(~(i32(-1i) * -2040i)));
    var var_4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1516f - global1.d))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.c.x * -1009f))), _wgslsmith_f_op_f32(select(global1.d, var_1.d, true)))));
    return u_input.d.x;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_5(func_2(), 1000f, Struct_4(global1.a), Struct_2(global1.a, i32(-1i) * -(-6662i & global1.b), vec2<f32>(-848f, -1281f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.c.x * 174f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(920f)) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_div_f32(global1.d, global1.c.x)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.c.x)))));
    let var_1 = Struct_1(~(~_wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, 0u, u_input.c.x, var_0.a)), vec4<u32>(var_0.a, var_0.a, u_input.c.x, var_0.a) ^ vec4<u32>(u_input.b.x, u_input.b.x, var_0.a, 34901u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(186f, global1.c.x, global1.c.x, global1.d)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-220f - global1.c.x), -1167f, -549f, _wgslsmith_f_op_f32(global1.d + 1737f)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-101f, -574f, var_0.b, 838f), vec4<f32>(-156f, var_0.b, -584f, -231f), vec4<bool>(var_0.c.a, global1.a, global1.a, global1.a))))))));
    var_0 = Struct_5(14037u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(661f - var_2.x) * var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(485f)) - -404f)))), var_0.c, Struct_2(global1.a, ~(-44516i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(var_2.x, var_0.b, false)), _wgslsmith_f_op_f32(ceil(var_2.x)))), _wgslsmith_f_op_f32(max(var_2.x, -1594f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.c.x)))));
    global0 = array<vec3<f32>, 16>();
    return Struct_2(~countOneBits(~u_input.a) >= (13666u >> (1u % 32u)), -reverseBits(i32(-1i) * -18336i), _wgslsmith_f_op_vec2_f32(step(global1.c, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_0.d.c, vec2<f32>(-1230f, global1.c.x)), var_2.yx, !(!global1.a))))), _wgslsmith_f_op_f32(global1.c.x * _wgslsmith_f_op_f32(ceil(var_0.e))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.b, 94585i, -1i, -3239i), vec4<i32>(54763i, -2147483647i, 2147483647i, -1i)), ~vec4<i32>(-2147483647i, 37590i, 1123i, u_input.e.x)), max(-1i, global1.b)), u_input.e.x));
}

