struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(0u, 0u, 39571u, 26405u), vec4<u32>(4294967295u, 11791u, 1u, 1u), vec4<u32>(99148u, 4294967295u, 4294967295u, 30501u), vec4<u32>(8530u, 48842u, 99700u, 27881u), vec4<u32>(20170u, 27710u, 0u, 58170u), vec4<u32>(0u, 1u, 1u, 41998u), vec4<u32>(33127u, 32824u, 15035u, 0u), vec4<u32>(53155u, 74842u, 46141u, 28500u), vec4<u32>(0u, 7137u, 34158u, 30869u), vec4<u32>(1u, 7677u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 13857u), vec4<u32>(4294967295u, 4189u, 0u, 1507u), vec4<u32>(4354u, 0u, 64425u, 0u), vec4<u32>(1u, 40156u, 8220u, 33986u), vec4<u32>(70154u, 26072u, 1u, 1u), vec4<u32>(4294967295u, 43907u, 3294u, 17566u), vec4<u32>(31155u, 15993u, 1u, 19342u), vec4<u32>(88934u, 43869u, 0u, 29784u), vec4<u32>(27530u, 23956u, 1u, 1u), vec4<u32>(17365u, 22761u, 0u, 1u), vec4<u32>(35303u, 0u, 1u, 0u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(28158u, 0u, 72582u, 11690u), vec4<u32>(13611u, 0u, 66511u, 1u), vec4<u32>(26605u, 80026u, 0u, 16223u));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: u32) -> vec4<i32> {
    let var_0 = arg_1.a.d;
    var var_1 = arg_1.a;
    var var_2 = _wgslsmith_mod_i32(-2147483647i, var_1.a);
    return reverseBits(-(~(~u_input.c)));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: vec4<i32>, arg_3: vec2<u32>) -> vec2<f32> {
    global0 = array<vec4<u32>, 25>();
    let var_0 = select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(all(vec4<bool>(false, false, true, true)), true), vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(true, true, false, false)), false), !vec2<bool>(all(vec4<bool>(true, false, true, true)), false)), 49210i < _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 2147483647i, 1i), vec4<i32>(1i, arg_2.x, 0i, -2147483647i)), u_input.c.x), arg_2.x));
    var var_1 = countOneBits(abs(84584u));
    let var_2 = vec4<i32>(-42108i, u_input.c.x, _wgslsmith_mod_i32(-1i, -14815i), 1i);
    let var_3 = _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, ~(_wgslsmith_div_u32(u_input.a, 22501u) | ~37990u)), _wgslsmith_mult_u32(arg_0.x, _wgslsmith_clamp_u32(~min(61463u, u_input.a), ~max(arg_3.x, 13761u), _wgslsmith_sub_u32(50685u, 44197u) | _wgslsmith_mod_u32(u_input.b, arg_0.x))));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(346f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1000f, arg_1)))), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: u32) -> Struct_4 {
    global0 = array<vec4<u32>, 25>();
    var var_0 = arg_1;
    let var_1 = _wgslsmith_add_u32(u_input.a, 40979u);
    global0 = array<vec4<u32>, 25>();
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(var_0.zz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2146f - _wgslsmith_f_op_f32(ceil(1148f)))), func_2(all(arg_0), Struct_3(Struct_1(26920i, false, vec4<u32>(52231u, 2688u, var_0.x, 0u), -841f, 1u)), 43532u <= var_1, arg_2), ~var_0.yy)));
    return Struct_4(min(arg_1, arg_1), ~(~u_input.c), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1468f, 1027f, 1000f, var_2.x))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<bool>(true, true), ~_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(37157u, u_input.a, u_input.a)), vec3<u32>(~u_input.b, ~0u, u_input.a)), u_input.a << (~1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-346f * 1802f) * var_0.c.x))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.x) * _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -1069f))), _wgslsmith_div_f32(-316f, var_0.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(1414f)), var_0.c.x, _wgslsmith_f_op_f32(2095f - var_0.c.x)), var_0.c.yxz)), select(reverseBits(_wgslsmith_clamp_vec4_i32(-var_0.b, ~vec4<i32>(u_input.c.x, 0i, -2147483647i, var_0.b.x), var_0.b | vec4<i32>(var_0.b.x, u_input.c.x, 28480i, -3251i))), ~countOneBits(vec4<i32>(-11361i, 2147483647i, 5927i, u_input.c.x)), vec4<bool>(false, true, any(vec2<bool>(false, true)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true)))), select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), abs(vec2<i32>(var_0.b.x, 35016i))) ^ -reverseBits(var_0.b.wy), select(-vec2<i32>(u_input.c.x, 8663i), min(vec2<i32>(1i, -87381i), u_input.c.zy), true), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
}

