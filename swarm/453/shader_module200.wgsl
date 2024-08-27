struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<i32>,
    d: i32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec4<i32>) -> i32 {
    var var_0 = false;
    return u_input.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~vec3<i32>(func_1(u_input.d.yx, vec3<bool>(true, true, true), vec4<i32>(-24626i, u_input.d.x, 1i, u_input.e.x) >> (vec4<u32>(u_input.a, u_input.a, u_input.b, u_input.b) % vec4<u32>(32u))), _wgslsmith_add_i32(-1i, u_input.e.x) >> (_wgslsmith_mod_u32(4294967295u, u_input.a) % 32u), ~(~u_input.d.x)));
    var var_1 = u_input.d.yz;
    let var_2 = firstTrailingBit(~u_input.c);
    var var_3 = -u_input.e.x;
    var var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, 1f, 1f), -_wgslsmith_add_i32(var_1.x, ~var_0.a.x) << (((_wgslsmith_div_u32(0u, var_2.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 23043u, 29126u), vec3<u32>(u_input.a, u_input.c.x, 109115u))) | firstTrailingBit(u_input.b)) % 32u));
}

