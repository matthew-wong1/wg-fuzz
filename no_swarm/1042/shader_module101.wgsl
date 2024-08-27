struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1000f, 224f), vec2<f32>(1478f, -3035f), vec2<f32>(834f, 213f), vec2<f32>(-463f, -1000f), vec2<f32>(1581f, -1000f), vec2<f32>(-1000f, 472f), vec2<f32>(-371f, 630f), vec2<f32>(-408f, -670f), vec2<f32>(1071f, -622f), vec2<f32>(149f, -1000f), vec2<f32>(-1000f, 535f), vec2<f32>(-1319f, -175f), vec2<f32>(-745f, 101f), vec2<f32>(960f, 395f), vec2<f32>(1595f, 603f), vec2<f32>(-2196f, -158f), vec2<f32>(-1314f, -1152f), vec2<f32>(-308f, 1145f), vec2<f32>(-698f, -1208f), vec2<f32>(-335f, -259f), vec2<f32>(1000f, -208f), vec2<f32>(1118f, 1000f), vec2<f32>(1961f, -156f), vec2<f32>(752f, -1012f), vec2<f32>(1305f, 1880f), vec2<f32>(-1189f, 441f), vec2<f32>(-1383f, -1000f), vec2<f32>(-662f, -669f), vec2<f32>(-1847f, -736f), vec2<f32>(1000f, 804f));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<vec2<f32>, 30>();
    global0 = array<vec2<f32>, 30>();
    let var_0 = arg_0;
    let var_1 = select(select(!select(!vec3<bool>(arg_0.a, var_0.a, var_0.a), vec3<bool>(true, true, true), 7602u > arg_0.b), select(vec3<bool>(all(vec2<bool>(var_0.a, var_0.a)), any(vec3<bool>(arg_0.a, false, false)), u_input.c.x >= 0u), vec3<bool>(true, true, 1u <= var_0.b), select(vec3<bool>(true, false, var_0.a), select(vec3<bool>(true, arg_0.a, false), vec3<bool>(var_0.a, arg_0.a, false), vec3<bool>(var_0.a, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, var_0.a, arg_0.a), var_0.a))), !select(vec3<bool>(true, true, true), vec3<bool>(var_0.a, arg_0.a, true), false)), vec3<bool>(true, var_0.a, true), !(!((var_0.a | false) || !arg_0.a)));
    global0 = array<vec2<f32>, 30>();
    return select(vec3<u32>(abs(_wgslsmith_mult_u32(0u, var_0.b)), var_0.b, u_input.c.x), ~select(select(vec3<u32>(35954u, 115566u, u_input.e), vec3<u32>(u_input.b, 4294967295u, 0u), vec3<bool>(arg_0.a, var_1.x, true)), ~vec3<u32>(arg_0.b, var_0.b, 4294967295u), all(vec3<bool>(true, false, arg_0.a))), all(!var_1.yy)) | countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(select(0u, 1u, true), _wgslsmith_mult_u32(var_0.b, 0u), abs(arg_0.b)), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.b, 1u, 4294967295u), vec3<u32>(4294967295u, arg_0.b, 52212u)) | ~vec3<u32>(0u, 0u, arg_0.b), firstLeadingBit(max(vec3<u32>(var_0.b, arg_0.b, 60616u), vec3<u32>(var_0.b, u_input.c.x, 0u)))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(69375u, u_input.b), u_input.c), u_input.d), 50934u, _wgslsmith_div_u32(~u_input.b, u_input.b << (u_input.d % 32u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 43530u, 11383u), func_3(Struct_1(true, 4802u)))), select(firstLeadingBit(~(~vec3<u32>(21935u, 12259u, u_input.e))), ~_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, 32018u, 40984u)), _wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, u_input.c.x), vec3<u32>(66424u, u_input.b, 4294967295u))), vec3<bool>(true, true, u_input.a == 0i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2144f, 178f, -175f, -179f), vec4<f32>(-1143f, -1277f, 144f, -1702f))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-585f, 944f, 1210f, 672f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(708f, -868f, 373f, 450f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-930f * 844f), var_1.x, -767f, _wgslsmith_f_op_f32(var_1.x - 333f))))));
    let var_3 = any(!(!vec3<bool>(true, u_input.d <= var_0.x, any(vec3<bool>(false, false, false)))));
    var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-986f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-733f * _wgslsmith_f_op_f32(min(var_2.x, var_2.x))) * var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-391f, 246f)))), _wgslsmith_f_op_f32(max(var_1.x, 470f))), var_2));
    return var_0.x;
}

fn func_1(arg_0: Struct_2) -> f32 {
    global0 = array<vec2<f32>, 30>();
    var var_0 = ~(~func_2());
    var var_1 = vec4<bool>(true, !arg_0.c.a, false, !all(select(vec3<bool>(arg_0.c.a, true, false), !vec3<bool>(arg_0.c.a, true, false), select(vec3<bool>(arg_0.c.a, arg_0.c.a, arg_0.c.a), vec3<bool>(arg_0.c.a, true, false), false))));
    var_1 = select(vec4<bool>(true, true, !any(!vec4<bool>(arg_0.c.a, false, var_1.x, arg_0.c.a)), arg_0.c.a), !select(vec4<bool>(all(var_1.yxz), false, !var_1.x, true), vec4<bool>(-29857i == u_input.a, select(true, false, arg_0.c.a), all(vec2<bool>(false, true)), true), vec4<bool>(var_1.x, arg_0.c.a, var_1.x, arg_0.c.a)), all(select(var_1.xz, select(vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, true)), any(select(vec3<bool>(arg_0.c.a, arg_0.c.a, arg_0.c.a), vec3<bool>(arg_0.c.a, arg_0.c.a, arg_0.c.a), vec3<bool>(var_1.x, var_1.x, true))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.a * -271f))) + _wgslsmith_f_op_f32(step(arg_0.a, -1311f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(200f + -271f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(320f, 1082f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(1457f, 603f)), _wgslsmith_f_op_f32(func_1(Struct_2(-1616f, vec2<u32>(1u, 13032u), Struct_1(false, u_input.b)))))), -2773f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(533f, -1346f, 229f)))))), abs(abs(abs(~vec4<i32>(0i, 2944i, u_input.a, u_input.a)))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-43831i, 2147483647i), vec2<i32>(u_input.a, 22905i)), vec2<i32>(u_input.a, 8356i) ^ vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-22834i, max(u_input.a, u_input.a))) & _wgslsmith_dot_vec2_i32(~select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), false), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, -286i), vec2<i32>(2147483647i, u_input.a) >> (u_input.c % vec2<u32>(32u)), vec2<i32>(2147483647i, 68435i) >> (u_input.c % vec2<u32>(32u)))));
}

