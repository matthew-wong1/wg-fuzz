struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9> = array<vec2<bool>, 9>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<f32>) -> i32 {
    return _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32((vec3<i32>(18935i, -2147483647i, -1i) & vec3<i32>(u_input.b, 50132i, -2147483647i)) | select(vec3<i32>(u_input.b, u_input.b, -31245i), vec3<i32>(-25053i, 21073i, -47523i), vec3<bool>(true, arg_0.x, false)), vec3<i32>(-10537i, 2147483647i, firstTrailingBit(20589i))), max(abs(-17826i), 15720i)), _wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(u_input.b, -22364i), 38206i)), vec2<i32>(u_input.b, -_wgslsmith_mod_i32(0i, -594i))));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<f32>) -> i32 {
    let var_0 = Struct_2(1u, -28403i > ~_wgslsmith_add_i32(func_3(vec3<bool>(false, false, true), 2256f, vec2<f32>(1570f, arg_1.x)), u_input.b));
    let var_1 = Struct_3(select(select(select(select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, false)), select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(false, true, false)), vec3<bool>(false, var_0.b, var_0.b)), vec3<bool>(arg_1.x == 354f, false, !var_0.b), vec3<bool>(any(vec4<bool>(var_0.b, var_0.b, false, var_0.b)), true, var_0.b)), vec3<bool>(true, false, any(vec3<bool>(true, false, var_0.b))), var_0.b), u_input.a.xy, false);
    let var_2 = var_1.c;
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(841f, 1000f))))), arg_1.x) + arg_1);
    return u_input.b;
}

fn func_1() -> vec3<i32> {
    var var_0 = vec3<bool>(true, true, true);
    global0 = array<vec2<bool>, 9>();
    let var_1 = var_0.x;
    var_0 = !vec3<bool>(all(!select(vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, false, true))), var_0.x, reverseBits(i32(-1i) * -35593i) < _wgslsmith_div_i32(-u_input.b, u_input.b));
    let var_2 = -vec4<i32>(_wgslsmith_clamp_i32(-1i, func_2(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec2<f32>(536f, 466f)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 30473i), vec2<i32>(2147483647i, u_input.b))), -_wgslsmith_div_i32(u_input.b, 2147483647i), -2147483647i, func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 38789u, 21469u, u_input.a.x), vec4<u32>(u_input.a.x, 54500u, u_input.a.x, 4294967295u), vec4<u32>(62563u, u_input.a.x, 39355u, u_input.a.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(183f, -1000f), vec2<f32>(-293f, -2047f), global0[_wgslsmith_index_u32(2345u, 9u)])))) ^ ~_wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 0i, 2147483647i, u_input.b), vec4<i32>(1i, u_input.b, u_input.b, u_input.b)), vec4<i32>(2147483647i, u_input.b, u_input.b, u_input.b) | (vec4<i32>(-2147483647i, u_input.b, -53743i, u_input.b) ^ vec4<i32>(0i, 13452i, 2147483647i, 40848i)));
    return var_2.yxx;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec3<i32>) -> vec3<f32> {
    let var_0 = vec2<u32>(0u, _wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.a, 9871u, 4294967295u), vec3<u32>(4294967295u, 76156u, arg_0.a)), _wgslsmith_sub_vec3_u32(~u_input.a, _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(arg_2.a, u_input.a.x, u_input.a.x))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1937f, -803f, 1368f, -172f), vec4<f32>(1043f, -2478f, -1809f, 462f))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-624f, -1117f, -1069f, 1000f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(921f, -2446f, 150f, -1173f), vec4<f32>(-155f, 401f, -1428f, 1033f))))))));
    let var_2 = 3222u;
    var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-405f + _wgslsmith_f_op_f32(round(var_1.x))), -660f)), var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x + 502f), 746f) - -1120f), _wgslsmith_f_op_f32(-var_1.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-203f, var_1.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -812f) * -370f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1185f * var_1.x), var_1.x, var_2 != arg_2.a))), _wgslsmith_f_op_f32(-var_1.x))));
    global0 = array<vec2<bool>, 9>();
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-2512f + var_1.x)), var_1.x))) + vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(f32(-1f) * -1015f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1406f;
    let var_1 = u_input.a.x;
    var var_2 = vec4<f32>(1000f, 422f, _wgslsmith_f_op_f32(f32(-1f) * -1586f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -524f))), 1451f));
    let var_3 = -721f;
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(u_input.b, u_input.b ^ u_input.b, -1i), _wgslsmith_f_op_vec3_f32(func_4(Struct_2(~var_1 & 1u, -1360f != _wgslsmith_f_op_f32(var_2.x - var_2.x)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true)), Struct_2(var_1, true), func_1())), vec4<u32>(var_1, 1u, u_input.a.x, 11280u));
}

