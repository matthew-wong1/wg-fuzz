struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    global1 = global0[_wgslsmith_index_u32(u_input.c, 24u)];
    let var_0 = u_input.a.x | ~(-max(select(-1i, -1i, false), ~u_input.e));
    global0 = array<Struct_1, 24>();
    return Struct_1(global1.c, !global1.d, -399f, global1.d);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> StorageBuffer {
    global0 = array<Struct_1, 24>();
    return StorageBuffer(reverseBits(vec3<u32>(arg_2, arg_2, u_input.c ^ u_input.d.x) | vec3<u32>(u_input.d.x, arg_2, 43403u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c + 1611f))) - arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec3<bool>(!any(vec3<bool>(true, global1.d, true)), global1.b || !global1.b, false)) | global1.b;
    var var_1 = vec3<i32>(2909i, 6047i, ~_wgslsmith_dot_vec4_i32(select(~vec4<i32>(2147483647i, 0i, u_input.b, u_input.e), ~vec4<i32>(u_input.b, -30079i, u_input.e, u_input.a.x), var_0), vec4<i32>(~1i, 2147483647i, 0i, -1i << (0u % 32u))));
    global1 = global0[_wgslsmith_index_u32(31944u, 24u)];
    global1 = Struct_1(-318f, true, 1518f, false);
    global1 = Struct_1(global1.a, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a)))) + -2953f), select(true, var_0, true));
    var_1 = min(u_input.a.wzw, select(u_input.a.xxz | (u_input.a.yxz ^ u_input.a.zwy), abs(~firstLeadingBit(vec3<i32>(u_input.a.x, 0i, var_1.x))), !((48041i << (u_input.c % 32u)) < 2147483647i)));
    let x = u_input.a;
    s_output = func_2(func_1(), _wgslsmith_div_i32(-(~max(-3068i, u_input.e)), -49251i), 1u);
}

