struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 19>;

var<private> global1: vec3<f32>;

var<private> global2: u32;

var<private> global3: vec3<f32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_3.b;
    let var_1 = arg_3;
    var var_2 = arg_3;
    let var_3 = 0i;
    var var_4 = ~(~u_input.c.xz);
    return _wgslsmith_f_op_vec2_f32(-global3.yz);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32) -> vec3<bool> {
    return !select(!vec3<bool>(true, true, !arg_1), !vec3<bool>(true, all(vec3<bool>(arg_1, arg_1, arg_1)), false), false);
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = true | !all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, global1.x)))))), vec3<f32>(_wgslsmith_f_op_f32(step(global3.x, 256f)), -1000f, _wgslsmith_f_op_f32(select(-145f, -411f, any(vec4<bool>(true, false, true, false)) | false))), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(func_2(~u_input.a, Struct_1(vec2<f32>(-1435f, global3.x), arg_0.x, 1u, -128f, 26059u), _wgslsmith_f_op_f32(abs(-1393f)), Struct_2(global1.x, Struct_1(global3.yy, 0u, arg_0.x, global3.x, 43794u), Struct_1(global3.xy, 74175u, u_input.c.x, global1.x, u_input.c.x), vec3<bool>(false, false, false)))), 0u, arg_0.x, _wgslsmith_f_op_f32(trunc(595f)), ~countOneBits(u_input.c.x)), any(vec3<bool>(true, true, true)), 2147483647i)));
    var_0 = any(vec2<bool>(countOneBits(_wgslsmith_mod_u32(arg_0.x, arg_0.x)) < _wgslsmith_dot_vec3_u32(min(vec3<u32>(0u, 0u, 56540u), vec3<u32>(arg_0.x, u_input.c.x, arg_0.x)), vec3<u32>(4294967295u, 0u, 0u)), arg_0.x >= u_input.c.x));
    return Struct_3(_wgslsmith_sub_u32(abs(u_input.c.x), arg_0.x), 124f, Struct_2(-1657f, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(global1.x - 666f)), (u_input.c.x ^ arg_0.x) & (u_input.c.x & 11322u), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))), 26246u << (1u % 32u)), Struct_1(_wgslsmith_div_vec2_f32(global1.zx, _wgslsmith_f_op_vec2_f32(floor(global3.yy))), u_input.c.x, 43331u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1511f), -528f), 110162u), vec3<bool>(true, true, true)));
}

fn func_4(arg_0: Struct_3) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_i32(countOneBits(u_input.d.wx), u_input.d.yx);
    let var_1 = 29160i;
    return _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-31989i, -u_input.b), -(~(-(~0i))), _wgslsmith_sub_i32(-39771i, -1i) >> (arg_0.a % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, -1358f, 1800f) + vec3<f32>(2411f, 1627f, -1000f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(434f, global3.x, 1277f) - vec3<f32>(global1.x, 481f, 182f)), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-164f, _wgslsmith_f_op_f32(f32(-1f) * -1412f), _wgslsmith_f_op_f32(select(global1.x, -493f, false))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.x, 1345f, global1.x), vec3<f32>(global3.x, 842f, global3.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 820f, global3.x) - vec3<f32>(global1.x, global1.x, global3.x))))))));
    global1 = vec3<f32>(-914f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f)), global3.x))));
    global2 = ~(~(~_wgslsmith_mult_u32(~46230u, u_input.c.x << (60170u % 32u))));
    let var_0 = vec3<i32>(func_4(func_1(u_input.c.xz, -vec4<i32>(u_input.d.x, u_input.b, 2147483647i, u_input.d.x))), _wgslsmith_div_i32(~firstTrailingBit(33364i), i32(-1i) * -1i), u_input.d.x);
    var var_1 = Struct_1(vec2<f32>(1290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1797f)))), ~(u_input.c.x & u_input.c.x), 38093u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.x, -1000f)) * global3.x)), u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(u_input.d.x, -75599i, _wgslsmith_clamp_i32(min(2147483647i, _wgslsmith_sub_i32(-44671i, -12335i)), 1i, -2147483647i), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.a, 45911i, -33581i), global0[_wgslsmith_index_u32(4294967295u, 19u)])), 37444u);
}

