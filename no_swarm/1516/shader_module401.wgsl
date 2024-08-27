struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<Struct_1, 28>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -698f)), _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(sign(1041f)), true)), _wgslsmith_f_op_f32(f32(-1f) * -742f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-161f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, -141f, -841f))))), _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.a, u_input.a) >> (73519u % 32u), u_input.a), abs(firstLeadingBit(vec2<u32>(1u, 1u)))), vec3<i32>(-_wgslsmith_dot_vec4_i32(-vec4<i32>(5857i, 0i, 2147483647i, 8101i), vec4<i32>(11221i, 0i, -43339i, -6414i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(-15648i, -20923i, 2147483647i), vec3<i32>(~(-4647i), abs(-20090i), abs(-4815i))), _wgslsmith_mod_i32(countOneBits(1i), -2913i)), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(16577u, 4294967295u, 1u), ~vec3<u32>(81254u, 25078u, 0u) ^ (vec3<u32>(91078u, u_input.a, u_input.a) << (vec3<u32>(30840u, u_input.a, u_input.a) % vec3<u32>(32u)))));
}

