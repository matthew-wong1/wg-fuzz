struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: i32) -> i32 {
    return arg_0;
}

fn func_2(arg_0: vec4<i32>, arg_1: i32, arg_2: u32) -> bool {
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(max(_wgslsmith_dot_vec2_i32(-(~u_input.b.yx), select(~u_input.e, u_input.a, true)), u_input.c.x), 0i, -u_input.e.x, ~(~40875i));
    var_0 = vec4<i32>(_wgslsmith_mod_i32(u_input.e.x, -var_0.x), u_input.d, 14834i, func_1(var_0.x));
    var var_1 = !select(!vec4<bool>(-12250i < var_0.x, true, true, false), vec4<bool>(true, true, func_2(u_input.b, -14670i, ~38431u), any(vec3<bool>(true, false, true)) | true), true);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~0u) << (1u % 32u), _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, 98682u) >> (~4294967295u % 32u), 1u), 4294967295u));
}

