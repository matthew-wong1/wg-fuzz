struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9> = array<f32, 9>(-266f, 1384f, 573f, 483f, 948f, -592f, 1273f, -968f, 2654f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> i32 {
    var var_0 = 233f;
    let var_1 = ~reverseBits(firstTrailingBit(abs(u_input.a))) << (u_input.a % vec2<u32>(32u));
    var_0 = 675f;
    global0 = array<f32, 9>();
    global0 = array<f32, 9>();
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~1092u, -vec2<i32>(countOneBits(1i), -func_1(u_input.a.x, Struct_1(1i, u_input.a.x, 363f, vec2<bool>(false, true)))), global0[_wgslsmith_index_u32(51731u, 9u)]);
}

