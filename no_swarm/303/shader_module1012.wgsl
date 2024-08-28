struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12> = array<f32, 12>(558f, -585f, 747f, -299f, 397f, 178f, 434f, -897f, -816f, -802f, -589f, -768f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(-222f));
    return Struct_1(var_0.a.a);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    var var_0 = (vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, -46771i, arg_1, arg_1) & firstTrailingBit(vec4<i32>(arg_1, arg_1, -1i, 2147483647i)))) | vec4<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1, -21152i, arg_1) >> (vec3<u32>(4294967295u, 7218u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(arg_1 >> (3174u % 32u), ~21595i, arg_1)), 1i, 21011i, -15887i);
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(831f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0.a.a))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -518f)))));
    let var_3 = -121f;
    var var_4 = countOneBits(vec3<u32>(u_input.b, 1u, u_input.b));
    return Struct_2(func_2(true));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_2 {
    var var_0 = firstTrailingBit(arg_1.zz);
    global0 = array<f32, 12>();
    return func_3(Struct_2(func_2(true)), (var_0.x & var_0.x) >> (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~u_input.a.zwx, ~vec3<u32>(u_input.b, 7869u, 61273u)), _wgslsmith_dot_vec2_u32(u_input.a.yw, vec2<u32>(u_input.a.x, u_input.a.x)) & u_input.b) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 12>();
    global0 = array<f32, 12>();
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.b) | 4294967295u, 12u)]) - global0[_wgslsmith_index_u32(u_input.b, 12u)]), 251f);
    var var_1 = Struct_1(-2057f);
    var var_2 = abs(u_input.b);
    let var_3 = func_1(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_0.x + var_0.x)), -firstLeadingBit(vec3<i32>(~0i, 1i, -2996i)));
    let var_4 = 11014i;
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_div_vec3_i32(-vec3<i32>(var_4, 47014i, -1i), -vec3<i32>(-2359i, -1i, 27327i)), vec3<i32>(-5886i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_4, var_4, var_4, var_4), vec4<i32>(var_4, 0i, var_4, var_4)), min(30163i, var_4))), 1u, var_0.x);
}

