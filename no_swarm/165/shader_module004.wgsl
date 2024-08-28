struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> i32 {
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(390f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1084f), -123f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -1000f) + _wgslsmith_f_op_f32(round(-1015f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1211f)), -205f)), any(select(arg_2.d, arg_2.c.wz, true)))) - _wgslsmith_f_op_f32(1365f + _wgslsmith_div_f32(-556f, _wgslsmith_div_f32(-1226f, 1766f)))));
    global0 = array<vec3<bool>, 10>();
    var var_1 = 1u;
    return _wgslsmith_mod_i32(abs(i32(-1i) * -10123i), max(-1i, arg_2.b & _wgslsmith_dot_vec4_i32(arg_2.e, vec4<i32>(arg_3.d.x, -1i, u_input.b, 1i)))) << (~u_input.a.x % 32u);
}

fn func_2() -> Struct_2 {
    global0 = array<vec3<bool>, 10>();
    let var_0 = -1000f;
    let var_1 = _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c, ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.c, u_input.b), vec3<i32>(u_input.b, 2147483647i, -35184i)))), func_3(true, u_input.a.x, Struct_1(all(vec2<bool>(true, true)), _wgslsmith_mult_i32(u_input.b, -2147483647i) | min(u_input.c, u_input.b), vec4<bool>(true, all(vec4<bool>(false, true, true, false)), u_input.a.x < u_input.a.x, true), vec2<bool>(true, true), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.b) >> (vec4<u32>(u_input.a.x, 11721u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<i32>(-28961i, -10691i, u_input.c, 2147483647i))), Struct_2(Struct_1(1u < u_input.a.x, u_input.b, vec4<bool>(true, false, true, false), vec2<bool>(true, true), vec4<i32>(u_input.b, u_input.b, u_input.c, -47841i)), Struct_1(select(true, false, false), u_input.c, select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true)), vec2<bool>(true, true), ~vec4<i32>(0i, 2147483647i, u_input.c, u_input.c)), true, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, 30730i) & vec2<i32>(22335i, -28319i), ~vec2<i32>(u_input.b, -29523i), min(vec2<i32>(u_input.b, 41790i), vec2<i32>(u_input.c, -1i))), _wgslsmith_mult_u32(abs(u_input.a.x), u_input.a.x))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(2104f * _wgslsmith_f_op_f32(var_0 - 1f)), 1004f);
    global0 = array<vec3<bool>, 10>();
    return Struct_2(Struct_1(false, 0i, vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, var_1, var_1), vec3<i32>(var_1, u_input.c, 0i)) > var_1, true, false, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), any(select(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]))), vec4<i32>(firstLeadingBit(29498i >> (1u % 32u)), ~firstLeadingBit(var_1), func_3(true, u_input.a.x, Struct_1(false, 9845i, vec4<bool>(true, false, true, true), vec2<bool>(true, true), vec4<i32>(var_1, u_input.b, 46919i, var_1)), Struct_2(Struct_1(false, -29222i, vec4<bool>(false, false, true, true), vec2<bool>(true, false), vec4<i32>(0i, -11169i, 13024i, var_1)), Struct_1(false, var_1, vec4<bool>(false, false, false, true), vec2<bool>(false, false), vec4<i32>(1i, -23361i, var_1, var_1)), false, vec2<i32>(var_1, u_input.b), 0u)), 0i)), Struct_1(true, 2147483647i, vec4<bool>(any(vec4<bool>(true, true, true, true)), u_input.a.x > u_input.a.x, all(vec4<bool>(true, true, false, true)), !any(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), vec2<bool>(false, var_1 > 2147483647i)), ~((vec4<i32>(u_input.c, 81091i, var_1, u_input.b) | vec4<i32>(-2147483647i, var_1, var_1, var_1)) & select(vec4<i32>(u_input.b, var_1, u_input.c, u_input.c), vec4<i32>(-22289i, var_1, u_input.b, 2147483647i), vec4<bool>(false, false, false, false)))), true, ~reverseBits(vec2<i32>(max(-11827i, -2147483647i), -2147483647i)), _wgslsmith_mod_u32(~(~u_input.a.x), 65660u));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    global0 = array<vec3<bool>, 10>();
    global0 = array<vec3<bool>, 10>();
    var var_0 = arg_0.x;
    let var_1 = func_2();
    var var_2 = Struct_3(true, -16852i, func_2().a);
    return StorageBuffer(~_wgslsmith_clamp_vec4_i32(~arg_3.e, var_1.b.e, ~(-vec4<i32>(var_2.b, -63591i, 0i, 16834i))), _wgslsmith_f_op_f32(f32(-1f) * -508f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(~(-29279i & u_input.b), u_input.b);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(1416f, -2028f) - vec2<f32>(-1323f, -261f)), vec2<f32>(-654f, -1981f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(556f * 386f), -243f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2743f, -1147f)) - vec2<f32>(728f, 1000f)))));
    var var_2 = true | !(_wgslsmith_f_op_f32(f32(-1f) * -601f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)));
    var var_3 = 187f;
    let var_4 = global0[_wgslsmith_index_u32(u_input.a.x, 10u)];
    let x = u_input.a;
    s_output = func_1(vec3<i32>(-47513i, -2147483647i, var_0.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), -695f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1) * var_1)), true, Struct_1(var_4.x, -min(0i, ~var_0.x), select(!(!vec4<bool>(var_4.x, var_4.x, false, false)), select(vec4<bool>(true, var_4.x, var_4.x, var_4.x), !vec4<bool>(false, var_4.x, var_4.x, true), var_4.x), vec4<bool>(false, any(vec2<bool>(var_4.x, var_4.x)), true, all(vec4<bool>(var_4.x, true, true, false)))), vec2<bool>(false, true), -(~(-vec4<i32>(var_0.x, u_input.b, u_input.b, var_0.x)))));
}

