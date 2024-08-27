struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 29>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1660f)))), _wgslsmith_f_op_f32(ceil(1259f)), _wgslsmith_f_op_f32(-925f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(919f * -1735f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1805f, -655f, 193f, 1128f), vec4<f32>(-2015f, -198f, 1579f, 1000f), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 29u)], global0[_wgslsmith_index_u32(arg_1.x, 29u)], false, global0[_wgslsmith_index_u32(42514u, 29u)])))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-494f, -1678f, -1000f, -855f)), vec4<f32>(-697f, -1430f, -187f, -689f)))))));
    global0 = array<bool, 29>();
    return arg_1.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> Struct_1 {
    var var_0 = ~18904u;
    var_0 = func_3(true, vec4<u32>(firstLeadingBit(_wgslsmith_add_u32(select(u_input.a, arg_0.x, global0[_wgslsmith_index_u32(0u, 29u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 46287u, 0u, arg_0.x), vec4<u32>(0u, 4294967295u, arg_0.x, arg_0.x)))), arg_0.x, u_input.c, arg_0.x));
    var var_1 = !(global0[_wgslsmith_index_u32(firstLeadingBit(~reverseBits(21336u)), 29u)] && (true & (arg_0.x > func_3(true, vec4<u32>(24848u, 34056u, u_input.a, 9467u)))));
    var_0 = _wgslsmith_mod_u32(_wgslsmith_div_u32(abs(select(countOneBits(58217u), 83268u, true)), 1u), firstTrailingBit(~arg_0.x | _wgslsmith_mult_u32(u_input.a, _wgslsmith_div_u32(0u, 4294967295u))));
    let var_2 = reverseBits(~select(-vec4<i32>(-18468i, arg_1, 1i, u_input.b), -vec4<i32>(13771i, arg_1, u_input.b, arg_1), global0[_wgslsmith_index_u32(arg_0.x, 29u)])) << (vec4<u32>(_wgslsmith_dot_vec3_u32(select(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 0u, u_input.a), vec3<u32>(8110u, 0u, 4294967295u)), ~vec3<u32>(1u, arg_0.x, u_input.a), global0[_wgslsmith_index_u32(66966u, 29u)]), abs(abs(vec3<u32>(u_input.c, u_input.c, arg_0.x)))), 63351u, reverseBits(u_input.a), arg_0.x) % vec4<u32>(32u));
    return Struct_1(!vec2<bool>(!(true || global0[_wgslsmith_index_u32(0u, 29u)]), !all(vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 29u)], true, global0[_wgslsmith_index_u32(arg_0.x, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]))), 1915u);
}

fn func_1() -> Struct_1 {
    return func_2(~u_input.d, _wgslsmith_div_i32(u_input.b, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 29>();
    var var_0 = true;
    var var_1 = vec2<f32>(1007f, -1270f);
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-849f))), var_1.x));
    var var_3 = func_1();
    var var_4 = vec2<u32>(var_3.b, firstTrailingBit(u_input.d.x ^ func_1().b));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~countOneBits(max(-2147483647i, u_input.b))), firstLeadingBit((_wgslsmith_sub_vec4_u32(vec4<u32>(25240u, var_4.x, 0u, var_4.x), vec4<u32>(0u, var_3.b, var_4.x, 0u)) | ~vec4<u32>(1u, 37625u, 1u, var_4.x)) & ~firstTrailingBit(vec4<u32>(0u, var_3.b, var_4.x, var_3.b))), -20940i, select(abs(0u), ~func_1().b, var_3.a.x), vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), 1000f, _wgslsmith_f_op_f32(abs(1968f))));
}

