struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<f32, 2>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: Struct_2) -> i32 {
    global0 = array<Struct_1, 6>();
    global1 = array<f32, 2>();
    var var_0 = 1543f;
    global0 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b.x * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 2u)])) + -121f)));
    return -1i & firstLeadingBit(u_input.a);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_1(-arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_1, arg_0.d))))) * vec2<f32>(_wgslsmith_f_op_f32(step(arg_0.d, 1807f)), _wgslsmith_f_op_f32(arg_2.x * 222f)))), _wgslsmith_mod_i32(abs(2147483647i) << (_wgslsmith_mult_u32(~u_input.b.x, ~21773u) % 32u), ~func_1(Struct_2(arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 + arg_0.d), -367f)));
    var_0 = arg_0;
    let var_1 = vec3<u32>(~u_input.d, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(35805u), u_input.d | u_input.c, 8092u), vec3<u32>(u_input.d, u_input.b.x, 60419u) | vec3<u32>(25037u, 4294967295u, u_input.c)) << (u_input.b.x % 32u), firstTrailingBit(_wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 120638u, 4294967295u, u_input.c), vec4<u32>(1u, 1u, 1u, 1u)))));
    var_0 = global0[_wgslsmith_index_u32(53755u, 6u)];
    let var_2 = Struct_2(arg_0);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(749f)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> StorageBuffer {
    global1 = array<f32, 2>();
    global0 = array<Struct_1, 6>();
    let var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d, 2u)]) - _wgslsmith_f_op_f32(func_3(Struct_1(vec4<i32>(arg_1.c, -5476i, -1i, arg_1.a.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(1380f, arg_0) - arg_1.b), -u_input.a, arg_1.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(134f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1409f, -816f, 764f, 525f) + vec4<f32>(arg_1.b.x, global1[_wgslsmith_index_u32(4294967295u, 2u)], 1159f, 131f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_0, 1000f, -1661f))), arg_1.a.wzz)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0))), -455f);
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(~0u, 6u)]);
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d, 677f, 240f, 985f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1555f, -1000f, 567f, global1[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec4<f32>(global1[_wgslsmith_index_u32(18569u, 2u)], var_0, var_2.a.b.x, 306f), vec4<bool>(true, false, false, true)))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0), arg_0, var_2.a.d, var_1.x))), vec4<i32>(1i, _wgslsmith_mult_i32(firstTrailingBit(7933i), abs(abs(-2147483647i))), arg_1.a.x, firstLeadingBit(var_2.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))))), Struct_1(vec4<i32>(1i, 5878i, select(u_input.a, u_input.a, false) | func_1(Struct_2(Struct_1(vec4<i32>(-1i, 65363i, 12170i, u_input.a), vec2<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 2u)], -680f), -1i, global1[_wgslsmith_index_u32(u_input.b.x, 2u)]))), func_1(Struct_2(Struct_1(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec2<f32>(global1[_wgslsmith_index_u32(109647u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)]), u_input.a, 649f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(8270u, 2u)]), 881f)), min(-1i, u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-926f * global1[_wgslsmith_index_u32(0u, 2u)]))));
}

