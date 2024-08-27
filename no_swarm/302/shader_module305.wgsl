struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10>;

var<private> global1: Struct_2 = Struct_2(vec2<bool>(false, true));

var<private> global2: array<Struct_4, 13>;

var<private> global3: vec4<u32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    var var_0 = arg_0.x;
    return _wgslsmith_f_op_f32(1f - -285f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.b, u_input.b), vec3<i32>(-2147483647i, -25649i, -(u_input.b.x >> (global3.x % 32u)))), u_input.b);
    global2 = array<Struct_4, 13>();
    let var_1 = global3.yyx;
    global0 = array<Struct_4, 10>();
    global0 = array<Struct_4, 10>();
    var var_2 = Struct_4(true);
    let var_3 = global1.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(var_1.zx, vec2<u32>(17972u, _wgslsmith_add_u32(var_1.x, ~global3.x))), vec4<u32>(12377u, firstTrailingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(3075u, global3.x, 0u, u_input.c), vec4<u32>(var_1.x, u_input.c, 6924u, 0u))), global3.x, select(global3.x, _wgslsmith_sub_u32(~global3.x, _wgslsmith_mult_u32(25804u, 0u)), global1.a.x | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1056f * _wgslsmith_f_op_f32(step(-635f, _wgslsmith_f_op_f32(func_1(vec4<i32>(var_0.x, -2560i, u_input.b.x, -2147483647i), Struct_4(var_2.a), Struct_1(global1.a, vec4<i32>(var_0.x, -1i, -1i, var_0.x), vec4<u32>(u_input.c, global3.x, u_input.c, 1u), global3.zz), Struct_2(global1.a))))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1046f, _wgslsmith_f_op_f32(-1122f * 360f)))))));
}

