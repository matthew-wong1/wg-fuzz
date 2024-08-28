struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: Struct_3,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -19795i;

var<private> global1: f32 = -1030f;

var<private> global2: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: bool) -> bool {
    return false;
}

fn func_3() -> f32 {
    var var_0 = ~_wgslsmith_add_i32(-1i, countOneBits(-7065i));
    var_0 = -_wgslsmith_dot_vec4_i32(vec4<i32>(27989i, u_input.a.x, -1i, 1i), _wgslsmith_div_vec4_i32(~(-u_input.a), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, u_input.a), -vec4<i32>(u_input.e, -6489i, -1i, u_input.a.x))));
    global1 = 1093f;
    global2 = -43081i;
    var_0 = ~_wgslsmith_add_i32(-2147483647i | u_input.a.x, 9474i);
    return _wgslsmith_f_op_f32(f32(-1f) * -332f);
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_5) -> f32 {
    var var_0 = u_input.d;
    var var_1 = _wgslsmith_mod_vec2_u32(arg_1, u_input.c);
    var var_2 = vec4<i32>(~countOneBits(-(~45677i)), 1i, 0i, 2147483647i);
    global2 = _wgslsmith_dot_vec3_i32(~var_2.xxw, firstLeadingBit(u_input.a.zyw));
    var var_3 = Struct_3(arg_2.b.a, ~countOneBits(~arg_2.b.b));
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1655f), _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1000f))))), 1491f <= arg_2.c.a));
}

fn func_2(arg_0: bool) -> vec3<u32> {
    let var_0 = abs(-(u_input.a.x << ((1u | ~u_input.b.x) % 32u)));
    global1 = _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-543f, -2108f))))), vec2<u32>(u_input.d.x, ~(u_input.b.x >> (4294967295u % 32u))) & ~u_input.d.wy, Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), ~u_input.d.xxz), Struct_3(-268f, u_input.b))));
    global2 = -_wgslsmith_div_i32(u_input.a.x, countOneBits(firstTrailingBit(-1i) & ~u_input.a.x));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(-553f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-145f, _wgslsmith_f_op_f32(min(1000f, -1017f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1092f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(1212f, _wgslsmith_f_op_f32(f32(-1f) * -874f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-154f + -957f)))))));
    let var_2 = 4294967295u;
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1351f, 1991f, false)))))));
    global2 = -2147483647i;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-513f - -1000f)))), func_2(func_1(-vec4<i32>(-2147483647i, -2147483647i, -15701i, 1i), vec2<bool>(true, true), Struct_3(-246f, vec3<u32>(4482u, u_input.b.x, u_input.d.x)), true & (u_input.d.x < 0u))));
    let var_2 = -46168i;
    let var_3 = _wgslsmith_f_op_f32(-var_1.a);
    global0 = var_2;
    var_0 = -1000f;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(426f))), var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(var_2 << (u_input.b.x % 32u), max(17041i, u_input.e), 54450i) >> (u_input.b % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(var_4 * _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_4, vec2<f32>(715f, -373f)), _wgslsmith_f_op_vec2_f32(-var_4))), u_input.a, ~((select(u_input.e, 5938i, false) | u_input.e) | u_input.e), firstLeadingBit(~u_input.d.wxz));
}

