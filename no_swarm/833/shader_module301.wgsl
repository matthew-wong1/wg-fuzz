struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: i32;

var<private> global2: array<Struct_2, 28>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    var var_0 = vec3<bool>(arg_2, !(!arg_2), true);
    global1 = 1i;
    global1 = -firstTrailingBit(u_input.b.x);
    var_0 = vec3<bool>(_wgslsmith_f_op_f32(-arg_0) <= arg_0, arg_2, all(!select(vec3<bool>(arg_1.x, arg_3.x, true), arg_1, true)));
    global2 = array<Struct_2, 28>();
    return ~(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, u_input.c.x, 4294967295u)), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_div_vec2_i32(vec2<i32>(-(u_input.a.x ^ 0i), u_input.b.x), u_input.e));
    let var_1 = all(vec4<bool>(all(vec3<bool>(true, true, true)), _wgslsmith_mult_u32(~0u, reverseBits(u_input.c.x)) >= ~countOneBits(u_input.c.x), true, any(vec4<bool>(true, true, true, true)) | false));
    global2 = array<Struct_2, 28>();
    let var_2 = Struct_1(_wgslsmith_add_u32(0u, func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<bool>(true, 26760i < u_input.d.x, any(vec4<bool>(true, var_1, var_1, var_1))), any(global0[_wgslsmith_index_u32(u_input.c.x, 4u)]), !vec2<bool>(var_1, var_1))));
    global0 = array<vec2<bool>, 4>();
    return Struct_1(_wgslsmith_sub_u32(~abs(0u), 0u) >> (firstTrailingBit(min(37666u, u_input.c.x)) % 32u));
}

fn func_1() -> StorageBuffer {
    global0 = array<vec2<bool>, 4>();
    var var_0 = u_input.d.x;
    var var_1 = true;
    var var_2 = func_2();
    var var_3 = u_input.c;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -967f), _wgslsmith_f_op_f32(select(-1000f, -682f, false)), _wgslsmith_f_op_f32(abs(264f)), _wgslsmith_f_op_f32(step(114f, -721f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1656f + -307f) * _wgslsmith_f_op_f32(min(423f, 633f))), -1080f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1149f, -1988f)) - _wgslsmith_f_op_f32(abs(943f))), _wgslsmith_f_op_f32(1f - -165f)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d.x ^ u_input.b.x;
    global2 = array<Struct_2, 28>();
    let x = u_input.a;
    s_output = func_1();
}

