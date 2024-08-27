struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_4 {
    return Struct_4(any(vec3<bool>(true, true, true)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: vec4<u32>) -> i32 {
    var var_0 = abs(2147483647i);
    let var_1 = ~vec4<i32>(abs(1i), -_wgslsmith_div_i32(0i, 1i), ~16966i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.c.x, 14167i) & vec3<i32>(2147483647i, 1i, 0i), ~vec3<i32>(2147483647i, -32874i, u_input.c.x)));
    let var_2 = abs(-((-1i >> (~arg_2.x % 32u)) & var_1.x));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(670f, _wgslsmith_f_op_f32(-993f + -999f)) + _wgslsmith_f_op_f32(-553f + _wgslsmith_f_op_f32(357f + -323f)))), ~1u);
    let var_4 = Struct_2(arg_1.a, var_3, -391f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, 1560f, var_3.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(175f, var_3.a, var_3.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-112f, var_3.a, var_3.a))))));
    return ~u_input.c.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = arg_0;
    let var_1 = func_2();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.a))), 46344u);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -581f);
    var var_4 = _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.b, _wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(u_input.c.x, -2147483647i, -10038i, 31648i))), _wgslsmith_add_vec4_i32(~u_input.b, -vec4<i32>(u_input.b.x, -2147483647i, 0i, u_input.b.x))), vec4<i32>(~arg_1.x, 0i, 5552i, max(48252i, func_3(~vec2<u32>(4777u, 30993u), Struct_4(true), vec4<u32>(4294967295u, var_2.b, 33738u, 0u)))));
    return vec4<u32>(1u, firstTrailingBit(~var_0.b), 4294967295u, ~_wgslsmith_mod_u32(14284u, _wgslsmith_sub_u32(_wgslsmith_div_u32(6805u, 30327u), select(0u, var_2.b, var_1.a))));
}

fn func_4(arg_0: vec4<u32>) -> StorageBuffer {
    var var_0 = Struct_1(-156f, _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(~_wgslsmith_mod_u32(0u, 14231u), arg_0.x, 1829u >> (~u_input.a % 32u), firstLeadingBit(1u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(344f, 782f, var_0.a) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-325f, _wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_div_f32(1668f, -763f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-487f, 275f, -2787f))), !((i32(-1i) * -17937i) < ~u_input.c.x))));
    var var_2 = Struct_3(Struct_1(var_1.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_0.b, var_0.b), abs(vec3<u32>(21746u, 39824u, 1u))), 1u)), _wgslsmith_f_op_vec2_f32(floor(var_1.yz)), var_1, vec3<u32>(firstLeadingBit(0u), _wgslsmith_div_u32(firstLeadingBit(arg_0.x) & 1u, 0u), var_0.b));
    let var_3 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1984f)) - _wgslsmith_f_op_f32(step(-315f, _wgslsmith_f_op_f32(var_1.x + var_2.a.a)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1206f * _wgslsmith_f_op_f32(step(313f, var_2.c.x))))), var_1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-1088f - var_2.a.a), _wgslsmith_div_f32(-199f, 423f), _wgslsmith_f_op_f32(select(484f, -1000f, true)), -1000f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(572f, 629f, var_0.a, 1123f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, 1414f, var_0.a, 1428f)), vec4<bool>(true, true, true, true))))))));
    var var_4 = var_2.a;
    return StorageBuffer(_wgslsmith_add_vec3_i32(u_input.b.yzw, select(select(select(vec3<i32>(u_input.b.x, u_input.c.x, u_input.b.x), u_input.b.xwy, vec3<bool>(true, false, true)), ~vec3<i32>(-30821i, u_input.c.x, 0i), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), ~max(vec3<i32>(u_input.c.x, -8140i, u_input.b.x), u_input.b.yyx), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))))), u_input.c, 1918f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(firstTrailingBit(max(~vec4<u32>(u_input.a, u_input.d, 32880u, u_input.a) & func_1(Struct_1(-1301f, u_input.d), vec2<i32>(u_input.b.x, 1i)), ~(vec4<u32>(1u, 10542u, u_input.d, 25890u) >> (vec4<u32>(u_input.d, 1u, u_input.a, 1u) % vec4<u32>(32u))))));
}

