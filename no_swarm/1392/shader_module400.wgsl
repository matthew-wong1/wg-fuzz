struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: bool,
    e: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec2<u32> = vec2<u32>(1u, 1u);

var<private> global2: array<f32, 20> = array<f32, 20>(1115f, -1015f, 376f, 731f, 823f, -1635f, 1540f, -401f, -236f, 636f, 730f, 1668f, 417f, -1000f, -1001f, 423f, 2504f, 1315f, 179f, -494f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)]), vec2<f32>(global2[_wgslsmith_index_u32(global1.x, 20u)], -254f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1757f, global2[_wgslsmith_index_u32(global1.x, 20u)])))))), global1.x, -3137i, true, !vec3<bool>(true, true, _wgslsmith_f_op_f32(step(1280f, global2[_wgslsmith_index_u32(0u, 20u)])) == global2[_wgslsmith_index_u32(arg_0, 20u)]));
    var var_1 = Struct_2(true);
    global0 = all(select(var_0.e, var_0.e, var_0.e));
    global2 = array<f32, 20>();
    let var_2 = vec4<bool>(true, true, var_0.d, true);
    return _wgslsmith_clamp_u32(75751u | (1u | ~global1.x), 50742u, 1u);
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1134f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)]) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1901u, 20u)] * 1072f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(26719u, 20u)])) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1667f, global2[_wgslsmith_index_u32(global1.x, 20u)]) - vec2<f32>(-470f, global2[_wgslsmith_index_u32(global1.x, 20u)]))))), _wgslsmith_clamp_u32(64195u << (1u % 32u), global1.x, 14869u), arg_0.x, true, vec3<bool>(global2[_wgslsmith_index_u32(func_2(firstLeadingBit(50437u), false, vec2<bool>(false, false)), 20u)] == _wgslsmith_f_op_f32(f32(-1f) * -663f), false, true));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(var_0.a, vec2<f32>(global2[_wgslsmith_index_u32(~4294967295u, 20u)], _wgslsmith_f_op_f32(-var_0.a.x)), true)))), 9844u, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -14308i, 1i, var_0.c), vec4<i32>(arg_0.x, u_input.b, 2147483647i, 1i)) << (u_input.a.x % 32u)), true, select(!(!vec3<bool>(var_0.e.x, false, false)), vec3<bool>(global1.x >= ~global1.x, true || !var_0.e.x, true), select(vec3<bool>(true, !var_0.d, var_0.d), !select(vec3<bool>(var_0.d, var_0.d, false), var_0.e, vec3<bool>(false, var_0.d, var_0.e.x)), !vec3<bool>(true, var_0.e.x, true))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a));
    var var_3 = vec4<bool>(true, !any(var_1.e.yy), false, var_0.e.x);
    let var_4 = 1719f;
    return Struct_2(true);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_3) -> u32 {
    var var_0 = -23309i;
    global2 = array<f32, 20>();
    var var_1 = _wgslsmith_div_i32(-firstLeadingBit(u_input.b), -1i);
    var_0 = u_input.b;
    global2 = array<f32, 20>();
    return ~arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    var_0 = 4294967295u;
    var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~u_input.a.x, ~61900u, u_input.a.x), _wgslsmith_sub_u32(~min(_wgslsmith_add_u32(global1.x, 29524u), global1.x), 40416u));
    var var_1 = -598f;
    var var_2 = func_1(_wgslsmith_div_vec3_i32(max(vec3<i32>(u_input.b, 1i, 1i), ~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.b, u_input.b), vec3<i32>(-2147483647i, u_input.b, u_input.b))), firstLeadingBit(-vec3<i32>(u_input.b, -2147483647i, u_input.b) | ~vec3<i32>(0i, 0i, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, ~_wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(global1.x, u_input.a.x, 0u), vec3<u32>(global1.x, u_input.a.x, global1.x)), firstTrailingBit(u_input.a)) & vec3<u32>(u_input.a.x >> (_wgslsmith_mult_u32(global1.x, u_input.a.x) % 32u), countOneBits(firstTrailingBit(u_input.a.x)), firstLeadingBit(4294967295u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-621f, global2[_wgslsmith_index_u32(func_3(Struct_1(vec2<f32>(-1000f, -1146f), 20388u, global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], vec4<f32>(883f, global2[_wgslsmith_index_u32(u_input.a.x, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -1512f)), u_input.b, vec3<i32>(u_input.b, 18165i, u_input.b), Struct_3(vec2<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 20u)], -1462f), 4294967295u, 2147483647i, var_2.a, vec3<bool>(var_2.a, var_2.a, var_2.a))), 20u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2120f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(27428u, 20u)]))), _wgslsmith_f_op_f32(f32(-1f) * -111f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 20u)], 216f, global2[_wgslsmith_index_u32(global1.x, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]) + vec4<f32>(global2[_wgslsmith_index_u32(40097u, 20u)], global2[_wgslsmith_index_u32(5293u, 20u)], global2[_wgslsmith_index_u32(102039u, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]))))), firstLeadingBit(1565i));
}

