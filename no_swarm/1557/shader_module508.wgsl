struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: Struct_1 = Struct_1(true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!(!any(vec2<bool>(true, true))));
    global1 = Struct_1(!global1.a);
    let var_1 = u_input.b;
    var var_2 = u_input.a;
    var var_3 = !(!global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1, u_input.b, 61344u, 25608u), vec4<u32>(u_input.b, var_1, u_input.b, var_1)) & (85840u << ((4294967295u | var_1) % 32u)), 4u)]);
    return Struct_1(any(select(select(select(vec4<bool>(global1.a, false, global0[_wgslsmith_index_u32(var_1, 4u)], var_0.a), vec4<bool>(true, false, var_0.a, global1.a), true), !vec4<bool>(var_0.a, global1.a, false, global1.a), false), vec4<bool>(global1.a, global1.a, any(vec4<bool>(global1.a, global1.a, var_0.a, global1.a)), select(true, false, global1.a)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1, firstTrailingBit(u_input.b)), 4u)])));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<i32>) -> i32 {
    global1 = Struct_1(global1.a);
    global1 = arg_1;
    var var_0 = false;
    let var_1 = -214f;
    var var_2 = arg_2;
    return u_input.a;
}

fn func_1(arg_0: i32) -> bool {
    global1 = Struct_1(false);
    let var_0 = 53100i;
    var var_1 = Struct_1((func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(405f, 909f)), func_2(), vec3<i32>(u_input.a, 19868i, -15416i)) >= select(-1i, var_0, arg_0 >= 26667i)) && global1.a);
    global1 = Struct_1(!(!(true & !global0[_wgslsmith_index_u32(4294967295u, 4u)])));
    global0 = array<bool, 4>();
    return !(!(!var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(u_input.a);
    let var_1 = Struct_1(func_1(min(u_input.a, 2147483647i)));
    var var_2 = ~(u_input.b ^ (u_input.b | countOneBits(12035u)));
    let var_3 = global1.a;
    var var_4 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 40097u), vec2<u32>(u_input.b, 1u)), vec2<u32>(78925u, ~u_input.b)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(u_input.b, 50774u, 40608u, 31148u), vec4<u32>(u_input.b, 10911u, u_input.b, u_input.b) >> (vec4<u32>(5835u, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(19167u, u_input.b, 1u, 51465u)) >> (vec4<u32>(29465u, 41074u, 39581u, u_input.b) % vec4<u32>(32u))), u_input.b, _wgslsmith_mod_u32(0u, abs(4294967295u)));
    var var_5 = firstTrailingBit(u_input.a ^ 1i);
    var_0 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-952f)))), ~reverseBits(~u_input.b), vec2<f32>(1f, 1f));
}

