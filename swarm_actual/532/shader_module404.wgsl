struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = -754f;
    let var_2 = false;
    var var_3 = u_input.a << (41582u % 32u);
    var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(abs(-vec3<i32>(u_input.a, u_input.a, u_input.a))), -vec4<i32>(_wgslsmith_sub_i32(0i, -1i), 2147483647i, _wgslsmith_sub_i32(u_input.a & u_input.a, 0i), _wgslsmith_div_i32(~13998i, u_input.a >> (var_0 % 32u))));
}

