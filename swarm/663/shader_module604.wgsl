struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15> = array<Struct_4, 15>(Struct_4(vec3<i32>(-4304i, 2147483647i, -9639i), 1067f), Struct_4(vec3<i32>(-28300i, 0i, 45579i), 465f), Struct_4(vec3<i32>(-181i, -1i, 0i), 1204f), Struct_4(vec3<i32>(-5127i, i32(-2147483648), 0i), 689f), Struct_4(vec3<i32>(-4026i, 0i, -14226i), -771f), Struct_4(vec3<i32>(10792i, 37503i, 2483i), 1462f), Struct_4(vec3<i32>(34521i, 5237i, -1i), -461f), Struct_4(vec3<i32>(34792i, 0i, 0i), -131f), Struct_4(vec3<i32>(-8541i, 36329i, 0i), -825f), Struct_4(vec3<i32>(33682i, i32(-2147483648), 41005i), -607f), Struct_4(vec3<i32>(1i, 22470i, 35877i), 1255f), Struct_4(vec3<i32>(0i, -1i, 2147483647i), -1273f), Struct_4(vec3<i32>(i32(-2147483648), -1i, 11013i), -458f), Struct_4(vec3<i32>(1i, i32(-2147483648), 1956i), 348f), Struct_4(vec3<i32>(-3329i, i32(-2147483648), 1i), -1080f));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> Struct_1 {
    global0 = array<Struct_4, 15>();
    return Struct_1(u_input.b);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_4, 15>();
    var var_0 = abs(~u_input.a);
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    var_0 = 4294967295u & (~3574u ^ ~u_input.a);
    return func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -481f), -1128f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(358f + 817f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(105f + -675f)))), abs(_wgslsmith_add_u32(14414u ^ u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(65505u, 61267u, u_input.c), vec3<u32>(u_input.a, u_input.a, 11295u)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    global0 = array<Struct_4, 15>();
    var var_0 = Struct_2(-685f, _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_2.b, -23091i, firstLeadingBit(~arg_0.a)), -firstLeadingBit(39441i)));
    var var_1 = Struct_3(any(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))) | (var_0.a >= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_0.a))))));
    return func_1(select(select(!(!vec3<bool>(var_1.a, false, false)), vec3<bool>(var_0.b == arg_0.a, false, var_1.a), true), !(!(!vec3<bool>(false, var_1.a, false))), !(!select(vec3<bool>(false, var_1.a, false), vec3<bool>(var_1.a, true, true), vec3<bool>(false, var_1.a, var_1.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.b, -2147483647i, 886i, u_input.b), ~vec4<i32>(-2147483647i, u_input.b, u_input.b, u_input.b)) | -vec4<i32>(-10333i, u_input.b, 2147483647i, -u_input.b));
    let var_1 = func_3(func_1(vec3<bool>(false, _wgslsmith_dot_vec4_i32(vec4<i32>(-45038i, 0i, u_input.b, u_input.b), var_0) == _wgslsmith_dot_vec4_i32(var_0, var_0), true)), reverseBits(0i), Struct_2(_wgslsmith_f_op_f32(select(1359f, 1479f, any(vec2<bool>(false, true)))), -(~1i)), Struct_1(var_0.x));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(select(961f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(125f))), _wgslsmith_f_op_f32(1042f - -641f))), true && (all(vec2<bool>(false, true)) || false))), -26981i);
    let x = u_input.a;
    s_output = StorageBuffer(54381u, _wgslsmith_div_vec3_u32(~(~(vec3<u32>(u_input.c, 4294967295u, u_input.a) & vec3<u32>(u_input.c, 37268u, 45700u))), vec3<u32>(72558u, u_input.c, ~firstLeadingBit(14422u))), max(u_input.c, ~_wgslsmith_add_u32(4294967295u, u_input.a) & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 1u), ~vec4<u32>(37580u, 13100u, u_input.a, u_input.a))));
}

