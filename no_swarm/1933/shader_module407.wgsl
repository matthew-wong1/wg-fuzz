struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(-1209f, ~(~vec3<i32>(_wgslsmith_mod_i32(u_input.e, u_input.c), firstLeadingBit(u_input.e), _wgslsmith_div_i32(u_input.c, u_input.d.x))));
    let var_1 = 18254u;
    let x = u_input.a;
    s_output = StorageBuffer(-1536f);
}

