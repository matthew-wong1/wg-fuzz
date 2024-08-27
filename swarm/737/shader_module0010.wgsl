struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2499i;

var<private> global1: array<i32, 3> = array<i32, 3>(i32(-2147483648), 0i, -20850i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(u_input.d.x, _wgslsmith_add_vec2_i32(countOneBits(~vec2<i32>(global1[_wgslsmith_index_u32(91846u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)]) >> ((u_input.a | u_input.a) % vec2<u32>(32u))), vec2<i32>(-(~global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), _wgslsmith_div_i32(-1i, global1[_wgslsmith_index_u32(20223u, 3u)]))));
    var var_1 = u_input.a;
    global0 = -19611i;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-414f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1021f - -1000f), 1f)), -1518f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(328f * 469f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1215f))));
    global1 = array<i32, 3>();
    return _wgslsmith_mod_u32(45216u, abs(select(var_1.x, _wgslsmith_dot_vec2_u32(u_input.c << (u_input.d.zw % vec2<u32>(32u)), vec2<u32>(var_1.x, 10205u)), all(vec3<bool>(true, true, true)))));
}

fn func_2() -> u32 {
    global1 = array<i32, 3>();
    let var_0 = ~(~vec3<u32>(func_3(), u_input.d.x | u_input.a.x, func_3())) | vec3<u32>(_wgslsmith_mult_u32(~30295u | _wgslsmith_mod_u32(u_input.a.x, 53807u), u_input.c.x), u_input.b >> (~_wgslsmith_div_u32(1u, 21638u) % 32u), ~(_wgslsmith_sub_u32(u_input.c.x, 4294967295u) & u_input.b));
    return var_0.x;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~7369u), 1u, _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d.x, u_input.b, 28358u), u_input.d.wzz), vec3<u32>(u_input.d.x, func_2(), u_input.b))) & u_input.b, 3u)];
    global1 = array<i32, 3>();
    var var_0 = 1144f;
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1649f, 940f, -742f, 1000f)));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -245f);
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.wy + _wgslsmith_f_op_vec2_f32(vec2<f32>(376f, -258f) * var_1.xw)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-971f, 630f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zx), _wgslsmith_div_vec2_f32(var_1.wy, _wgslsmith_f_op_vec2_f32(trunc(var_1.zw))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 3>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1254f - -314f) + _wgslsmith_f_op_f32(sign(-1295f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(984f)), -768f))));
}

