struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: bool,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: vec3<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - vec4<f32>(_wgslsmith_div_f32(-968f, -898f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -218f), -180f, any(vec3<bool>(true, false, true))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1241f, _wgslsmith_f_op_f32(min(-334f, -104f)))) + -413f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-222f + -411f) + _wgslsmith_f_op_f32(f32(-1f) * -1185f)) * _wgslsmith_f_op_f32(482f * _wgslsmith_f_op_f32(ceil(1000f))))));
    let var_1 = 772f;
    var var_2 = 22180i;
    let var_3 = Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(~(~30766u), 1u, 1u), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 63691u), abs(vec3<u32>(29502u, 12851u, u_input.a)))));
    var var_4 = var_3;
    return _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-var_0.x));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    return vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(965f)), _wgslsmith_f_op_f32(min(841f, -1217f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))) >= _wgslsmith_f_op_f32(f32(-1f) * -200f), select(true, all(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), any(vec3<bool>(false, true, true)))), true), any(!select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), true)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_4 {
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1745f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -435f)))), func_2(arg_0.x), arg_1, select(select(!arg_1, func_2(_wgslsmith_sub_i32(arg_0.x, 0i)), false), select(vec3<bool>(arg_1.x && arg_1.x, select(arg_1.x, arg_1.x, true), false), select(!arg_1, select(vec3<bool>(false, arg_1.x, false), arg_1, arg_1.x), true), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, arg_1.x, false, false), arg_1.x))), arg_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(294f, -1374f)))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: f32, arg_3: Struct_4) -> f32 {
    let var_0 = -(vec3<i32>(i32(-1i) * -2147483647i, firstTrailingBit(-2147483647i), -39337i) ^ (~vec3<i32>(31937i, 46610i, 55243i) ^ select(vec3<i32>(-2147483647i, -639i, -5693i), vec3<i32>(1i, 2147483647i, -2147483647i), vec3<bool>(arg_3.c.x, arg_1.b.x, arg_3.b.x)))) ^ ~(~(vec3<i32>(-1i) * -vec3<i32>(-30596i, -88927i, -5265i)));
    var var_1 = ~(~vec3<u32>(max(0u, u_input.b), min(~4294967295u, max(u_input.b, u_input.b)), 4294967295u));
    var var_2 = vec4<bool>(arg_1.c.x & false, -596f == _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(407f * arg_1.e.x))), !(!(!arg_1.c.x || any(vec2<bool>(true, false)))), !arg_1.b.x);
    let var_3 = Struct_1(u_input.a);
    var var_4 = Struct_2(abs(~select(abs(vec3<u32>(var_3.a, var_3.a, 43951u)), ~vec3<u32>(0u, 3516u, 101815u), arg_1.b.x)));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1301f + 1000f) + -1231f)))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(266f)) + _wgslsmith_f_op_f32(round(-1343f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(962f, 2075f)), -2153f))));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(961f * 1000f));
    let var_1 = -abs(-(~(-1i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-293f)))))) - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1613f, 1312f, -251f), vec3<f32>(-1540f, 273f, 674f)))))), func_1(_wgslsmith_add_vec3_i32(~vec3<i32>(4871i, var_1, 22884i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1, var_1, 0i), vec3<i32>(var_1, var_1, 46932i))), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(496f * -1449f), _wgslsmith_f_op_f32(func_3())) + -1000f), Struct_4(_wgslsmith_f_op_f32(trunc(1670f)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, func_1(vec3<i32>(11069i, var_1, var_1), vec3<bool>(true, false, true)).c.x, true), vec3<bool>(false, true, any(vec3<bool>(true, true, true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1277f, -760f), vec2<f32>(-830f, 2067f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_sub_u32(abs(u_input.b), 47993u), firstTrailingBit(15506u), 0u);
}

