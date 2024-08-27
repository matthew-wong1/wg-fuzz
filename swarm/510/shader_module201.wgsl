struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec2<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 2>();
    let var_0 = u_input.b;
    let var_1 = global1.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x >> (1u % 32u), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -849f))), ~_wgslsmith_div_vec4_i32(~firstTrailingBit(vec4<i32>(19847i, global1.c.a.x, -37762i, var_1.a.x)), vec4<i32>(-63660i, ~global1.c.a.x, ~var_1.a.x, ~3444i)));
}

