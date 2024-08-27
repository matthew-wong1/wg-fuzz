struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(1947f, 1668f, 202f, 1000f), vec4<f32>(-115f, 1000f, 784f, 1000f), vec4<f32>(343f, 924f, -639f, 406f), vec4<f32>(-831f, 411f, -1106f, 250f), vec4<f32>(867f, -1815f, 155f, -617f), vec4<f32>(-480f, -555f, -1000f, 134f), vec4<f32>(1000f, -742f, -684f, 259f), vec4<f32>(373f, 365f, 1000f, -359f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, arg_0.b)))));
    var var_1 = arg_1;
    global0 = array<vec2<i32>, 9>();
    let var_2 = _wgslsmith_f_op_f32(-253f + -387f);
    let var_3 = -668f;
    return (false | arg_2.b.x) | true;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: vec4<bool>, arg_3: Struct_2) -> bool {
    let var_0 = vec2<u32>(66800u & ~_wgslsmith_mult_u32(arg_1.b.x, 4294967295u), reverseBits(1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1666f), _wgslsmith_f_op_f32(-239f + 746f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d, arg_3.b) + vec2<f32>(arg_3.b, arg_3.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-582f, 1000f))) * vec2<f32>(_wgslsmith_f_op_f32(max(-436f, arg_3.b)), -625f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d, arg_1.d) * vec2<f32>(arg_3.b, arg_1.d)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.d, 193f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.b, -666f)))), true))));
    let var_2 = Struct_4(_wgslsmith_mult_i32(min(_wgslsmith_add_i32(arg_1.a, 2147483647i), arg_3.a), _wgslsmith_add_i32(~(-356i), arg_3.a)), !select(select(select(vec4<bool>(false, arg_1.c, arg_1.c, true), arg_2, arg_2), !vec4<bool>(false, arg_1.c, arg_1.c, false), true || arg_2.x), arg_2, select(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x), select(arg_2, vec4<bool>(arg_1.c, true, false, arg_1.c), arg_2), any(vec4<bool>(arg_1.c, true, true, true)))), arg_0.x, Struct_3(!((-1000f < arg_3.b) || arg_2.x), Struct_1(all(vec2<bool>(arg_1.c, arg_1.c)), arg_1.c, _wgslsmith_dot_vec3_u32(~u_input.c.zyy, select(vec3<u32>(arg_0.x, 1u, 0u), u_input.c.xxy, arg_1.c))), !arg_2.wz));
    global1 = array<vec4<f32>, 8>();
    var var_3 = _wgslsmith_f_op_vec4_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~arg_0.x << (_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(59148u, 1u, u_input.b, 23808u)) % 32u), 1731u, abs(arg_0.x)) & ~_wgslsmith_mod_u32(u_input.d | 28319u, _wgslsmith_div_u32(0u, 4294967295u)), 8u)]));
    return all(vec3<bool>(var_2.d.b.a, all(select(arg_2, !arg_2, !arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -544f) != _wgslsmith_f_op_f32(-var_1.x)));
}

fn func_2(arg_0: Struct_5) -> i32 {
    let var_0 = arg_0.d;
    global0 = array<vec2<i32>, 9>();
    let var_1 = false;
    global0 = array<vec2<i32>, 9>();
    var var_2 = vec3<bool>(arg_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) == -116f, func_4(vec3<u32>(~(~arg_0.b.x), countOneBits(~9315u), countOneBits(arg_0.b.x)), Struct_5(41638i, vec2<u32>(arg_0.b.x, _wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x)), !(arg_0.c & true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -562f), -762f))), vec4<bool>(func_3(Struct_2(arg_0.a, var_0), vec4<f32>(arg_0.d, -1001f, -166f, -367f), Struct_4(arg_0.a, vec4<bool>(var_1, var_1, arg_0.c, var_1), 0u, Struct_3(arg_0.c, Struct_1(var_1, true, 4294967295u), vec2<bool>(var_1, true)))), select(false, false, true), any(select(vec2<bool>(true, true), vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(var_1, arg_0.c))), _wgslsmith_mult_i32(6658i, arg_0.a) <= arg_0.a), Struct_2(_wgslsmith_mult_i32(-arg_0.a, ~arg_0.a), _wgslsmith_f_op_f32(-395f - 795f))));
    return _wgslsmith_mod_i32(abs(_wgslsmith_clamp_i32(firstLeadingBit(1i), arg_0.a << (arg_0.b.x % 32u), _wgslsmith_mult_i32(2147483647i, arg_0.a)) << (firstTrailingBit(0u) % 32u)), arg_0.a);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_5(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(abs(-72468i), _wgslsmith_sub_i32(i32(-1i) * -13009i, max(2147483647i, arg_3)), 55601i), _wgslsmith_dot_vec4_i32((vec4<i32>(-33472i, -26903i, arg_1, arg_3) | vec4<i32>(arg_1, 52545i, arg_1, arg_1)) ^ firstLeadingBit(vec4<i32>(arg_2, 1i, -2147483647i, arg_3)), abs(-vec4<i32>(arg_2, arg_2, arg_2, 7876i)))), vec2<u32>(countOneBits(3798u), 46012u), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1383f))))));
    var var_1 = all(!select(select(!vec4<bool>(true, var_0.c, var_0.c, false), !vec4<bool>(var_0.c, true, false, var_0.c), false), !select(vec4<bool>(false, var_0.c, true, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, false), vec4<bool>(true, var_0.c, false, true)), func_4(~u_input.c.yxy, var_0, !vec4<bool>(true, true, var_0.c, var_0.c), Struct_2(2147483647i, var_0.d))));
    global1 = array<vec4<f32>, 8>();
    let var_2 = abs(_wgslsmith_sub_u32(~14646u, arg_0));
    var_1 = all(vec2<bool>(true, true));
    return Struct_2(1i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.d)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(696f, 194f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.d, 1135f) - _wgslsmith_f_op_f32(abs(-955f)))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> bool {
    global0 = array<vec2<i32>, 9>();
    global1 = array<vec4<f32>, 8>();
    global1 = array<vec4<f32>, 8>();
    var var_0 = func_5(u_input.b, 0i, _wgslsmith_sub_i32(_wgslsmith_div_i32(-arg_1.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-25914i, arg_1.a, arg_1.a), vec3<i32>(arg_1.a, arg_1.a, arg_1.a)), ~vec3<i32>(6650i, arg_1.a, 0i))), 40568i), func_2(Struct_5(1i, vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.c.x), 3356u ^ u_input.b), any(vec4<bool>(false, true, arg_0.x, false)), _wgslsmith_f_op_f32(trunc(arg_1.b)))));
    var var_1 = select(vec2<bool>(~0u < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 90630u, u_input.b, u_input.d), max(vec4<u32>(1u, 1u, 0u, u_input.d), u_input.c)), true), !(!(!vec2<bool>(arg_0.x, arg_0.x))), arg_0.yx);
    return var_1.x;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_5, arg_2: bool) -> Struct_5 {
    var var_0 = arg_1.d;
    let var_1 = arg_1.a;
    global1 = array<vec4<f32>, 8>();
    var_0 = _wgslsmith_f_op_f32(arg_1.d - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2130f, arg_1.d))) * arg_1.d));
    global0 = array<vec2<i32>, 9>();
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(~_wgslsmith_div_u32(85961u & u_input.a.x, u_input.a.x), 1u >> (u_input.a.x % 32u));
    var var_1 = func_6(Struct_3(all(vec4<bool>(func_1(vec4<bool>(false, true, true, false), Struct_2(4757i, -670f)), true, 1u <= var_0.x, true)), Struct_1(true, any(vec4<bool>(false, false, false, false)), _wgslsmith_clamp_u32(var_0.x, firstLeadingBit(0u), ~0u)), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), true))), Struct_5(~firstLeadingBit(max(-14744i, 2147483647i)), u_input.a, true, 1f), !any(vec4<bool>(true, false, true, u_input.b > 1u)));
    global1 = array<vec4<f32>, 8>();
    let var_2 = u_input.b;
    let var_3 = false;
    var_1 = Struct_5((i32(-1i) * -(~17813i)) | (2147483647i >> ((1u & min(var_1.b.x, var_0.x)) % 32u)), vec2<u32>(var_0.x, ~_wgslsmith_mult_u32(~var_2, var_1.b.x)), !(!(!(0u != var_2))), _wgslsmith_f_op_f32(-var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~var_0.x << (_wgslsmith_mod_u32(var_2, u_input.b) % 32u), 161172u, 0u) | ~(~(~vec3<u32>(u_input.d, var_0.x, u_input.c.x))));
}

