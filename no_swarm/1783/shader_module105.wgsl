struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 10>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<u32> {
    global0 = array<Struct_1, 10>();
    var var_0 = select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(select(true, false, true), true, true, true), vec4<bool>(true, true, false, 4294967295u <= u_input.c)), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, any(vec2<bool>(false, false))), false), !any(vec4<bool>(true, true, true, true)));
    return vec3<u32>(~(~(~u_input.d.x)), reverseBits(_wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.d.x, u_input.c), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20444u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.c, 1u, 12616u)), ~0u))), 63934u);
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    let var_0 = 772f;
    let var_1 = ~func_3();
    let var_2 = abs(vec3<i32>(countOneBits(_wgslsmith_add_i32(u_input.e, u_input.a)) ^ 25362i, ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(2475i, u_input.e, u_input.b, u_input.e), vec4<i32>(-54090i, 8392i, -53087i, 0i))), ~abs(_wgslsmith_sub_i32(-23709i, 1i))));
    var var_3 = global0[_wgslsmith_index_u32(var_1.x, 10u)];
    var_3 = Struct_1(var_0, var_3.b, -123f);
    return var_0;
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 10>();
    var var_0 = _wgslsmith_f_op_f32(func_2(vec4<bool>(false, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, 0i), u_input.a >> (u_input.c % 32u)) > ~18473i, 2661f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1108f, 113f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), false)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -818f) + -475f), (u_input.a | 1i) | 1i, 1857f);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.a, var_1.c)))))), ~abs(u_input.e), _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -822f))))));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1381f), 25315i, var_1.c);
    return global0[_wgslsmith_index_u32(u_input.c, 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 10>();
    global0 = array<Struct_1, 10>();
    var var_0 = func_1();
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * 1589f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d | u_input.d, ~u_input.d.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(774f, -273f, var_1.c, 532f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -1434f, var_0.c, var_0.a)), vec4<f32>(881f, var_1.a, var_0.c, var_0.c)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1163f, var_0.c, -996f, var_0.a), vec4<f32>(406f, -203f, -456f, var_0.a))))));
}

