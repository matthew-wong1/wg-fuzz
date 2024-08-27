struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 5> = array<vec4<i32>, 5>(vec4<i32>(-36614i, 3739i, 1i, 2147483647i), vec4<i32>(54142i, -6004i, -61728i, -24634i), vec4<i32>(1i, -56112i, 1i, -15772i), vec4<i32>(2147483647i, -13280i, 14340i, -6055i), vec4<i32>(1i, 0i, 0i, 23877i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(858f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f)))));
    global0 = array<vec4<i32>, 5>();
    let var_1 = !arg_3;
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(~(~u_input.a)), 9036u), vec2<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b, 37943u, u_input.a >> (25723u % 32u), 48267u), firstLeadingBit(~vec4<u32>(40190u, 1u, arg_2.b, 18287u)))));
    let var_3 = arg_1.x;
    return -1040f;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    return 586f;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(arg_0.e.x, vec3<i32>(arg_0.c.x, arg_2.x, arg_0.d.x), arg_0, vec2<bool>(false, false)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * arg_0.e.x) + _wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)))));
    var var_1 = Struct_3(vec3<i32>(arg_2.x, ~(~(~0i)), _wgslsmith_sub_i32(arg_0.d.x, arg_0.d.x)), u_input.a, Struct_1(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), any(vec4<bool>(false, false, true, false))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), ~max(arg_1, 1u) ^ arg_0.b), Struct_2(arg_0.a, arg_0.b, vec3<i32>(_wgslsmith_div_i32(-arg_2.x, -1i), arg_0.d.x, arg_0.c.x), arg_0.c, arg_0.e));
    var var_2 = !var_1.c.a.x;
    let var_3 = arg_0;
    var var_4 = 0u;
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 5>();
    global0 = array<vec4<i32>, 5>();
    let var_0 = func_3(Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1245f, 232f, -272f, 155f))) + vec4<f32>(_wgslsmith_f_op_f32(func_1(923f, vec3<i32>(-17572i, 67043i, -1i), Struct_2(vec4<f32>(288f, -847f, -643f, 413f), 1u, vec3<i32>(-60934i, 0i, -1i), vec3<i32>(-2147483647i, -2147483647i, 20971i), vec4<f32>(-1000f, -597f, -1080f, 1462f)), vec2<bool>(true, true))), _wgslsmith_div_f32(-286f, 1549f), _wgslsmith_f_op_f32(floor(430f)), -765f)), 0u, (vec3<i32>(-1i) * -vec3<i32>(-1i, 0i, 2147483647i)) ^ _wgslsmith_sub_vec3_i32(select(vec3<i32>(0i, 1i, -1i), vec3<i32>(-2147483647i, 7834i, 51529i), true), select(vec3<i32>(-1i, -15771i, 20658i), vec3<i32>(0i, 0i, 2147483647i), vec3<bool>(false, true, true))), vec3<i32>(firstTrailingBit(1i), ~(-30059i), i32(-1i) * -55365i), vec4<f32>(_wgslsmith_f_op_f32(1f * -1026f), _wgslsmith_f_op_f32(-1444f + 1442f), _wgslsmith_f_op_f32(func_2(vec4<f32>(1743f, 670f, -342f, 520f), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, false, false, true), vec3<bool>(true, false, true), u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-887f, 460f, -218f) + vec3<f32>(-264f, 799f, 299f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -521f))))), 4294967295u, ~vec4<i32>(0i, 1i, -1i, -2147483647i) | ((global0[_wgslsmith_index_u32(u_input.a >> (0u % 32u), 5u)] & vec4<i32>(-2147483647i, -2147483647i, 2147483647i, -66289i)) | global0[_wgslsmith_index_u32(4294967295u, 5u)]));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, _wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)));
}

