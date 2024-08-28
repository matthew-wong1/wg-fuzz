struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: bool;

var<private> global1: array<bool, 16> = array<bool, 16>(false, true, true, false, false, true, false, false, true, true, false, true, true, true, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global0 = true;
    global0 = true;
    global0 = global1[_wgslsmith_index_u32(~u_input.a.x ^ firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, ~_wgslsmith_div_u32(u_input.a.x, u_input.a.x))), 16u)];
    let var_0 = -(~vec2<i32>(1i, 1i));
    var var_1 = -10340i;
    global1 = array<bool, 16>();
    var var_2 = -1000f;
    let x = u_input.a;
    s_output = StorageBuffer(447f);
}

