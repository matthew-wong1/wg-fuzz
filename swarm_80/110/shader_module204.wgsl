struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: bool,
}

struct Struct_5 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 0u, 127302u, 4294967295u);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    return ~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, ~81200u, _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), _wgslsmith_mod_vec3_u32(select(global0.zyx, countOneBits(vec3<u32>(global0.x, u_input.b.x, u_input.b.x)), true), global0.xxz));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>, arg_2: u32) -> vec2<i32> {
    let var_0 = ~firstLeadingBit(select(u_input.c.xyy, vec3<u32>(~arg_2, select(global0.x, 1u, true), ~arg_2), vec3<bool>(true, false, select(false, true, false))));
    return firstTrailingBit(-vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19649i, u_input.d, 0i, u_input.e), vec4<i32>(1i, 2147483647i, u_input.a, arg_1.x)), 0i), ~(-u_input.e)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = true;
    var_0 = false;
    global0 = _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u & _wgslsmith_mult_u32(72219u ^ arg_0.x, ~27808u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, 80321u), global0.wz), ~(~23187u << (~arg_0.x % 32u)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-355f, arg_1.a.x, -823f, -632f) - vec4<f32>(1266f, arg_1.c, 483f, arg_1.c)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -287f, -1630f, arg_1.a.x))))), u_input.c);
    var_0 = arg_1.d.x;
    global0 = arg_1.b | (arg_1.b >> (~abs(vec4<u32>(4294967295u, 40846u, global0.x, arg_0.x)) % vec4<u32>(32u)));
    return StorageBuffer(~(~(~vec2<i32>(0i, 2147483647i)) | func_3(Struct_5(-1000f, arg_1.c), select(vec2<i32>(u_input.a, 1i), vec2<i32>(-10211i, u_input.e), arg_1.d), abs(arg_1.b.x))), 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1483f);
    let x = u_input.a;
    s_output = func_1(~vec2<u32>(~u_input.b.x, _wgslsmith_div_u32(~u_input.c.x, ~26730u)), Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(134f - var_0)))), ~(~vec4<u32>(18392u, global0.x, 4294967295u, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -2156f)) - var_0), vec2<bool>(true, true)));
}

