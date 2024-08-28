struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> u32 {
    global0 = array<f32, 32>();
    var var_0 = true;
    let var_1 = arg_0;
    return _wgslsmith_dot_vec2_u32(max(reverseBits(abs(arg_2.a.ww) | vec2<u32>(0u, arg_3.x)), u_input.a.zx), vec2<u32>(u_input.a.x, 13648u | (_wgslsmith_dot_vec3_u32(arg_0.a.xxz, vec3<u32>(u_input.a.x, arg_1.a.x, var_1.a.x)) & ~var_1.a.x)));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~func_3(arg_1, Struct_1(vec4<u32>(70970u, ~arg_1.a.x, u_input.a.x, ~4294967295u)), Struct_1(arg_1.a & u_input.a), abs(arg_1.a));
    global0 = array<f32, 32>();
    var var_1 = arg_1;
    var_1 = Struct_1(vec4<u32>(4294967295u, 1u, u_input.b, u_input.a.x) | ~vec4<u32>(var_1.a.x & 22267u, _wgslsmith_mult_u32(1u, 0u), 0u, 1u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(633f, 1558f, 1194f) - vec3<f32>(global0[_wgslsmith_index_u32(41542u, 32u)], global0[_wgslsmith_index_u32(arg_1.a.x, 32u)], global0[_wgslsmith_index_u32(12648u, 32u)]))))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 32u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.a.x, 32u)] * -718f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.a.xw, vec2<u32>(var_1.a.x, 1u)), 32u)]) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(arg_1.a.x, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)]) + vec3<f32>(global0[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(12347u, 32u)])), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(1u, 32u)], -895f, global0[_wgslsmith_index_u32(var_1.a.x, 32u)])))))))));
    return Struct_1(select(~vec4<u32>(~arg_1.a.x, abs(0u), ~arg_1.a.x, arg_1.a.x & 35338u), max(vec4<u32>(arg_1.a.x, u_input.b, ~56406u, var_1.a.x), countOneBits(~vec4<u32>(arg_1.a.x, u_input.a.x, 0u, arg_1.a.x))), all(vec2<bool>(true, true))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    return func_2(~(-(~_wgslsmith_sub_vec4_i32(vec4<i32>(14726i, 28480i, 12163i, 0i), vec4<i32>(23785i, 1i, -29953i, 1i)))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(-1i);
    var var_1 = countOneBits(~52815u);
    var var_2 = func_1(Struct_1(vec4<u32>(min(countOneBits(u_input.b), 4294967295u), reverseBits(47469u), _wgslsmith_mult_u32(65033u, 1u), 51340u)));
    global0 = array<f32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

